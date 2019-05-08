/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.redirect;

import com.madhurisadgir.bean.MessageBean;
import com.opensymphony.xwork2.ActionSupport;
import java.util.LinkedHashMap;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author guruprasad.tiwari
 */
public class Subscription implements SessionAware {

    private SessionMap<String, Object> sessionMap;
    MessageBean messageBean = new MessageBean();
    private Map<String, Double> subsPrice = new LinkedHashMap<>();

    public String execute() {
        subsPrice.put("Economy", 100.0);
        subsPrice.put("Business", 200.0);
        subsPrice.put("Premium", 500.0);
        subsPrice.put("Exclusive", 800.0);
        return ActionSupport.SUCCESS;
    }

    public SessionMap<String, Object> getSessionMap() {
        return sessionMap;
    }

    public void setSessionMap(SessionMap<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

    public MessageBean getMessageBean() {
        return messageBean;
    }

    public void setMessageBean(MessageBean messageBean) {
        this.messageBean = messageBean;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        sessionMap = (SessionMap) map;
    }

}
