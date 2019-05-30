/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.dao;

import com.madhurisadgir.bean.AreaBean;
import com.madhurisadgir.bean.ExpertQestionBean;
import com.madhurisadgir.bean.ExpertSubmitAnswer;
import com.madhurisadgir.bean.ExpertiesBean;
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
public class AskExpertDao {

    DBUtil db = new DBUtil();
    Connection con;

    public int addExpertArea(AreaBean areaBean) {
        int id = 0;
        try {
            con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("call addNewExpertArea(?,?)");
            ps.setString(1, areaBean.getName());
            ps.setString(2, areaBean.getDesc());

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                id = rs.getInt(1);
            }

            if (id != 0) {
                for (Iterator iterator = areaBean.getExpertiesBeans().iterator(); iterator.hasNext();) {
                    ExpertiesBean exp = (ExpertiesBean) iterator.next();

                    if (!exp.getName().trim().equals("") && !exp.getEmailId().trim().equals("")) {
                        PreparedStatement ps1 = con.prepareStatement("call addNewExpert(?,?,?)");
                        ps1.setString(1, exp.getName());
                        ps1.setString(2, exp.getEmailId());
                        ps1.setInt(3, id);
                        ps1.executeQuery();
                    }
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }
        return id;
    }

    public List<AreaBean> addExpertArea() {
        List<AreaBean> areaBeans = new ArrayList<>();
        try {
            con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("call getExpertAreas()");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                AreaBean ab = new AreaBean();
                ab.setId(rs.getInt(1));
                ab.setName(rs.getString(2));
                ab.setDesc(rs.getString(3));
                ab.setColor1(rs.getString(4));
                ab.setColor2(rs.getString(5));
                areaBeans.add(ab);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }
        return areaBeans;
    }

    public AreaBean getAreaDetails(int areaId) {
        AreaBean areaBean = new AreaBean();
        try {
            con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("call getAreaDetail(?)");
            ps.setInt(1, areaId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                areaBean.setId(rs.getInt(1));
                areaBean.setName(rs.getString(2));
                areaBean.setDesc(rs.getString(3));
                areaBean.setIsDeleted(rs.getInt(4) == 0 ? false : true);
            }

            if (areaBean.getId() != 0) {
                List<ExpertiesBean> expertiesBeans = new ArrayList<>();
                PreparedStatement ps1 = con.prepareStatement("call getExpertiesOfArea(?)");
                ps1.setInt(1, areaId);
                ResultSet rs1 = ps1.executeQuery();

                while (rs1.next()) {
                    ExpertiesBean expertiesBean = new ExpertiesBean();
                    expertiesBean.setId(rs1.getInt(1));
                    expertiesBean.setName(rs1.getString(2));
                    expertiesBean.setEmailId(rs1.getString(3));
                    expertiesBeans.add(expertiesBean);
                }
                areaBean.setExpertiesBeans(expertiesBeans);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }
        return areaBean;
    }

    public void deleteArea(int areaId) {

        try {
            con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("call deleteArea(?)");
            ps.setInt(1, areaId);
            ps.executeQuery();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }

    }

    public void editArea(AreaBean areaBean) {

        try {
            con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("call editArea(?,?,?)");
            ps.setInt(1, areaBean.getId());
            ps.setString(2, areaBean.getName());
            ps.setString(3, areaBean.getDesc());
            ps.executeQuery();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }

    }

    public int addExpertQuestion(ExpertQestionBean eqb, int userId) {
        int id = 0;
        try {
            con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("call insertExpertQusetion(?,?,?)");
            ps.setString(1, eqb.getQuestion());
            ps.setInt(2, userId);
            ps.setInt(3, eqb.getAreaId());
            ResultSet rs1 = ps.executeQuery();

            while (rs1.next()) {
                id = rs1.getInt(1);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }
        return id;

    }

    public List<ExpertQestionBean> getUserExpertQuestion(int userId, int areaId) {
        List<ExpertQestionBean> expertQestionBeans = new ArrayList<>();
        int qid = 0;
        try {
            con = db.getConnection();
            PreparedStatement ps = con.prepareStatement("call getUserExpertQuestions(?,?)");
            ps.setInt(1, userId);
            ps.setInt(2, areaId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                ExpertQestionBean expertQestionBean = new ExpertQestionBean();
                qid = rs.getInt(1);
                expertQestionBean.setQid(rs.getInt(1));
                expertQestionBean.setQuestion(rs.getString(2));

                List<String> answerBeans = new ArrayList<>();
                PreparedStatement ps1 = con.prepareStatement("call getExpertQestionAnswer(?)");
                ps1.setInt(1, qid);
                ResultSet rs1 = ps1.executeQuery();

                while (rs1.next()) {

                    answerBeans.add(rs1.getString(1));
                }
                expertQestionBean.setAnswers(answerBeans);
                expertQestionBeans.add(expertQestionBean);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }
        return expertQestionBeans;

    }

    public List<ExpertiesBean> getExpertiesGuidOfQuestion(int questionId) {
        List<ExpertiesBean> expertiesBeans = new ArrayList<>();
        try {
            con = db.getConnection();

            PreparedStatement ps1 = con.prepareStatement("call getExpertiesGuidOfQuestion(?)");
            ps1.setInt(1, questionId);
            ResultSet rs1 = ps1.executeQuery();

            while (rs1.next()) {
                ExpertiesBean expertiesBean = new ExpertiesBean();

                expertiesBean.setName(rs1.getString(1));
                expertiesBean.setEmailId(rs1.getString(2));
                expertiesBean.setGuid(rs1.getString(3));
                expertiesBeans.add(expertiesBean);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }
        return expertiesBeans;
    }

    public ExpertSubmitAnswer getQuestionBasedOnGuid(String guid) {
        ExpertSubmitAnswer expertSubmitAnswer = new ExpertSubmitAnswer();
        try {
            con = db.getConnection();

            PreparedStatement ps1 = con.prepareStatement("call getQuestionBasedOnGuid(?)");
            ps1.setString(1, guid);
            ResultSet rs1 = ps1.executeQuery();

            while (rs1.next()) {
                expertSubmitAnswer.setId(rs1.getInt(1));
                expertSubmitAnswer.setQuestion(rs1.getString(2));
                expertSubmitAnswer.setGuid(guid);

            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }
        return expertSubmitAnswer;
    }

    public void submitExpertAnswer(ExpertSubmitAnswer expertSubmitAnswer) {

        try {
            con = db.getConnection();

            PreparedStatement ps1 = con.prepareStatement("call submitExpertAnswer(?,?)");
            ps1.setInt(1, expertSubmitAnswer.getId());
            ps1.setString(2, expertSubmitAnswer.getAnswer());
            ps1.executeQuery();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.closeConnection(con);
        }

    }

}
