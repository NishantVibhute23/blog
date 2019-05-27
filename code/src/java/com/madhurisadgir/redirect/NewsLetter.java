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
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author guruprasad.tiwari
 */
public class NewsLetter extends ActionSupport {

    public String email;
    public int isSubscribed;
    public String mssg, subject, body;
    EmailUtil emailUtil = new EmailUtil();
    NewsLetterDao nld = new NewsLetterDao();
    List<String> emailIds = new ArrayList<>();

    @Override
    public String execute() {
        emailIds = nld.getEmailIds();

        return ActionSupport.SUCCESS;
    }

    public String subscribeUser() {
        if (nld.isEmailExist(email)) {
            isSubscribed = 1;
            mssg = "user already Subscribed";
        } else {
            nld.newLetterSub(email);

            emailUtil.send(email, CommonUtil.getResourceProperty("newsletter.subject"), CommonUtil.getResourceProperty("newsletter.body"));
            mssg = CommonUtil.getResourceProperty("newsletter.successmssg");
        }
        return ActionSupport.SUCCESS;
    }

    public String sendNewsLetter() {
        String to = "";

        for (int i = 0; i < emailIds.size(); i++) {
            to = to + emailIds.get(i);
            if (i + 1 != emailIds.size()) {
                to = to + ",";
            }

        }
        emailUtil.send(to, subject, body);

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

    public List<String> getEmailIds() {
        return emailIds;
    }

    public void setEmailIds(List<String> emailIds) {
        this.emailIds = emailIds;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

}
