/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.redirect;

import com.madhurisadgir.bean.ChatBean;
import com.madhurisadgir.bean.UserBean;
import com.madhurisadgir.dao.ChatDao;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author guruprasad.tiwari
 */
public class Chat extends ActionSupport implements SessionAware {

    private SessionMap<String, Object> sessionMap;
    ChatDao chatDao = new ChatDao();
    List<ChatBean> chatList = new ArrayList<>();

    @Override
    public String execute() {
        boolean isLoggedIn = (boolean) sessionMap.get("login");
        if (isLoggedIn) {
            UserBean user = (UserBean) sessionMap.get("userBean");
            chatList = chatDao.getUserChat(user);
        }

        return ActionSupport.SUCCESS;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        sessionMap = (SessionMap) map;
    }

    public SessionMap<String, Object> getSessionMap() {
        return sessionMap;
    }

    public void setSessionMap(SessionMap<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

    public List<ChatBean> getChatList() {
        return chatList;
    }

    public void setChatList(List<ChatBean> chatList) {
        this.chatList = chatList;
    }

}
