/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.util;

import java.util.Date;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author nishant.vibhute
 */
public class EmailUtil {

    private String email;
    private final String from = "";
    private final String password = "";
    private String to;
    private String subject;

    private static Properties props = new Properties();

    static {
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "mail.gmail.com");
        props.put("mail.smtp.port", "25");
        props.put("mail.smtp.ssl.trust", "mail.gmail.com");

    }

    public String send(String to1, String sub, String body) {
        try {

            to = to1;
            subject = sub;

            Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
                @Override
                protected PasswordAuthentication
                        getPasswordAuthentication() {
                    return new PasswordAuthentication(from, password);
                }
            });

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            message.setSentDate(new Date());
            message.setSubject(subject);
            message.setContent(body, "text/html");
            Transport.send(message);

            return "success";
        } catch (MessagingException e) {
            return "error";
        }

    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
