/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.redirect;

import com.madhurisadgir.bean.MessageBean;
import com.madhurisadgir.bean.UserBean;
import com.madhurisadgir.dao.LoginDao;
import com.madhurisadgir.util.CommonUtil;
import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author nishant.vibhute
 */
public class Login extends ActionSupport {

    UserBean userBean = new UserBean();
    MessageBean messageBean = new MessageBean();

    public Login() {
    }

    public String execute() {
        return ActionSupport.SUCCESS;
    }

    public String signUp() {
        return ActionSupport.SUCCESS;
    }

    public String createUser() {
        LoginDao loginDao = new LoginDao();
        int id = loginDao.createUser(userBean);
        String returntype = ActionSupport.ERROR;
        if (id != 0) {
            messageBean.setSuccessMessage(CommonUtil.getResourceProperty("message.user.create.success"));
            returntype = ActionSupport.SUCCESS;
        } else {
            messageBean.setSuccessMessage(CommonUtil.getResourceProperty("message.user.create.failure"));
            returntype = ActionSupport.ERROR;
        }
        return returntype;
    }

    public UserBean getUserBean() {
        return userBean;
    }

    public void setUserBean(UserBean userBean) {
        this.userBean = userBean;
    }

    public MessageBean getMessageBean() {
        return messageBean;
    }

    public void setMessageBean(MessageBean messageBean) {
        this.messageBean = messageBean;
    }

}
