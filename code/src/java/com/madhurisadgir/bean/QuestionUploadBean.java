/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.bean;

import java.io.File;

/**
 *
 * @author nishant.vibhute
 */
public class QuestionUploadBean {

    public String type;
    public int paperType;
    private File questions;
    private String questionsContentType;
    private String questionsFileName;
    private String testType;
    private String testName;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getPaperType() {
        return paperType;
    }

    public void setPaperType(int paperType) {
        this.paperType = paperType;
    }

    public File getQuestions() {
        return questions;
    }

    public void setQuestions(File questions) {
        this.questions = questions;
    }

    public String getQuestionsContentType() {
        return questionsContentType;
    }

    public void setQuestionsContentType(String questionsContentType) {
        this.questionsContentType = questionsContentType;
    }

    public String getQuestionsFileName() {
        return questionsFileName;
    }

    public void setQuestionsFileName(String questionsFileName) {
        this.questionsFileName = questionsFileName;
    }

    public String getTestType() {
        return testType;
    }

    public void setTestType(String testType) {
        this.testType = testType;
    }

    public String getTestName() {
        return testName;
    }

    public void setTestName(String testName) {
        this.testName = testName;
    }

}
