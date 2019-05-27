/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.redirect;

import com.madhurisadgir.bean.MessageBean;
import com.madhurisadgir.bean.UserQueryBean;
import com.madhurisadgir.dao.ContactDao;
import com.madhurisadgir.util.CommonUtil;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nishant.vibhute
 */
public class Contact extends ActionSupport {

    ContactDao contactDao = new ContactDao();
    UserQueryBean userQueryBean = new UserQueryBean();
    MessageBean messageBean = new MessageBean();
    List<UserQueryBean> userQueries = new ArrayList<>();

    public String execute() {
        userQueries = contactDao.getUserQueries();
        return ActionSupport.SUCCESS;
    }

    public String submitQuery() {
        int id = contactDao.insertUserQuery(userQueryBean);

        if (id != 0) {
            messageBean.setSuccessMessage(CommonUtil.getResourceProperty("message.user.query.submit.success"));
        } else {
            messageBean.setErrorMessage(CommonUtil.getResourceProperty("message.user.query.submit.failure"));
        }
        return ActionSupport.SUCCESS;
    }

    public UserQueryBean getUserQueryBean() {
        return userQueryBean;
    }

    public void setUserQueryBean(UserQueryBean userQueryBean) {
        this.userQueryBean = userQueryBean;
    }

    public MessageBean getMessageBean() {
        return messageBean;
    }

    public void setMessageBean(MessageBean messageBean) {
        this.messageBean = messageBean;
    }

    public List<UserQueryBean> getUserQueries() {
        return userQueries;
    }

    public void setUserQueries(List<UserQueryBean> userQueries) {
        this.userQueries = userQueries;
    }

}
