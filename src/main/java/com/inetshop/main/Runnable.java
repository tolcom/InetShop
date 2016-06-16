package com.inetshop.main;

import com.inetshop.core.config.JPAConfig;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

/**
 * Created by DVaschenko on 15.06.2016.
 */
public class Runnable {
    public static void main(String[] args) {
        ApplicationContext context = new AnnotationConfigApplicationContext(JPAConfig.class);
        System.out.println(context);

        /*test*/
    }
}
