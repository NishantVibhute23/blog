/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.listener;

import com.madhurisadgir.util.CommonUtil;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 *
 * @author nishant.vibhute
 */
public class ServletContextLis implements ServletContextListener {

    public ServletContext context;

    @Override
    public void contextInitialized(ServletContextEvent contextEvent) {
        System.out.println("Context Created");
        CommonUtil commonUtil = new CommonUtil(contextEvent.getServletContext().getRealPath("/") + "WEB-INF/classes/com/madhurisadgir/properties/resources.properties");

    }

    @Override
    public void contextDestroyed(ServletContextEvent contextEvent) {
        context = contextEvent.getServletContext();

    }
}
