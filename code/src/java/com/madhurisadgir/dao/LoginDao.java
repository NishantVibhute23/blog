/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.dao;

import com.madhurisadgir.bean.UserBean;
import com.madhurisadgir.enums.UserType;
import com.madhurisadgir.util.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author nishant.vibhute
 */
public class LoginDao {

    DBUtil db = new DBUtil();
    Connection con;

    public int createUser(UserBean user) {
        int id = 0;
        try {
            con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("call createUser(?,?,?,?)");
            ps.setString(1, user.getUserName());
            ps.setString(2, user.getUseremailId());
            ps.setString(3, user.getUserpassword());
            ps.setInt(4, UserType.USER.getId());

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                id = rs.getInt(1);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }
        return id;
    }

    public UserBean loginUser(UserBean user) {
        UserBean userBean = new UserBean();
        try {
            con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("call loginUser(?,?,?)");
            ps.setString(1, user.getUseremailId());
            ps.setString(2, user.getUserpassword());
            ps.setInt(3, UserType.USER.getId());

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                userBean.setUserId(rs.getInt(1));
                userBean.setUserName(rs.getString(2));
                userBean.setUseremailId(rs.getString(3));

            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }
        return userBean;
    }

    public UserBean isUserExist(String emailId) {
        UserBean userBean = new UserBean();
        try {
            con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("call userExist(?,?)");
            ps.setString(1, emailId);
            ps.setInt(2, UserType.USER.getId());

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                userBean.setUserId(rs.getInt(1));
                userBean.setUserName(rs.getString(2));
                userBean.setUseremailId(rs.getString(3));

            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }
        return userBean;
    }

}
