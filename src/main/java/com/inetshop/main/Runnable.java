package com.inetshop.main;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.inetshop.core.bo.CatalogBO;
import com.inetshop.core.config.JPAConfig;
import com.inetshop.core.dao.CatalogDao;
import com.inetshop.core.entities.Catalog;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import java.util.List;

/**
 * Created by DVaschenko on 15.06.2016.
 */
public class Runnable {
    public static void main(String[] args) throws JsonProcessingException {
        ApplicationContext context = new AnnotationConfigApplicationContext(JPAConfig.class);

        CatalogBO bean = context.getBean(CatalogBO.class);

        List<Catalog> parent = bean.getCatalogList();

        /*Catalog root = new Catalog.Builder()
                .setTitle("Багажник / помещение для груза")
                .setParent(parent)
                .build();

        root = bean.createItem(root);*/


        System.out.println(new ObjectMapper().writeValueAsString(parent));


    }
}
