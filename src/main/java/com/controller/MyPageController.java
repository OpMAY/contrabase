package com.controller;

import com.model.Admin;
import com.model.ControllerEnum;
import com.model.User;
import com.model.service.Employee;
import com.service.AdminService;
import com.service.EmployeeService;
import com.service.UserService;
import com.util.Encryption.EncryptionService;
import com.util.Encryption.JWTEnum;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Objects;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping(value = "/{user_type}/mypage")
public class MyPageController {
    private final EncryptionService encryptionService;
    private final EmployeeService employeeService;
    private final UserService userService;
    private final AdminService adminService;
    private ModelAndView VIEW;

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public ModelAndView myPageHome(HttpServletRequest request, @PathVariable ControllerEnum user_type) {
        Integer user_no = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.NO.name());
        String user_id = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.ID.name());
        if (user_type == ControllerEnum.USER) {
            VIEW = new ModelAndView("user/mypage");
            Employee employee = employeeService.getEmployeeByUserNo(user_no);
            User user = userService.loginUser(user_id);
            employee.setUser(user);
            VIEW.addObject("employee", employee);
        } else {
            VIEW = new ModelAndView("user/mypage");
        }
        return VIEW;
    }

    @RequestMapping(value = "/likes", method = RequestMethod.GET)
    public ModelAndView myPageLikes(HttpServletRequest request, @PathVariable ControllerEnum user_type) {
        VIEW = new ModelAndView("user/likes");
        return VIEW;
    }

    @RequestMapping(value = "/alarm/alarms", method = RequestMethod.GET)
    public ModelAndView myPageAlarms(HttpServletRequest request, @PathVariable ControllerEnum user_type) {
        if (user_type == ControllerEnum.USER) {
            VIEW = new ModelAndView("user/alarm");
        } else {
            VIEW = new ModelAndView("user/alarm");
        }
        return VIEW;
    }

    @RequestMapping(value = "/alarm/setting", method = RequestMethod.GET)
    public ModelAndView myPageAlarmSetting(HttpServletRequest request, @PathVariable ControllerEnum user_type) {
        Integer user_no = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.NO.name());
        String user_id = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.ID.name());
        if (user_type == ControllerEnum.USER) {
            VIEW = new ModelAndView("user/mypage-alarm-setting");
            Employee employee = employeeService.getEmployeeByUserNo(user_no);
            User user = userService.loginUser(user_id);
            employee.setUser(user);
            VIEW.addObject("employee", employee);
        } else {
            VIEW = new ModelAndView("user/mypage-alarm-setting");
        }
        return VIEW;
    }

    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public ModelAndView myPageProfile(HttpServletRequest request, @PathVariable ControllerEnum user_type) {
        Integer user_no = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.NO.name());
        String user_id = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.ID.name());
        if (user_type == ControllerEnum.USER) {
            VIEW = new ModelAndView("user/mypage-profile");
            Employee employee = employeeService.getEmployeeByUserNo(user_no);
            User user = userService.loginUser(user_id);
            employee.setUser(user);
            VIEW.addObject("employee", employee);
        } else {
            VIEW = new ModelAndView("user/mypage-profile");
        }
        return VIEW;
    }

    @RequestMapping(value = "/profile/edit", method = RequestMethod.GET)
    public ModelAndView myPageProfileEdit(HttpServletRequest request, @PathVariable ControllerEnum user_type) {
        Integer user_no = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.NO.name());
        String user_id = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.ID.name());
        if (user_type == ControllerEnum.USER) {
            VIEW = new ModelAndView("user/mypage-profile-edit");
            Employee employee = employeeService.getEmployeeByUserNo(user_no);
            User user = userService.loginUser(user_id);
            employee.setUser(user);
            VIEW.addObject("employee", employee);
        } else {
            VIEW = new ModelAndView("user/mypage-profile-edit");
        }
        return VIEW;
    }

    @RequestMapping(value = "/car/edit", method = RequestMethod.GET)
    public ModelAndView myPageCarNumberEdit(HttpServletRequest request, @PathVariable ControllerEnum user_type) {
        Integer user_no = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.NO.name());
        String user_id = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.ID.name());
        if (user_type == ControllerEnum.USER) {
            VIEW = new ModelAndView("user/mypage-car-number");
            Employee employee = employeeService.getEmployeeByUserNo(user_no);
            User user = userService.loginUser(user_id);
            employee.setUser(user);
            VIEW.addObject("employee", employee);
        } else {
            VIEW = new ModelAndView("user/mypage-car-number");
        }
        return VIEW;
    }

    @RequestMapping(value = "/unregister", method = RequestMethod.GET)
    public ModelAndView getMyPageUnRegister(HttpServletRequest request, @PathVariable ControllerEnum user_type) {
        if (user_type == ControllerEnum.USER) {
            VIEW = new ModelAndView("user/mypage-unregister");
        } else {
            VIEW = new ModelAndView("user/mypage-unregister");
        }
        return VIEW;
    }

    @RequestMapping(value = "/point/points", method = RequestMethod.GET)
    public ModelAndView myPagePoints(HttpServletRequest request, @PathVariable ControllerEnum user_type) {
        VIEW = new ModelAndView("user/mypage-point-manage");
        return VIEW;
    }

    @RequestMapping(value = "/point/charge", method = RequestMethod.GET)
    public ModelAndView myPagePointCharge(HttpServletRequest request, @PathVariable ControllerEnum user_type) {
        Integer user_no = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.NO.name());
        String user_id = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.ID.name());
        if (user_type == ControllerEnum.USER) {
            VIEW = new ModelAndView("user/mypage-point-charge");
            Employee employee = employeeService.getEmployeeByUserNo(user_no);
            User user = userService.loginUser(user_id);
            employee.setUser(user);
            Admin admin = adminService.getAdmin(1);
            VIEW.addObject("admin", admin);
            VIEW.addObject("employee", employee);
        } else {
            VIEW = new ModelAndView("user/mypage-point-charge");
        }
        return VIEW;
    }
}