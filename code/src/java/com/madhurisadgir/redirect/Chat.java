/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.redirect;

import com.madhurisadgir.bean.AdminChat;
import com.madhurisadgir.bean.ChatBean;
import com.madhurisadgir.dao.ChatDao;
import com.madhurisadgir.enums.UserType;
import com.opensymphony.xwork2.ActionSupport;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;
import org.codehaus.jackson.map.ObjectMapper;

/**
 *
 * @author guruprasad.tiwari
 */
public class Chat extends ActionSupport implements SessionAware {

    private SessionMap<String, Object> sessionMap;
    ChatDao chatDao = new ChatDao();
    List<ChatBean> chatList = new ArrayList<>();
    List<AdminChat> adminChatList = new ArrayList<>();
    private InputStream inputStream;
    public int userId;
    public String message;

    @Override
    public String execute() {
//        boolean isLoggedIn = (boolean) sessionMap.get("login");
//        if (isLoggedIn) {
//            UserBean user = (UserBean) sessionMap.get("userBean");
//            chatList = chatDao.getUserChat(user);
//        }
        adminChatList = chatDao.getMessagesForAdmin();
        return ActionSupport.SUCCESS;
    }

    public String getUserChat() {
        try {
            ObjectMapper mapper = new ObjectMapper();
            List<ChatBean> chatData = chatDao.getUserChat(userId);
            String res = mapper.writeValueAsString(chatData);
            inputStream = new ByteArrayInputStream(res.getBytes(StandardCharsets.UTF_8));
        } catch (IOException ex) {
            Logger.getLogger(Chat.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ActionSupport.SUCCESS;
    }

    public String adminSendMessage() {

        try {
            chatDao.sendMessage(userId, UserType.ADMIN.getId(), message);
            ObjectMapper mapper = new ObjectMapper();
            List<ChatBean> chatData = chatDao.getUserChat(userId);
            String res = mapper.writeValueAsString(chatData);
            inputStream = new ByteArrayInputStream(res.getBytes(StandardCharsets.UTF_8));
        } catch (IOException ex) {
            Logger.getLogger(Chat.class.getName()).log(Level.SEVERE, null, ex);
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

    public List<AdminChat> getAdminChatList() {
        return adminChatList;
    }

    public void setAdminChatList(List<AdminChat> adminChatList) {
        this.adminChatList = adminChatList;
    }

    public InputStream getInputStream() {
        return inputStream;
    }

    public void setInputStream(InputStream inputStream) {
        this.inputStream = inputStream;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

}
