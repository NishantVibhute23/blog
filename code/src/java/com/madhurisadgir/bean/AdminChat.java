/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.bean;

/**
 *
 * @author guruprasad.tiwari
 */
public class AdminChat {

    private int chatId;
    private int userId;
    private String userName;
    private boolean isLoggedIn;
    private String logoutTIme;

    public int getChatId() {
        return chatId;
    }

    public void setChatId(int chatId) {
        this.chatId = chatId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public boolean isIsLoggedIn() {
        return isLoggedIn;
    }

    public void setIsLoggedIn(boolean isLoggedIn) {
        this.isLoggedIn = isLoggedIn;
    }

    public String getLogoutTIme() {
        return logoutTIme;
    }

    public void setLogoutTIme(String logoutTIme) {
        this.logoutTIme = logoutTIme;
    }

}
