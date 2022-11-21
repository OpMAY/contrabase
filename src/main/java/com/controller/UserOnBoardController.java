package com.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping(value = "/user/onboard")
public class UserOnBoardController {
    private ModelAndView VIEW;

    @RequestMapping(value = "/first", method = RequestMethod.GET)
    public ModelAndView first(HttpServletRequest request) {
        VIEW = new ModelAndView("auth/onboarding-one");
        return VIEW;
    }

    @RequestMapping(value = "/second", method = RequestMethod.GET)
    public ModelAndView second(HttpServletRequest request) {
        VIEW = new ModelAndView("auth/onboarding-two");
        return VIEW;
    }

    @RequestMapping(value = "/third", method = RequestMethod.GET)
    public ModelAndView third(HttpServletRequest request) {
        VIEW = new ModelAndView("auth/onboarding-three");
        return VIEW;
    }

    @RequestMapping(value = "/fourth", method = RequestMethod.GET)
    public ModelAndView fourth(HttpServletRequest request) {
        VIEW = new ModelAndView("auth/onboarding-four");
        return VIEW;
    }

    @RequestMapping(value = "/fifth", method = RequestMethod.GET)
    public ModelAndView fifth(HttpServletRequest request) {
        VIEW = new ModelAndView("auth/onboarding-five");
        return VIEW;
    }
}
