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
public enum TestType {
    Paid(1, "Paid"),
    Free(2, "Free");

    private int id;
    private String text;

    private TestType(int id, String text) {
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
        for (TestType e : TestType.values()) {
            if (code == e.id) {
                return e.getText();
            }
        }
        return null;
    }

    public static int getEnumByName(String code) {
        for (TestType e : TestType.values()) {
            if (code.equalsIgnoreCase(e.getText())) {
                return e.getId();
            }
        }
        return 0;
    }
}
