/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.util;

import com.madhurisadgir.bean.ExpertQestionBean;
import com.madhurisadgir.bean.ExpertiesBean;
import com.madhurisadgir.dao.AskExpertDao;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.MissingResourceException;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.LineIterator;

/**
 *
 * @author nishant.vibhute
 */
public class ExpertEmailUtil {

    public static void createMail(ExpertQestionBean expertQestionBean, int qid) {
        try {
            AskExpertDao askExpertDao = new AskExpertDao();
            List<ExpertiesBean> expertiesBeans = askExpertDao.getExpertiesGuidOfQuestion(qid);

            for (ExpertiesBean expertiesBean : expertiesBeans) {
                String link = CommonUtil.getResourceProperty("server.address") + "/reply?guid=" + expertiesBean.getGuid();
//            String body = MessageFormat.format(CommonUtil.getResourceProperty("email.body"), link);
                String subject = CommonUtil.getResourceProperty("expertQuestionMail.subject");

                File file = new File(CommonUtil.templatePath + "expertquestionemail.html");
                String line = "";
                LineIterator it;

                it = FileUtils.lineIterator(file, "UTF-8");
                while (it.hasNext()) {
                    line = line + it.nextLine();

                    // do something with line, here just sysout...
                }
                line = line.replaceAll("%%NAME%%", expertiesBean.getName());
                line = line.replaceAll("%%LINK%%", link);
                line = line.replaceAll("%%QUESTION%%", expertQestionBean.getQuestion());
                String body = line;
                EmailUtil email = new EmailUtil();
                email.send(expertiesBean.getEmailId(), subject, body);

            }

        } catch (IOException | MissingResourceException ex) {
            ex.printStackTrace();
        }
    }

}
