/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author nishant.vibhute
 */
public class DBUtil {

    public Connection getConnection() {

        try {
            String DATABASE_URLIntraday = "jdbc:mysql://" + CommonUtil.getResourceProperty("database.url") + "/" + CommonUtil.getResourceProperty("database.name");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(DATABASE_URLIntraday, CommonUtil.getResourceProperty("database.username"), CommonUtil.getResourceProperty("database.password"));
            return con;

        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public void closeConnection(Connection con) {
        try {
            if (con != null) {
                con.close();
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }

}
