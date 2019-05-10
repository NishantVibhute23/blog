/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.dao;

import com.madhurisadgir.bean.AdminChat;
import com.madhurisadgir.bean.ChatBean;
import com.madhurisadgir.bean.UserBean;
import com.madhurisadgir.enums.UserType;
import com.madhurisadgir.util.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author guruprasad.tiwari
 */
public class ChatDao {

    DBUtil db = new DBUtil();
    Connection con;

    public List<ChatBean> getUserChat(UserBean user) {
        List<ChatBean> chatList = new ArrayList<>();
        try {
            con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("call getUserChat(?)");
            ps.setInt(1, user.getUserId());

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                ChatBean chatBean = new ChatBean();
                chatBean.setChatId(rs.getInt(1));

                chatList.add(chatBean);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }
        return chatList;
    }

    public List<AdminChat> getMessagesForAdmin() {
        List<AdminChat> mssgList = new ArrayList<>();

        try {
            con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("call getAdminMessage(?)");
            ps.setInt(1, UserType.ADMIN.getId());

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                AdminChat adminChat = new AdminChat();
                adminChat.setChatId(rs.getInt(1));
                adminChat.setUserId(rs.getInt(2));
                adminChat.setUserName(rs.getString(3));
                adminChat.setIsLoggedIn(rs.getInt(4) == 1 ? true : false);
                adminChat.setLogoutTIme(rs.getString(5));
                mssgList.add(adminChat);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }
        return mssgList;

    }
}
