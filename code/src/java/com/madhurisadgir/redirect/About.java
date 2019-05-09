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
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 *
 * @author nishant.vibhute
 */
public class About extends ActionSupport {

    PageDetail personalDetail = new PageDetail();
    CommonDao commonDao = new CommonDao();
    List<String> desc2List = new ArrayList<>();
    private int uploadId;

    public About() {
    }

    @Override
    public String execute() {
        personalDetail = commonDao.getPageDetail(PageEnum.PersonalDetails.getId());
        String[] lines = personalDetail.getDesc2().split("\\r?\\n");
        desc2List = Arrays.asList(lines);
        return ActionSupport.SUCCESS;
    }

    public String updateDescFromAboutPage() {
        commonDao.pageDetailDesc(uploadId, personalDetail.getDesc1(), personalDetail.getDesc2());
        return SUCCESS;
    }

    public PageDetail getPersonalDetail() {
        return personalDetail;
    }

    public void setPersonalDetail(PageDetail personalDetail) {
        this.personalDetail = personalDetail;
    }

    public List<String> getDesc2List() {
        return desc2List;
    }

    public void setDesc2List(List<String> desc2List) {
        this.desc2List = desc2List;
    }

    public int getUploadId() {
        return uploadId;
    }

    public void setUploadId(int uploadId) {
        this.uploadId = uploadId;
    }

}
