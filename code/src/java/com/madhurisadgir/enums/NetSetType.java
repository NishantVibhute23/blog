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
public enum NetSetType {

    NET(1, "NET"),
    SET(2, "SET"),
    BOTH(3, "BOTH");

    private int id;
    private String text;

    private NetSetType(int id, String text) {
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
        for (NetSetType e : NetSetType.values()) {
            if (code == e.id) {
                return e.getText();
            }
        }
        return null;
    }

}
