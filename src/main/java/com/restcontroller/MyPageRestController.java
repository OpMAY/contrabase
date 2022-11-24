package com.restcontroller;

import com.model.ControllerEnum;
import com.model.service.Employee;
import com.model.service.Supplier;
import com.model.service.alarm.AlarmType;
import com.model.service.alarm.EmployeeAlarm;
import com.model.service.alarm.SupplierAlarm;
import com.response.DefaultRes;
import com.response.Message;
import com.service.AlarmService;
import com.service.EmployeeService;
import com.service.SupplierService;
import com.util.Encryption.EncryptionService;
import com.util.Encryption.JWTEnum;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Objects;

@Slf4j
@RestController
@RequiredArgsConstructor
@RequestMapping("/{user_type}/mypage")
public class MyPageRestController {
    private final EncryptionService encryptionService;
    private final AlarmService alarmService;
    private final SupplierService supplierService;
    private final EmployeeService employeeService;

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
}
