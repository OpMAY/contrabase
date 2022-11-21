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
public class IntroController {
    private ModelAndView VIEW;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView intro(HttpServletRequest request) {
        VIEW = new ModelAndView("auth/intro");
        return VIEW;
    }
}
