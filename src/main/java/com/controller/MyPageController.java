package com.controller;

import com.model.ControllerEnum;
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
    private ModelAndView VIEW;

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public ModelAndView myPageHome(HttpServletRequest request, @PathVariable String user_type) {
        if (Objects.equals(user_type, ControllerEnum.USER.name().toLowerCase())) {
            VIEW = new ModelAndView("user/mypage");
        } else {
            VIEW = new ModelAndView("user/mypage");
        }
        return VIEW;
    }

    @RequestMapping(value = "/likes", method = RequestMethod.GET)
    public ModelAndView myPageLikes(HttpServletRequest request, @PathVariable String user_type) {
        VIEW = new ModelAndView("user/likes");
        return VIEW;
    }

    @RequestMapping(value = "/alarm/alarms", method = RequestMethod.GET)
    public ModelAndView myPageAlarms(HttpServletRequest request, @PathVariable String user_type) {
        if (Objects.equals(user_type, ControllerEnum.USER.name().toLowerCase())) {
            VIEW = new ModelAndView("user/alarm");
            
        } else {
            VIEW = new ModelAndView("user/alarm");
        }
        return VIEW;
    }

    @RequestMapping(value = "/alarm/setting", method = RequestMethod.GET)
    public ModelAndView myPageAlarmSetting(HttpServletRequest request, @PathVariable String user_type) {
        if (Objects.equals(user_type, ControllerEnum.USER.name().toLowerCase())) {
            VIEW = new ModelAndView("user/mypage-alarm-setting");
        } else {
            VIEW = new ModelAndView("user/mypage-alarm-setting");
        }
        return VIEW;
    }

    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public ModelAndView myPageProfile(HttpServletRequest request, @PathVariable String user_type) {
        if (Objects.equals(user_type, ControllerEnum.USER.name().toLowerCase())) {
            VIEW = new ModelAndView("user/mypage-profile");
        } else {
            VIEW = new ModelAndView("user/mypage-profile");
        }
        return VIEW;
    }

    @RequestMapping(value = "/profile/edit", method = RequestMethod.GET)
    public ModelAndView myPageProfileEdit(HttpServletRequest request, @PathVariable String user_type) {
        if (Objects.equals(user_type, ControllerEnum.USER.name().toLowerCase())) {
            VIEW = new ModelAndView("user/mypage-profile-edit");
        } else {
            VIEW = new ModelAndView("user/mypage-profile-edit");
        }
        return VIEW;
    }

    @RequestMapping(value = "/car/edit", method = RequestMethod.GET)
    public ModelAndView myPageCarNumberEdit(HttpServletRequest request, @PathVariable String user_type) {
        if (Objects.equals(user_type, ControllerEnum.USER.name().toLowerCase())) {
            VIEW = new ModelAndView("user/mypage-car-number");
        } else {
            VIEW = new ModelAndView("user/mypage-car-number");
        }
        return VIEW;
    }

    @RequestMapping(value = "/unregister", method = RequestMethod.GET)
    public ModelAndView getMyPageUnRegister(HttpServletRequest request, @PathVariable String user_type) {
        if (Objects.equals(user_type, ControllerEnum.USER.name().toLowerCase())) {
            VIEW = new ModelAndView("user/mypage-unregister");
        } else {
            VIEW = new ModelAndView("user/mypage-unregister");
        }
        return VIEW;
    }

    @RequestMapping(value = "/unregister", method = RequestMethod.POST)
    public ModelAndView postMyPageUnRegister(HttpServletRequest request, @PathVariable String user_type) {
        if (Objects.equals(user_type, ControllerEnum.USER.name().toLowerCase())) {
            VIEW = new ModelAndView("user/mypage-unregister");
        } else {
            VIEW = new ModelAndView("user/mypage-unregister");
        }
        return VIEW;
    }

    @RequestMapping(value = "/point/points", method = RequestMethod.GET)
    public ModelAndView myPagePoints(HttpServletRequest request, @PathVariable String user_type) {
        VIEW = new ModelAndView("user/mypage-point-manage");
        return VIEW;
    }

    @RequestMapping(value = "/point/charge", method = RequestMethod.GET)
    public ModelAndView myPagePointCharge(HttpServletRequest request, @PathVariable String user_type) {
        VIEW = new ModelAndView("user/mypage-point-charge");
        return VIEW;
    }
}