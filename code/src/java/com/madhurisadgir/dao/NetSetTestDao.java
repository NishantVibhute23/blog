/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.dao;

import com.madhurisadgir.bean.QuestionBean;
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
public class NetSetTestDao {

    DBUtil db = new DBUtil();
    Connection con;

    public List<QuestionBean> getQuestions(int netsetId, int paperId, int limit) {
        List<QuestionBean> questionBeanList = new ArrayList<>();

        try {
            con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("call getQuestionsByPaperId(?,?,?)");
            ps.setInt(1, netsetId);
            ps.setInt(2, paperId);
            ps.setInt(3, limit);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                QuestionBean q = new QuestionBean();
                q.setId(rs.getInt(1));
                q.setQuestion(rs.getString(2));
                q.setOptionA(rs.getString(3));
                q.setOptionB(rs.getString(4));
                q.setOptionC(rs.getString(5));
                q.setOptionD(rs.getString(6));
//                q.setAnswer(rs.getString(7));
                questionBeanList.add(q);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }
        return questionBeanList;
    }

    public QuestionBean getQuestionsAnswerById(int questionid) {
        QuestionBean questionBean = new QuestionBean();

        try {
            con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("call getQuestionsAnswer(?)");
            ps.setInt(1, questionid);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                questionBean.setId(rs.getInt(1));
                questionBean.setQuestion(rs.getString(2));
                questionBean.setOptionA(rs.getString(3));
                questionBean.setOptionB(rs.getString(4));
                questionBean.setOptionC(rs.getString(5));
                questionBean.setOptionD(rs.getString(6));
                questionBean.setAnswer(rs.getString(7));

            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }
        return questionBean;
    }

}
