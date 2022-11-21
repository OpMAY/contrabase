package com.controller;

import com.aws.file.FileUploadUtility;
import com.transfer.DownloadBuilder;
import com.util.Encryption.EncryptionService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

@Slf4j
@Controller
@RequiredArgsConstructor
public class HomeController {
    private ModelAndView VIEW;

    @RequestMapping(value = "/user/home", method = RequestMethod.GET)
    public ModelAndView userHome(HttpServletRequest request) {
        VIEW = new ModelAndView("user/main");
        return VIEW;
    }

    @RequestMapping(value = "/supplier/home", method = RequestMethod.GET)
    public ModelAndView supplierHome(HttpServletRequest request) {
        VIEW = new ModelAndView("supplier/main");
        return VIEW;
    }
}
