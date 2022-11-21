package com.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping(value = "/{user_type}/location")
public class LocationController {
    private ModelAndView VIEW;

    @RequestMapping(value = "/locations", method = RequestMethod.GET)
    public ModelAndView workDetail(HttpServletRequest request, @PathVariable String user_type) {
        VIEW = new ModelAndView("user/location");
        return VIEW;
    }
}