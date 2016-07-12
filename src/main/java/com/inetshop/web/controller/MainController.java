package com.inetshop.web.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.inetshop.core.bo.CatalogBO;
import com.inetshop.core.entities.Catalog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by DVaschenko on 12.07.2016.
 */
@Controller
public class MainController {

    @Autowired
    private CatalogBO catalogBO;

    private String getCatalogListAsJSON(){
        List<Catalog> catalogs = catalogBO.getCatalogList();

        try {
            return new ObjectMapper().writeValueAsString(catalogs);
        } catch (JsonProcessingException e) {
            /*Make logging*/
            e.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = {"/", "/welcome"}, method = RequestMethod.GET)
    public ModelAndView welcomePage() {
        ModelAndView model = new ModelAndView();
        model.setViewName("main");

        model.addObject("catalogList", getCatalogListAsJSON());

        return model;
    }
}
