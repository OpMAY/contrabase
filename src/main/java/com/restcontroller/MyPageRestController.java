package com.restcontroller;

import com.model.ControllerEnum;
import com.model.service.Employee;
import com.model.service.Report;
import com.model.service.Supplier;
import com.model.service.alarm.AlarmType;
import com.model.service.alarm.EmployeeAlarm;
import com.model.service.alarm.SupplierAlarm;
import com.model.service.work.WorkLike;
import com.response.DefaultRes;
import com.response.Message;
import com.service.*;
import com.util.Encryption.EncryptionService;
import com.util.Encryption.JWTEnum;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

@Slf4j
@RestController
@RequiredArgsConstructor
@RequestMapping("/{user_type}/mypage")
public class MyPageRestController {
    private final EncryptionService encryptionService;
    private final WorkLikeService workLikeService;
    private final AlarmService alarmService;
    private final SupplierService supplierService;
    private final EmployeeService employeeService;
    private final ReportService reportService;

    @RequestMapping(value = "/get/alarms/{alarm_type}", method = RequestMethod.GET)
    public ResponseEntity getAlarms(HttpServletRequest request, @PathVariable ControllerEnum user_type, @PathVariable AlarmType alarm_type) {
        Message message = new Message();
        Integer user_no = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.NO.name());
        user_no = 1;
        if (user_type == ControllerEnum.USER) {
            log.info("USER");
            Employee employee = employeeService.getEmployeeByUserNo(user_no);
            ArrayList<EmployeeAlarm> alarms = alarmService.getAllAlarmsByType(user_type, employee.getNo(), alarm_type);
            message.put("alarms", alarms);
        } else {
            log.info("SUPPLIER");
            Supplier supplier = supplierService.getSupplierByUserNo(user_no);
            ArrayList<SupplierAlarm> alarms = alarmService.getAllAlarmsByType(user_type, supplier.getNo(), alarm_type);
            message.put("alarms", alarms);
        }
        message.put("status", true);
        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message, true), HttpStatus.OK);
    }

    @RequestMapping(value = "/update/work/like/{work_hash}", method = RequestMethod.POST)
    public ResponseEntity updateWorkLike(HttpServletRequest request, @PathVariable ControllerEnum user_type, @PathVariable String work_hash) {
        Message message = new Message();
        Integer user_no = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.NO.name());
        user_no = 1;
        Employee employee = employeeService.getEmployeeByUserNo(user_no);

        //int work_no = Integer.parseInt(encryptionService.decryptAESWithSlash("hash"));
        int work_no = 1;

        WorkLike workLike = new WorkLike();
        workLike.setWork_no(work_no);
        workLike.setEmployee_no(employee.getNo());
        if (workLikeService.checkEmployeeWorkLiked(work_no, employee.getNo())) {
            //Dislike
            workLikeService.deleteWorkLike(workLike);
            message.put("is_like", false);
        } else {
            //Like
            workLikeService.insertWorkLike(workLike);
            message.put("is_like", true);
        }
        message.put("status", true);
        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message, true), HttpStatus.OK);
    }

    @RequestMapping(value = "/create/report/work/{work_hash}", method = RequestMethod.POST)
    public ResponseEntity createReport(HttpServletRequest request, @PathVariable ControllerEnum user_type, @PathVariable String work_hash, @RequestBody Report report) {
        Message message = new Message();
        Integer user_no = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.NO.name());
        user_no = 1;
        Employee employee = employeeService.getEmployeeByUserNo(user_no);
        //int work_no = Integer.parseInt(encryptionService.decryptAESWithSlash("hash"));
        int work_no = 1;
        report.setEmployee_no(employee.getNo());
        report.setWork_no(work_no);
        message.put("is_report", reportService.insertReport(report));
        message.put("status", true);
        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message, true), HttpStatus.OK);
    }
}