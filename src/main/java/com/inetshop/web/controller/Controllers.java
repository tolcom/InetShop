package com.inetshop.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by SGurin on 17.06.2016.
 */
@Controller
public class Controllers {
    @RequestMapping(value = {"/", "/welcome"}, method = RequestMethod.GET)
    public ModelAndView welcomePage() {
        ModelAndView model = new ModelAndView();
        model.setViewName("main");

        return model;
    }

    @RequestMapping(value = {"/admin"}, method = RequestMethod.GET)
    public ModelAndView admin() {
        ModelAndView model = new ModelAndView();
        model.setViewName("admin");

        return model;
    }
}
