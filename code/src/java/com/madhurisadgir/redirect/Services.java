/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.redirect;

import com.madhurisadgir.bean.QuestionBean;
import com.madhurisadgir.dao.NetSetTestDao;
import com.madhurisadgir.enums.NetSetType;
import com.opensymphony.xwork2.ActionSupport;
import static java.lang.Boolean.FALSE;
import static java.lang.Boolean.TRUE;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author nishant.vibhute
 */
public class Services extends ActionSupport implements SessionAware {

    int paperId;
    List<QuestionBean> questionBeanList = new ArrayList<>();
    int correctAnswers = 0;
    int wrongAnswers = 0;
    int notAttemptedAnswers = 0;
    int totalQuestions = 0;
    boolean isAnswerSubmitted = false;
    private SessionMap<String, Object> sessionMap;
    public boolean isLoggedIn;

    public Services() {
    }

    public String execute() throws Exception {
        return ActionSupport.SUCCESS;
    }

    public String netSetExam() throws Exception {

        isLoggedIn = sessionMap.get("login") == null ? FALSE : TRUE;

        return ActionSupport.SUCCESS;

    }

    public String startTest() {

        NetSetTestDao netSetTestDao = new NetSetTestDao();
        questionBeanList = netSetTestDao.getQuestions(NetSetType.BOTH.getId(), paperId, 5);

        return ActionSupport.SUCCESS;

    }

    public String submitTest() {
        isAnswerSubmitted = true;
        NetSetTestDao netSetTestDao = new NetSetTestDao();
        List<QuestionBean> questionListSubmitted = questionBeanList;
        questionBeanList = new ArrayList<>();
        for (QuestionBean questionBean : questionListSubmitted) {
            totalQuestions = totalQuestions + 1;
            QuestionBean questionBeanAnswer = netSetTestDao.getQuestionsAnswerById(questionBean.getId());

            if (questionBean.getAnswer() == null) {
                notAttemptedAnswers = notAttemptedAnswers + 1;
            } else {
                if (questionBean.getAnswer().equalsIgnoreCase(questionBeanAnswer.getAnswer())) {
                    correctAnswers = correctAnswers + 1;
                } else {
                    wrongAnswers = wrongAnswers + 1;
                }
            }
            questionBeanList.add(questionBeanAnswer);
        }

        return ActionSupport.SUCCESS;
    }

    public int getPaperId() {
        return paperId;
    }

    public void setPaperId(int paperId) {
        this.paperId = paperId;
    }

    public List<QuestionBean> getQuestionBeanList() {
        return questionBeanList;
    }

    public void setQuestionBeanList(List<QuestionBean> questionBeanList) {
        this.questionBeanList = questionBeanList;
    }

    public int getCorrectAnswers() {
        return correctAnswers;
    }

    public void setCorrectAnswers(int correctAnswers) {
        this.correctAnswers = correctAnswers;
    }

    public int getWrongAnswers() {
        return wrongAnswers;
    }

    public void setWrongAnswers(int wrongAnswers) {
        this.wrongAnswers = wrongAnswers;
    }

    public int getNotAttemptedAnswers() {
        return notAttemptedAnswers;
    }

    public void setNotAttemptedAnswers(int notAttemptedAnswers) {
        this.notAttemptedAnswers = notAttemptedAnswers;
    }

    public int getTotalQuestions() {
        return totalQuestions;
    }

    public void setTotalQuestions(int totalQuestions) {
        this.totalQuestions = totalQuestions;
    }

    public boolean isIsAnswerSubmitted() {
        return isAnswerSubmitted;
    }

    public void setIsAnswerSubmitted(boolean isAnswerSubmitted) {
        this.isAnswerSubmitted = isAnswerSubmitted;
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

    public boolean isIsLoggedIn() {
        return isLoggedIn;
    }

    public void setIsLoggedIn(boolean isLoggedIn) {
        this.isLoggedIn = isLoggedIn;
    }

}
