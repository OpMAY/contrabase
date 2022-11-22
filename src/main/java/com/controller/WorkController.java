package com.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping(value = "/{user_type}/work")
public class WorkController {
    @Value("${KAKAO.JAVASCRIPT}")
    private String KAKAO_JAVASCRIPT;

    private ModelAndView VIEW;

    @RequestMapping(value = "/detail/{hash}", method = RequestMethod.GET)
    public ModelAndView workDetail(HttpServletRequest request, @PathVariable String hash, @PathVariable String user_type) {
        if (user_type.equals("user")) {
            VIEW = new ModelAndView("user/detail");
        } else {
            VIEW = new ModelAndView("supplier/detail");
        }
        return VIEW;
    }

    @RequestMapping(value = "/detail/{hash}/location", method = RequestMethod.GET)
    public ModelAndView workDetailLocation(HttpServletRequest request, @PathVariable String hash, @PathVariable String user_type) {
        VIEW = new ModelAndView("user/detail-location");
        VIEW.addObject("kakao_key", KAKAO_JAVASCRIPT);
        return VIEW;
    }

    @RequestMapping(value = "/works", method = RequestMethod.GET)
    public ModelAndView works(HttpServletRequest request, @PathVariable String user_type) {
        VIEW = new ModelAndView("user/works");
        return VIEW;
    }

    @RequestMapping(value = "/register/first", method = RequestMethod.GET)
    public ModelAndView workRegisterFirst(HttpServletRequest request, @PathVariable String user_type) {
        VIEW = new ModelAndView("supplier/register-onboarding-one");
        return VIEW;
    }

    @RequestMapping(value = "/register/second", method = RequestMethod.GET)
    public ModelAndView workRegisterSecond(HttpServletRequest request, @PathVariable String user_type) {
        VIEW = new ModelAndView("supplier/register-onboarding-two");
        return VIEW;
    }

    @RequestMapping(value = "/register/third", method = RequestMethod.GET)
    public ModelAndView workRegisterThird(HttpServletRequest request, @PathVariable String user_type) {
        VIEW = new ModelAndView("supplier/register-onboarding-three");
        return VIEW;
    }
}