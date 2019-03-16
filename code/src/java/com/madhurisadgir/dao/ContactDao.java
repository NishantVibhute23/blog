/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.dao;

import com.madhurisadgir.bean.UserQueryBean;
import com.madhurisadgir.util.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author nishant.vibhute
 */
public class ContactDao {

    DBUtil db = new DBUtil();
    Connection con;

    public int insertUserQuery(UserQueryBean userQueryBean) {
        int id = 0;
        try {
            con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("call insert_queries(?,?,?,?)");
            ps.setString(1, userQueryBean.getUserName());
            ps.setString(2, userQueryBean.getUserEmail());
            ps.setString(3, userQueryBean.getMessageSubject());
            ps.setString(4, userQueryBean.getMessageText());

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

}
