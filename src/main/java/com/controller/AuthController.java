package com.controller;

import com.api.LoginAPI;
import com.model.User;
import com.model.UserType;
import com.model.grant.GRANT_TYPE;
import com.model.service.Employee;
import com.model.service.Supplier;
import com.service.EmployeeService;
import com.service.SupplierService;
import com.service.UserService;
import com.util.Encryption.EncryptionService;
import com.util.Encryption.JWTEnum;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping(value = "/auth")
public class AuthController {
    private ModelAndView VIEW;
    private final LoginAPI loginAPI;
    private final UserService userService;
    private final EncryptionService encryptionService;
    private final EmployeeService employeeService;
    private final SupplierService supplierService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(HttpServletRequest request, HttpServletResponse response) throws IOException {
        VIEW = new ModelAndView("auth/login");
        if (request.getSession().getAttribute(JWTEnum.JWTToken.name()) != null) {
            response.sendRedirect("/");
        }
        return VIEW;
    }

    @RequestMapping(value = "/oauth/callback", method = RequestMethod.GET)
    public ModelAndView snsLoginCallBack(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView VIEW = new ModelAndView("auth/login");
        User user = loginAPI.apiLoginInit(request);
        user.setGrant(GRANT_TYPE.USER);
        /**
         * 1. User ID Check 후 없으면 회원가입 후 session에 유저 정보 넣고 로그인
         * 2. User ID check 후 있으면 Session에 유저 정보 넣고 로그인
         * */
        User dump = userService.loginUser(user.getId());
        if (dump == null) {
            userService.registerUser(user);
        }
        request.getSession().setAttribute(JWTEnum.JWTToken.name(), encryptionService.encryptJWT(user));
        log.info("JWTToken -> {}", encryptionService.decryptJWT((String) request.getSession().getAttribute(JWTEnum.JWTToken.name())));
        Integer user_no = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.NO.name());
        Employee employee = employeeService.getEmployeeByUserNo(user_no);
        Supplier supplier = supplierService.getSupplierByUserNo(user_no);
        if (employee == null && supplier == null) {
            VIEW.addObject("is_register", Boolean.FALSE);
        } else {
            VIEW.addObject("is_register", Boolean.TRUE);
            UserType userType = userService.getUserType(user_no);
            VIEW.addObject("user_type", userType);
        }
        VIEW.addObject("status", Boolean.TRUE);
        return VIEW;
    }
}
