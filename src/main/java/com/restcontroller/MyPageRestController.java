package com.restcontroller;

import com.aws.file.FileUploadUtility;
import com.aws.model.CDNUploadPath;
import com.model.ControllerEnum;
import com.model.UnRegister;
import com.model.User;
import com.model.common.MFile;
import com.model.service.Employee;
import com.model.service.Report;
import com.model.service.Supplier;
import com.model.service.alarm.AlarmType;
import com.model.service.alarm.EmployeeAlarm;
import com.model.service.alarm.SupplierAlarm;
import com.model.service.point.receipt.PointReceipt;
import com.model.service.point.receipt.RECEIPT_TYPE;
import com.model.service.point.request.PointRequest;
import com.model.service.point.request.REQUEST_STATUS;
import com.model.service.work.APPLY_STATUS;
import com.model.service.work.Work;
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
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

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
    private final WorkService workService;
    private final FileUploadUtility fileUploadUtility;
    private final UserService userService;
    private final PointReceiptService pointReceiptService;
    private final PointRequestService pointRequestService;

    @RequestMapping(value = "/get/alarms/{alarm_type}", method = GET)
    public ResponseEntity getAlarms(HttpServletRequest request, @PathVariable ControllerEnum user_type, @PathVariable AlarmType alarm_type) {
        Message message = new Message();
        Integer user_no = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.NO.name());
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
    public ResponseEntity updateWorkLike(HttpServletRequest request, @PathVariable ControllerEnum user_type, @PathVariable String work_hash) throws Exception {
        Message message = new Message();
        Integer user_no = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.NO.name());
        Employee employee = employeeService.getEmployeeByUserNo(user_no);
        int work_no = Integer.parseInt(encryptionService.decryptAESWithSlash(work_hash));

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
    public ResponseEntity createReport(HttpServletRequest request, @PathVariable ControllerEnum user_type, @PathVariable String work_hash, @RequestBody Report report) throws Exception {
        Message message = new Message();
        Integer user_no = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.NO.name());
        Employee employee = employeeService.getEmployeeByUserNo(user_no);
        int work_no = Integer.parseInt(encryptionService.decryptAESWithSlash("hash"));
        report.setEmployee_no(employee.getNo());
        report.setWork_no(work_no);
        message.put("is_report", reportService.insertReport(report));
        message.put("status", true);
        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message, true), HttpStatus.OK);
    }

    @RequestMapping(value = "/get/works/{work_type}", method = GET)
    public ResponseEntity getWorks(HttpServletRequest request,
                                   @PathVariable ControllerEnum user_type, @PathVariable APPLY_STATUS work_type) throws Exception {
        Message message = new Message();
        Integer user_no = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.NO.name());
        Employee employee = employeeService.getEmployeeByUserNo(user_no);
        ArrayList<Work> works = workService.getWorks(employee.getNo(), work_type);
        message.put("works", works);
        message.put("status", true);
        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message, true), HttpStatus.OK);
    }

    @RequestMapping(value = "/get/like/works", method = GET)
    public ResponseEntity getLikeWorks(HttpServletRequest request, @PathVariable ControllerEnum user_type) throws Exception {
        Message message = new Message();
        Integer user_no = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.NO.name());
        Employee employee = employeeService.getEmployeeByUserNo(user_no);
        ArrayList<Work> works = workLikeService.getEmployeeLikedWorks(employee.getNo());
        message.put("works", works);
        message.put("status", true);
        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message, true), HttpStatus.OK);
    }

    @RequestMapping(value = "/profile/upload", method = POST)
    public ResponseEntity profileUpload(HttpServletRequest request, @PathVariable String user_type, @RequestBody MultipartFile file) {
        String user_id = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.ID.name());
        Message message = new Message();
        if (file.getSize() != 0) {
            log.info("file -> {},{},{}", file.getOriginalFilename(), file.getName(), file.getSize());
            MFile mFile = fileUploadUtility.uploadFile(file, CDNUploadPath.USER_PROFILE.getPath());
            User user = userService.loginUser(user_id);
            user.setProfile_img(mFile);
            userService.updateUserProfileImage(user);
            message.put("profile", mFile);
            message.put("status", true);
        } else {
            message.put("status", false);
        }
        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message, true), HttpStatus.OK);
    }

    @RequestMapping(value = "/license/upload/{type}", method = POST)
    public ResponseEntity licenseUpload(HttpServletRequest request, @PathVariable String user_type, @PathVariable String type, @RequestBody MultipartFile file) {
        String user_id = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.ID.name());
        Message message = new Message();
        User user = userService.loginUser(user_id);
        Employee employee = employeeService.getEmployeeByUserNo(user.getNo());
        MFile mFile = null;
        if (file.getSize() != 0) {
            log.info("file -> {},{},{}", file.getOriginalFilename(), file.getName(), file.getSize());
            mFile = fileUploadUtility.uploadFile(file, CDNUploadPath.USER_LICENSE.getPath());
            if (type.equals("transfer")) {
                employee.setTransport_license(mFile);
                employeeService.updateEmployee(employee);
            } else {
                employee.setDriver_license(mFile);
                employeeService.updateEmployee(employee);
            }
            message.put("license", mFile);
            message.put("status", true);
        } else {
            message.put("status", false);
        }
        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message, true), HttpStatus.OK);
    }

    @RequestMapping(value = "/license/temp/upload/{type}", method = POST)
    public ResponseEntity licenseTempUpload(HttpServletRequest request, @PathVariable String user_type, @PathVariable String type, @RequestBody MultipartFile file) {
        String user_id = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.ID.name());
        Message message = new Message();
        User user = userService.loginUser(user_id);
        MFile mFile = null;
        if (file.getSize() != 0) {
            log.info("file -> {},{},{}", file.getOriginalFilename(), file.getName(), file.getSize());
            mFile = fileUploadUtility.uploadFile(file, CDNUploadPath.USER_LICENSE.getPath());
            message.put("license", mFile);
            message.put("status", true);
        } else {
            message.put("status", false);
        }
        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message, true), HttpStatus.OK);
    }

    @RequestMapping(value = "/update/default", method = POST)
    public ResponseEntity profileDefaultChange(HttpServletRequest request, @PathVariable ControllerEnum user_type, @RequestBody User user) {
        log.info("user -> {}", user);
        String user_id = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.ID.name());
        User update = userService.loginUser(user_id);
        user.setName(user.getName());
        user.setPhone(user.getPhone());
        user.setEmail(user.getEmail());
        userService.updateUserProfileDefault(update);
        Message message = new Message();
        message.put("status", true);
        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message, true), HttpStatus.OK);
    }

    @RequestMapping(value = "/update/car", method = POST)
    public ResponseEntity profileCarCodeChange(HttpServletRequest request, @PathVariable ControllerEnum user_type, @RequestBody Employee employee) {
        int user_no = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.NO.name());
        Employee update = employeeService.getEmployeeByUserNo(user_no);
        update.setCar_code(employee.getCar_code());
        employeeService.updateEmployee(update);
        Message message = new Message();
        message.put("status", true);
        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message, true), HttpStatus.OK);
    }

    @RequestMapping(value = "/unregister", method = POST)
    public ResponseEntity unregister(HttpServletRequest request, @PathVariable ControllerEnum user_type, @RequestBody UnRegister unRegister) {
        int user_no = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.NO.name());
        String user_id = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.ID.name());
        unRegister.setUser_no(user_no);
        unRegister.setUser_id(user_id);
        userService.insertUnRegister(unRegister);
        new AuthRestController().logout(request);
        Message message = new Message();
        message.put("status", true);
        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message, true), HttpStatus.OK);
    }

    @RequestMapping(value = "/update/alarm/{type}", method = POST)
    public ResponseEntity updateAlarm(HttpServletRequest request, @PathVariable ControllerEnum user_type, @PathVariable String type) {
        int user_no = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.NO.name());
        Employee employee = employeeService.getEmployeeByUserNo(user_no);
        log.info("type -> {}", type);
        switch (type) {
            case "new":
                employee.setNew_work_alarm(!employee.isNew_work_alarm());
                employeeService.updateEmployee(employee);
                break;
            case "emergency":
                employee.setEmergency_work_alarm(!employee.isEmergency_work_alarm());
                employeeService.updateEmployee(employee);
                break;
            case "report":
                employee.setReport_alarm(!employee.isReport_alarm());
                employeeService.updateEmployee(employee);
                break;
            case "marketing":
                employee.setMarketing_alarm(!employee.isMarketing_alarm());
                employeeService.updateEmployeeMarketingAgree(employee);
                break;
        }
        Message message = new Message();
        message.put("status", true);
        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message, true), HttpStatus.OK);
    }

    @RequestMapping(value = "/get/points/{type}", method = GET)
    public ResponseEntity getPoints(HttpServletRequest request, @PathVariable ControllerEnum user_type, @PathVariable String type) throws Exception {
        Message message = new Message();
        int user_no = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.NO.name());
        Employee employee = employeeService.getEmployeeByUserNo(user_no);
        log.info("type -> {}", type);
        ArrayList<PointReceipt> pointReceipts = new ArrayList<>();
        ArrayList<PointRequest> pointRequests = new ArrayList<>();
        ArrayList<PointRequest> filteredRequests = new ArrayList<>();
        switch (type) {
            case "pay":
                pointReceipts = pointReceiptService.getEmployeePointReceipt(employee.getNo(), RECEIPT_TYPE.USE);
                message.put("points", pointReceipts);
                break;
            case "repayment":
                pointReceipts = pointReceiptService.getEmployeePointReceipt(employee.getNo(), RECEIPT_TYPE.CANCEL);
                message.put("points", pointReceipts);
                break;
            case "charge":
                pointRequests = pointRequestService.getPointRequestsByEmployeeNo(employee.getNo());
                for (PointRequest dump : pointRequests) {
                    if (dump.getStatus() == REQUEST_STATUS.CHARGE || dump.getStatus() == REQUEST_STATUS.CHARGING) {
                        filteredRequests.add(dump);
                    }
                }
                message.put("points", filteredRequests);
                break;
            case "refund":
                pointRequests = pointRequestService.getPointRequestsByEmployeeNo(employee.getNo());
                for (PointRequest dump : pointRequests) {
                    if (dump.getStatus() == REQUEST_STATUS.REFUND) {
                        filteredRequests.add(dump);
                    }
                }
                message.put("points", filteredRequests);
                break;
        }
        message.put("status", true);
        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message, false), HttpStatus.OK);
    }

    @RequestMapping(value = "/charge/point", method = POST)
    public ResponseEntity chargePoint(HttpServletRequest request, @PathVariable ControllerEnum user_type, HashMap<String, Object> map) throws Exception {
        Message message = new Message();
        int user_no = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.NO.name());
        int point = Integer.parseInt(map.get("point").toString());
        Employee employee = employeeService.getEmployeeByUserNo(user_no);
        PointRequest pointRequest = new PointRequest();
        pointRequest.setEmployee_no(employee.getNo());
        pointRequest.setStatus(REQUEST_STATUS.CHARGING);
        pointRequest.setPoint(point);
        log.info("pointRequest -> {}", pointRequest);
        pointRequestService.insertPointRequest(pointRequest);
        message.put("status", true);
        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message, false), HttpStatus.OK);
    }

    @RequestMapping(value = "/employee/register", method = POST)
    public ResponseEntity employeeRegister(HttpServletRequest request, @PathVariable ControllerEnum user_type, @RequestBody Employee employee) throws Exception {
        Message message = new Message();
        int user_no = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.NO.name());
        log.info("user_no -> {}, employee -> {}", user_no, employee);
        employee.setUser_no(user_no);
        Employee dump = employeeService.getEmployeeByUserNo(user_no);
        if (dump == null) {
            employeeService.registerEmployee(employee);
            message.put("status", true);
        } else {
            message.put("status", false);
            message.put("message", "이미 등록되어있습니다. 홈으로 이동합니다.");
        }
        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message, false), HttpStatus.OK);
    }

    @RequestMapping(value = "/supplier/register", method = POST)
    public ResponseEntity supplierRegister(HttpServletRequest request, @PathVariable ControllerEnum user_type, @RequestBody Supplier supplier) throws Exception {
        Message message = new Message();
        int user_no = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.NO.name());
        String user_id = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.ID.name());
        log.info("user_no -> {},user_id -> {}, employee -> {}", user_no, user_id, supplier);
        supplier.setUser_no(user_no);
        Supplier dump = supplierService.getSupplierByUserNo(user_no);
        if (dump == null) {
            supplierService.registerSupplier(supplier);
            User user = userService.loginUser(user_id);
            user.setName(supplier.getUser().getName());
            user.setPhone(supplier.getUser().getPhone());
            userService.updateUserProfileDefault(user);
            message.put("status", true);
        } else {
            message.put("status", false);
            message.put("message", "이미 등록되어있습니다. 홈으로 이동합니다.");
        }
        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message, false), HttpStatus.OK);
    }
}