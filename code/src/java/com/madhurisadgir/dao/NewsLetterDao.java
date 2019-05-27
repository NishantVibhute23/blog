/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.dao;

import com.madhurisadgir.bean.PageDetail;
import com.madhurisadgir.util.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author guruprasad.tiwari
 */
public class NewsLetterDao {

    DBUtil db = new DBUtil();
    Connection con;

    public int newLetterSub(String email) {
        int count = 0;
        try {
            con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("call addNewsSubs(?)");
            ps.setString(1, email);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }
        return count;
    }

    public boolean isEmailExist(String email) {
        boolean emailExist = false;
        try {
            con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("call isSubsExist(?)");
            ps.setString(1, email);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                emailExist = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }
        return emailExist;
    }

}
