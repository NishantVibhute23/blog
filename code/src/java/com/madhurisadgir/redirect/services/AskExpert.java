/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.redirect.services;

import com.madhurisadgir.bean.AreaBean;
import com.madhurisadgir.bean.ExpertQestionBean;
import com.madhurisadgir.bean.ExpertSubmitAnswer;
import com.madhurisadgir.bean.UserBean;
import com.madhurisadgir.dao.AskExpertDao;
import com.madhurisadgir.util.ExpertEmailUtil;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author nishant.vibhute
 */
public class AskExpert extends ActionSupport implements SessionAware {

    AreaBean areaBean = new AreaBean();
    AskExpertDao askExpertDao = new AskExpertDao();
    List<AreaBean> areaBeans = new ArrayList<>();
    int area;
    private SessionMap<String, Object> sessionMap;
    ExpertQestionBean expertQestionBean;
    List<ExpertQestionBean> expertQuestionList = new ArrayList<>();
    String guid;
    ExpertSubmitAnswer expertSubmitAnswer;

    public String execute() throws Exception {
        areaBeans = askExpertDao.addExpertArea();
        return ActionSupport.SUCCESS;
    }

    public String addNewExpertArea() {

        askExpertDao.addExpertArea(areaBean);
        return ActionSupport.SUCCESS;
    }

    public String getExpertAreaDetail() {

        int userId = 0;

        if (sessionMap.get("login") != null) {
            UserBean u = (UserBean) sessionMap.get("userBean");
            userId = u.getUserId();
        }

        areaBean = askExpertDao.getAreaDetails(area);
        expertQuestionList = askExpertDao.getUserExpertQuestion(userId, area);
        return ActionSupport.SUCCESS;
    }

    public String addExpertQuestion() {

        int userId = 0;

        if (sessionMap.get("login") != null) {
            UserBean u = (UserBean) sessionMap.get("userBean");
            userId = u.getUserId();

        }
        int qid = askExpertDao.addExpertQuestion(expertQestionBean, userId);
        ExpertEmailUtil.createMail(expertQestionBean, qid);
        return ActionSupport.SUCCESS;
    }

    public String deleteArea() {
        askExpertDao.deleteArea(area);
        return ActionSupport.SUCCESS;
    }

    public String editArea() {
        askExpertDao.editArea(areaBean);
        return ActionSupport.SUCCESS;
    }

    public String getExpertQuestionToShow() {
        expertSubmitAnswer = askExpertDao.getQuestionBasedOnGuid(guid);
        if (expertSubmitAnswer.getId() == 0) {
            return ActionSupport.ERROR;
        } else {
            return ActionSupport.SUCCESS;
        }
    }

    public String submitExpertAnswer() {
        askExpertDao.submitExpertAnswer(expertSubmitAnswer);
        return ActionSupport.SUCCESS;
    }

    public AreaBean getAreaBean() {
        return areaBean;
    }

    public void setAreaBean(AreaBean areaBean) {
        this.areaBean = areaBean;
    }

    public List<AreaBean> getAreaBeans() {
        return areaBeans;
    }

    public void setAreaBeans(List<AreaBean> areaBeans) {
        this.areaBeans = areaBeans;
    }

    public int getArea() {
        return area;
    }

    public void setArea(int area) {
        this.area = area;
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

    public ExpertQestionBean getExpertQestionBean() {
        return expertQestionBean;
    }

    public void setExpertQestionBean(ExpertQestionBean expertQestionBean) {
        this.expertQestionBean = expertQestionBean;
    }

    public List<ExpertQestionBean> getExpertQuestionList() {
        return expertQuestionList;
    }

    public void setExpertQuestionList(List<ExpertQestionBean> expertQuestionList) {
        this.expertQuestionList = expertQuestionList;
    }

    public String getGuid() {
        return guid;
    }

    public void setGuid(String guid) {
        this.guid = guid;
    }

    public ExpertSubmitAnswer getExpertSubmitAnswer() {
        return expertSubmitAnswer;
    }

    public void setExpertSubmitAnswer(ExpertSubmitAnswer expertSubmitAnswer) {
        this.expertSubmitAnswer = expertSubmitAnswer;
    }

}
