/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.dao;

import com.madhurisadgir.bean.PageDetail;
import com.madhurisadgir.bean.Qualification;
import com.madhurisadgir.enums.PageEnum;
import com.madhurisadgir.util.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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

    public List<Qualification> qualificationDetails() {
        List<Qualification> qualList = new ArrayList<>();
        try {
            con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("call getQualificationDetail()");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Qualification qualification = new Qualification();
                qualification.setCourseId(rs.getInt(1));
                qualification.setCourseName(rs.getString(2));
                qualification.setCourseDesc(rs.getString(3));
                qualification.setYear(rs.getString(4));
                qualList.add(qualification);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }
        return qualList;
    }

    public int updateQualification(List<Qualification> qualList) {
        int count = 0;
        try {
            con = db.getConnection();
            for (Qualification qualification : qualList) {
                PreparedStatement ps = con.prepareStatement("call updateQualificationDetail(?,?,?,?)");
                ps.setString(1, qualification.getCourseName());
                ps.setString(2, qualification.getCourseDesc());
                ps.setString(3, qualification.getYear());
                ps.setInt(4, qualification.getCourseId());
                count = ps.executeUpdate();
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }
        return count;
    }
}
