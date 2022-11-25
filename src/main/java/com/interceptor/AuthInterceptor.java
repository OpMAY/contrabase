package com.interceptor;

import com.model.User;
import com.model.grant.GRANT_TYPE;
import com.util.Encryption.EncryptionService;
import com.util.Encryption.JWTEnum;
import com.util.TokenGenerator;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Slf4j
@RequiredArgsConstructor
@Component
public class AuthInterceptor extends HandlerInterceptorAdapter {
    @PostConstruct
    public void AuthInterceptor() {
        log.debug("Auth Interceptor Post Initialize");
    }

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        log.debug("Auth Interceptor preHandle");

        User user = new User();
        user.setNo(1);
        user.setGrant(GRANT_TYPE.USER);
        user.setAccess_token("access_token");
        user.setEmail("zlzldntlr@naver.com");
        user.setName("김우식");

        request.getSession().setAttribute(JWTEnum.JWTToken.name(), new EncryptionService().encryptJWT(user));
        return super.preHandle(request, response, handler);
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        log.debug("Auth Interceptor postHandle");
        super.postHandle(request, response, handler, modelAndView);
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        log.debug("Auth Interceptor afterCompletion");
        super.afterCompletion(request, response, handler, ex);
    }

    @Override
    public void afterConcurrentHandlingStarted(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        log.debug("Auth Interceptor afterConcurrentHandlingStarted");
        super.afterConcurrentHandlingStarted(request, response, handler);
    }
}
