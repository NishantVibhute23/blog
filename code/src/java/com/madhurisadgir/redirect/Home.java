/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.redirect;

import com.madhurisadgir.bean.PageDetail;
import com.madhurisadgir.dao.CommonDao;
import com.madhurisadgir.enums.PageEnum;
import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author nishant.vibhute
 */
public class Home extends ActionSupport {

    PageDetail home = new PageDetail();
    PageDetail personalDetail = new PageDetail();
    CommonDao commonDao = new CommonDao();
    private int uploadId;

    public String execute() {

        home = commonDao.getPageDetail(PageEnum.Home.getId());
//        home.setImage(CommonUtil.getResourceProperty("photos.path") + "home\\hero-img.png");

        personalDetail = commonDao.getPageDetail(PageEnum.PersonalDetails.getId());
//        personalDetail.setImage(CommonUtil.getResourceProperty("photos.path") + "personalDetails\\about-img.png");

        return ActionSupport.SUCCESS;
    }

    public String updateDesc() {
        if (uploadId == PageEnum.Home.getId()) {
            commonDao.pageDetailDesc(uploadId, home.getDesc1(), "");
        } else {
            commonDao.pageDetailDesc(uploadId, personalDetail.getDesc1(), personalDetail.getDesc2());
        }

        return SUCCESS;
    }

    public PageDetail getHome() {
        return home;
    }

    public void setHome(PageDetail home) {
        this.home = home;
    }

    public PageDetail getPersonalDetail() {
        return personalDetail;
    }

    public void setPersonalDetail(PageDetail personalDetail) {
        this.personalDetail = personalDetail;
    }

    public int getUploadId() {
        return uploadId;
    }

    public void setUploadId(int uploadId) {
        this.uploadId = uploadId;
    }

}
