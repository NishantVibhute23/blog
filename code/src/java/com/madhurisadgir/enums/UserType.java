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
public enum UserType {
    ADMIN(1, "Admin"),
    USER(2, "User");

    private int id;
    private String text;

    private UserType(int id, String text) {
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

}
