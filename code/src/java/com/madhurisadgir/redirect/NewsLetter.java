/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.redirect;

import com.madhurisadgir.dao.NewsLetterDao;
import com.madhurisadgir.util.CommonUtil;
import com.madhurisadgir.util.EmailUtil;
import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author guruprasad.tiwari
 */
public class NewsLetter extends ActionSupport {

    public String email;
    public int isSubscribed;
    public String mssg;

    NewsLetterDao nld = new NewsLetterDao();

    @Override
    public String execute() {
        return ActionSupport.SUCCESS;
    }

    public String subscribeUser() {
        if (nld.isEmailExist(email)) {
            isSubscribed = 1;
            mssg = "user already Subscribed";
        } else {
            nld.newLetterSub(email);
            EmailUtil emailUtil = new EmailUtil();
            emailUtil.send(email, CommonUtil.getResourceProperty("newsletter.subject"), CommonUtil.getResourceProperty("newsletter.body"));
            mssg = CommonUtil.getResourceProperty("newsletter.successmssg");
        }
        return ActionSupport.SUCCESS;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getIsSubscribed() {
        return isSubscribed;
    }

    public void setIsSubscribed(int isSubscribed) {
        this.isSubscribed = isSubscribed;
    }

    public String getMssg() {
        return mssg;
    }

    public void setMssg(String mssg) {
        this.mssg = mssg;
    }

}
