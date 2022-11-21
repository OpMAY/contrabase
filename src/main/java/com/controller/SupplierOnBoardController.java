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
@RequestMapping(value = "/supplier/onboard")
public class SupplierOnBoardController {
    private ModelAndView VIEW;

    @RequestMapping(value = "/first", method = RequestMethod.GET)
    public ModelAndView first(HttpServletRequest request) {
        VIEW = new ModelAndView("auth/supplier-onboarding-one");
        return VIEW;
    }

    @RequestMapping(value = "/second", method = RequestMethod.GET)
    public ModelAndView second(HttpServletRequest request) {
        VIEW = new ModelAndView("auth/supplier-onboarding-two");
        return VIEW;
    }
}
