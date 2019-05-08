/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.enums;

/**
 *
 * @author nishant.vibhute
 */
public enum PageEnum {

    Home(1, "Home"),
    PersonalDetails(2, "PersonalDetails");

    private int id;
    private String text;

    private PageEnum(int id, String text) {
        this.id = id;
        this.text = text;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public static String getEnumByCode(int code) {
        for (PageEnum e : PageEnum.values()) {
            if (code == e.id) {
                return e.getText();
            }
        }
        return null;
    }

}
