/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.dao;

import com.madhurisadgir.bean.PaperBean;
import com.madhurisadgir.bean.QuestionBean;
import com.madhurisadgir.bean.QuestionUploadBean;
import com.madhurisadgir.enums.NetSetType;
import com.madhurisadgir.enums.TestType;
import com.madhurisadgir.util.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 *
 * @author nishant.vibhute
 */
public class NetSetTestDao {

    DBUtil db = new DBUtil();
    Connection con;

    public List<QuestionBean> getQuestions(int paperId) {
        List<QuestionBean> questionBeanList = new ArrayList<>();

        try {
            con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("call getQuestionsByPaperId(?)");

            ps.setInt(1, paperId);

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

    public void addPaper(QuestionUploadBean qub, List<QuestionBean> questionList) {
        try {
            con = db.getConnection();
            int paperId = 0;
            PreparedStatement ps = con.prepareStatement("call addPaper(?,?,?,?)");
            ps.setInt(1, NetSetType.getEnumByName(qub.getType()));
            ps.setInt(2, qub.getPaperType());
            ps.setInt(3, TestType.getEnumByName(qub.getTestType()));
            ps.setString(4, qub.getTestName());

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                paperId = rs.getInt(1);
            }

            for (Iterator<QuestionBean> iterator = questionList.iterator(); iterator.hasNext();) {
                QuestionBean qb = iterator.next();

                PreparedStatement ps1 = con.prepareStatement("call insertQuestion(?,?,?,?,?,?,?)");
                ps1.setString(1, qb.getQuestion());
                ps1.setString(2, qb.getOptionA());
                ps1.setString(3, qb.getOptionB());
                ps1.setString(4, qb.getOptionC());
                ps1.setString(5, qb.getOptionD());
                ps1.setString(6, qb.getAnswer());
                ps1.setInt(7, paperId);
                ps1.executeQuery();

            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }

    }

    public List<PaperBean> getListOfPapers(int netSetType, int paperType, int test_type, int userId) {
        List<PaperBean> paperBeanList = new ArrayList<>();

        try {
            con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("call getUserPaperScore(?,?,?,?)");
            ps.setInt(1, netSetType);
            ps.setInt(2, paperType);
            ps.setInt(3, test_type);
            ps.setInt(4, userId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                PaperBean q = new PaperBean();
                q.setId(rs.getInt(1));
                q.setName(rs.getString(2));
                q.setIsDeleted(rs.getInt(3) == 0 ? false : true);
                q.setScore(rs.getString(4) == null ? "" : rs.getString(4));
                q.setTotalQuestion(rs.getInt(5));

                paperBeanList.add(q);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }
        return paperBeanList;
    }

    public void insertOrUpdateUserScore(int userId, int paperId, String score) {

        try {
            con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("call insertOrUpdateUserScore(?,?,?)");
            ps.setInt(1, userId);
            ps.setInt(2, paperId);
            ps.setString(3, score);

            ps.executeQuery();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }

    }

}
