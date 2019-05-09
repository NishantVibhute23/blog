/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.dao;

import com.madhurisadgir.bean.PageDetail;
import com.madhurisadgir.enums.PageEnum;
import com.madhurisadgir.util.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author nishant.vibhute
 */
public class CommonDao {

    DBUtil db = new DBUtil();
    Connection con;

    public PageDetail getPageDetail(int type) {
        PageDetail pageDetail = new PageDetail();
        try {
            con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("call getPageDetail(?)");
            ps.setInt(1, type);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                pageDetail.setDesc1(rs.getString(1));
                pageDetail.setDesc2(rs.getString(2));
                pageDetail.setImage(rs.getString(3));
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }
        return pageDetail;
    }

    public int uploadPageDetailImage(int type, String name) {
        int count = 0;
        try {
            con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("call updatePhotoUrl(?,?)");
            ps.setInt(1, type);
            ps.setString(2, name);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                count = 1;
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }
        return count;
    }

    public int pageDetailDesc(int type, String desc1, String desc2) {
        int count = 0;
        try {
            con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("call updateDesc(?,?,?)");
            ps.setInt(1, type);
            ps.setString(2, desc1);
            ps.setString(3, desc2);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                count = 1;
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }
        return count;
    }
}
