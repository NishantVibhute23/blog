/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.redirect.services;

import com.madhurisadgir.bean.AreaBean;
import com.madhurisadgir.dao.AskExpertDao;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nishant.vibhute
 */
public class AskExpert extends ActionSupport {

    AreaBean areaBean = new AreaBean();
    AskExpertDao askExpertDao = new AskExpertDao();
    List<AreaBean> areaBeans = new ArrayList<>();
    int area;

    public String execute() throws Exception {
        areaBeans = askExpertDao.addExpertArea();
        return ActionSupport.SUCCESS;
    }

    public String addNewExpertArea() {

        askExpertDao.addExpertArea(areaBean);
        return ActionSupport.SUCCESS;
    }

    public String getExpertAreaDetail() {
        areaBean = askExpertDao.getAreaDetails(area);
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

}
