/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.redirect;

import com.madhurisadgir.bean.Qualification;
import com.madhurisadgir.dao.CommonDao;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nishant.vibhute
 */
public class About extends ActionSupport {

    public About() {
    }
    CommonDao commonDao = new CommonDao();
    List<Qualification> qualList = new ArrayList<>();

    @Override
    public String execute() {
        qualList = commonDao.qualificationDetails();
        return ActionSupport.SUCCESS;
    }

    public String updateQualification() {
        int count = commonDao.updateQualification(qualList);
        if (count > 0) {
            qualList = commonDao.qualificationDetails();
        }
        return ActionSupport.SUCCESS;
    }

}
