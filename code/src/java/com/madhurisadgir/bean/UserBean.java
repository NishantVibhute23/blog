/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.bean;

/**
 *
 * @author nishant.vibhute
 */
public class UserBean {

    int userId;
    String userName;
    String userpassword;
    String useremailId;
    String userRepeatPassword;
    int userType;

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

    public String getUserpassword() {
        return userpassword;
    }

    public void setUserpassword(String userpassword) {
        this.userpassword = userpassword;
    }

    public String getUseremailId() {
        return useremailId;
    }

    public void setUseremailId(String useremailId) {
        this.useremailId = useremailId;
    }

    public String getUserRepeatPassword() {
        return userRepeatPassword;
    }

    public void setUserRepeatPassword(String userRepeatPassword) {
        this.userRepeatPassword = userRepeatPassword;
    }

    public int getUserType() {
        return userType;
    }

    public void setUserType(int userType) {
        this.userType = userType;
    }

}
