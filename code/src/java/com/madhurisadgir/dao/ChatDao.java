/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.dao;

import com.madhurisadgir.bean.AdminChat;
import com.madhurisadgir.bean.ChatBean;
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

    public List<ChatBean> getUserChat(int userId) {
        List<ChatBean> chatList = new ArrayList<>();
        try {
            con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("call getUserChat(?)");
            ps.setInt(1, userId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                ChatBean chatBean = new ChatBean();
                chatBean.setChatId(rs.getInt(1));
                chatBean.setFromUserId(rs.getInt(2));
                chatBean.setByUserId(rs.getInt(3));
                chatBean.setToUserName(rs.getString(4));
                chatBean.setMssg(rs.getString(5));
                chatBean.setMsgTime(rs.getString(6));
                chatBean.setMsgDate(rs.getString(7));

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
            PreparedStatement ps = con.prepareStatement("call getRecentChatNames()");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                AdminChat adminChat = new AdminChat();

                adminChat.setUserId(rs.getInt(1));
                adminChat.setUserName(rs.getString(2));
                adminChat.setIsLoggedIn(rs.getInt(3) == 1 ? true : false);
                adminChat.setLogoutTIme(rs.getString(4));
                adminChat.setLastChatDate(rs.getString(5));
                adminChat.setIsRead(rs.getInt(7));
                mssgList.add(adminChat);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }
        return mssgList;

    }

    public int sendMessage(int fromUserId, int msgByUserId, String msg) {
        int count = 0;
        try {
            con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("call sendMessage(?,?,?)");
            ps.setInt(1, fromUserId);
            ps.setInt(2, msgByUserId);
            ps.setString(3, msg);

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
