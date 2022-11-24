package com.controller;

import com.model.ControllerEnum;
import com.model.service.Employee;
import com.model.service.work.Work;
import com.service.EmployeeService;
import com.service.WorkLikeService;
import com.service.WorkService;
import com.util.Encryption.EncryptionService;
import com.util.Encryption.JWTEnum;
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
    private final WorkService workService;
    private final WorkLikeService workLikeService;
    private final EmployeeService employeeService;
    private final EncryptionService encryptionService;

    @Value("${KAKAO.JAVASCRIPT}")
    private String KAKAO_JAVASCRIPT;

    private ModelAndView VIEW;

    @RequestMapping(value = "/detail/{hash}", method = RequestMethod.GET)
    public ModelAndView workDetail(HttpServletRequest request, @PathVariable String hash, @PathVariable ControllerEnum user_type) throws Exception {
        Integer user_no = encryptionService.getSessionParameter((String) request.getSession().getAttribute(JWTEnum.JWTToken.name()), JWTEnum.NO.name());
        user_no = 1;
        if (user_type == ControllerEnum.USER) {
            //int work_no = Integer.parseInt(encryptionService.decryptAESWithSlash("hash"));
            VIEW = new ModelAndView("user/detail");
            int work_no = 1;
            log.info("USER");
            Employee employee = employeeService.getEmployeeByUserNo(user_no);
            Work work = workService.getWorkByNo(work_no);
            work.set_like(workLikeService.checkEmployeeWorkLiked(work_no, employee.getNo()));
            work.setHash_no(encryptionService.encryptAES(String.valueOf(work.getNo()), true));
            VIEW.addObject("work", work);
        } else {
            log.info("SUPPLIER");
            VIEW = new ModelAndView("supplier/detail");
        }
        return VIEW;
    }

    @RequestMapping(value = "/detail/{hash}/location", method = RequestMethod.GET)
    public ModelAndView workDetailLocation(HttpServletRequest request, @PathVariable String hash, @PathVariable ControllerEnum user_type) {
        VIEW = new ModelAndView("user/detail-location");
        VIEW.addObject("kakao_key", KAKAO_JAVASCRIPT);
        return VIEW;
    }

    @RequestMapping(value = "/works", method = RequestMethod.GET)
    public ModelAndView works(HttpServletRequest request, @PathVariable ControllerEnum user_type) {
        VIEW = new ModelAndView("user/works");
        return VIEW;
    }

    @RequestMapping(value = "/register/first", method = RequestMethod.GET)
    public ModelAndView workRegisterFirst(HttpServletRequest request, @PathVariable ControllerEnum user_type) {
        VIEW = new ModelAndView("supplier/register-onboarding-one");
        return VIEW;
    }

    @RequestMapping(value = "/register/second", method = RequestMethod.GET)
    public ModelAndView workRegisterSecond(HttpServletRequest request, @PathVariable ControllerEnum user_type) {
        VIEW = new ModelAndView("supplier/register-onboarding-two");
        return VIEW;
    }

    @RequestMapping(value = "/register/third", method = RequestMethod.GET)
    public ModelAndView workRegisterThird(HttpServletRequest request, @PathVariable ControllerEnum user_type) {
        VIEW = new ModelAndView("supplier/register-onboarding-three");
        return VIEW;
    }
}