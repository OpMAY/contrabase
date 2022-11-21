package com.restcontroller;

import com.api.LoginAPI;
import com.api.mail.MailBuilder;
import com.api.mail.MailFooter;
import com.api.mail.MailLogo;
import com.api.mail.MailType;
import com.model.User;
import com.model.queue.ServerTokenType;
import com.model.queue.Token;
import com.response.DefaultRes;
import com.response.Message;
import com.service.ServerTokenService;
import com.util.Encryption.JWTEnum;
import com.util.TokenGenerator;
import com.validator.test.Test;
import com.validator.test.TestValidator;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;

@Slf4j
@RestController
@RequiredArgsConstructor
@RequestMapping("/auth")
public class AuthRestController {
    @Value("${NAVER.CLIENT_ID}")
    private String naver_key;
    @Value("${KAKAO.JAVASCRIPT}")
    private String kakao_key;

    @RequestMapping(value = "/get/key", method = RequestMethod.GET)
    public ResponseEntity getAuthKakaoKey(@RequestParam("type") String type) {
        Message message = new Message();
        message.put("status", true);
        if (type.equals("kakao")) {
            message.put("key", kakao_key);
        } else if (type.equals("naver")) {
            message.put("key", naver_key);
        } else {
            message.put("status", false);
        }
        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message, true), HttpStatus.OK);
    }

    @RequestMapping(value = "/login/check", method = RequestMethod.POST)
    public ResponseEntity<String> loginCheck(HttpServletRequest request) {
        log.info("loginCheck");
        return new ResponseEntity(DefaultRes.res(HttpStatus.OK), HttpStatus.OK);
    }

    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    public ResponseEntity<String> logout(HttpServletRequest request) {
        log.info("logout");
        if (request.getSession().getAttribute(JWTEnum.JWTToken.name()) != null) {
            request.getSession().removeAttribute(JWTEnum.JWTToken.name());
        }
        return new ResponseEntity(DefaultRes.res(HttpStatus.OK), HttpStatus.OK);
    }
}
