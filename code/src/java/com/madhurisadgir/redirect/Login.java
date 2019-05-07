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
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author nishant.vibhute
 */
public class Login extends ActionSupport implements SessionAware {

    UserBean userBean = new UserBean();
    MessageBean messageBean = new MessageBean();
    private SessionMap<String, Object> sessionMap;

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

    public String loginUser() {
        LoginDao loginDao = new LoginDao();
        UserBean userBean1 = loginDao.loginUser(userBean);
        String returntype = ActionSupport.ERROR;
        if (userBean1.getUserName() != null) {
            sessionMap.put("login", "true");
            sessionMap.put("userBean", userBean1);
            returntype = ActionSupport.SUCCESS;
        } else {
            messageBean.setSuccessMessage(CommonUtil.getResourceProperty("message.user.login.failure"));
            returntype = ActionSupport.ERROR;
        }
        return returntype;
    }

    public String forgotUserPass() {
        String returntype = ActionSupport.SUCCESS;
        return returntype;
    }

    public String logoutUser() {
        String returntype = ActionSupport.ERROR;
        if (sessionMap != null) {
            sessionMap.invalidate();
            messageBean.setSuccessMessage(CommonUtil.getResourceProperty("message.user.logout.success"));
            returntype = ActionSupport.SUCCESS;
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

    public SessionMap<String, Object> getSessionMap() {
        return sessionMap;
    }

    public void setSessionMap(SessionMap<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        sessionMap = (SessionMap) map;
    }

}
