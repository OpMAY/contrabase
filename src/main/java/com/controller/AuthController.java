package com.controller;

import com.api.LoginAPI;
import com.model.User;
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
    private final EncryptionService encryptionService;

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
        ModelAndView VIEW = new ModelAndView("user/login");
        User user = loginAPI.apiLoginInit(request);
        /** TODO
         * 1. User ID Check 후 없으면 회원가입 후 session에 유저 정보 넣고 로그인
         * 2. User ID check 후 있으면 Session에 유저 정보 넣고 로그인
         * */
        /*if (userService.getUserById(user.getId()) == null) {
            userService.createUser(user);
        } else {
            user = userService.getUserById(user.getId());
        }*/
        request.getSession().setAttribute(JWTEnum.JWTToken.name(), encryptionService.encryptJWT(user));
        Integer user_no = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.NO.name());
        return VIEW;
    }
}
