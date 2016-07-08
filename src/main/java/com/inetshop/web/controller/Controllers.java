package com.inetshop.web.controller;

import com.inetshop.core.bo.MarkService;
import com.inetshop.core.bo.UserService;
import com.inetshop.core.entities.Roles;
import com.inetshop.core.entities.User;
import com.inetshop.web.validator.CustomRegisterValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by SGurin on 17.06.2016.
 */
@Controller
public class Controllers {
    @Autowired
    private UserService userService;

    @Autowired
    private MarkService markService;

    @Autowired
    private ShaPasswordEncoder shaPasswordEncoder;

    @Autowired
    private CustomRegisterValidator customRegisterValidator;

    @RequestMapping(value = {"/", "/welcome"}, method = RequestMethod.GET)
    public ModelAndView welcomePage() {
        ModelAndView model = new ModelAndView();
        model.setViewName("main");

        return model;
    }

    @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
    public ModelAndView login(
            @RequestParam(value = "error", required = false) String error,
            @RequestParam(value = "logout", required = false) String logout) {

        ModelAndView model = new ModelAndView();
        if (error != null) {
            model.addObject("error", "Invalid username and password!");
        }

        if (logout != null) {
            model.addObject("msg", "You've been logged out successfully.");
        }
        model.setViewName("login");

        return model;
    }

    @RequestMapping(value = {"/admin"}, method = RequestMethod.GET)
    public ModelAndView admin() {
        ModelAndView model = new ModelAndView();
        model.setViewName("admin");

        return model;
    }

    @RequestMapping(value = {"/admin/mark"}, method = RequestMethod.GET)
    public ModelAndView getMark() {
        ModelAndView model = new ModelAndView();

        Map<String, Object> allObjects = new HashMap<>();
        allObjects.put("marks", markService.getAllMarks());
        model.addAllObjects(allObjects);
        model.setViewName("mark");

        return model;
    }

    @RequestMapping(value = {"/register"}, method = RequestMethod.GET)
    public ModelAndView getRegister() {

        ModelAndView model = new ModelAndView();
        model.setViewName("register");
        model.addObject("user", new User());
        return model;

    }

    @RequestMapping(value = {"/register"}, method = RequestMethod.POST)
    public String setRegister(@ModelAttribute("user") @Valid User user, BindingResult binding, Model model) {
        customRegisterValidator.validate(user, binding);
        if (binding.hasErrors()) {
            model.addAttribute("user", user);

            return "register";
        }
        user.setRole(Roles.USER.name());
        user.setPassword(shaPasswordEncoder.encodePassword(user.getPassword(), null));

        userService.createUser(user);

        return "redirect:/login";

    }
}
