/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.bean;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nishant.vibhute
 */
public class AreaBean {

    int id;
    String name;
    String desc;
    String color1;
    String color2;
    boolean isDeleted;
    List<ExpertiesBean> expertiesBeans = new ArrayList<>();

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getColor1() {
        return color1;
    }

    public void setColor1(String color1) {
        this.color1 = color1;
    }

    public String getColor2() {
        return color2;
    }

    public void setColor2(String color2) {
        this.color2 = color2;
    }

    public List<ExpertiesBean> getExpertiesBeans() {
        return expertiesBeans;
    }

    public void setExpertiesBeans(List<ExpertiesBean> expertiesBeans) {
        this.expertiesBeans = expertiesBeans;
    }

    public boolean isIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(boolean isDeleted) {
        this.isDeleted = isDeleted;
    }

}
