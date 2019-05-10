/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.redirect;

import com.madhurisadgir.bean.MessageBean;
import com.madhurisadgir.bean.UserBean;
import com.madhurisadgir.dao.LoginDao;
import com.madhurisadgir.util.CommonUtil;
import com.madhurisadgir.util.EmailUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.io.IOException;
import static java.lang.Boolean.TRUE;
import java.text.MessageFormat;
import java.util.Map;
import java.util.MissingResourceException;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.LineIterator;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author nishant.vibhute
 */
public class Login extends ActionSupport implements SessionAware, ServletRequestAware {

    private HttpServletRequest request;
    UserBean userBean = new UserBean();
    MessageBean messageBean = new MessageBean();
    private SessionMap<String, Object> sessionMap;
    private HttpSession session = null;
    private String type = "";
    private String changepassLink;
    String backurl;
    LoginDao loginDao = new LoginDao();

    public Login() {
    }

    public String execute() {

        return ActionSupport.SUCCESS;
    }

    public String signUp() {
        return ActionSupport.SUCCESS;
    }

    public String createUser() {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        backurl = request.getHeader("referer");

        int id = loginDao.createUser(userBean);
        String returntype = ActionSupport.ERROR;
        if (id != 0) {
            messageBean.setSuccessMessage(CommonUtil.getResourceProperty("message.user.create.success"));
            returntype = ActionSupport.SUCCESS;
        } else {
            messageBean.setSuccessMessage(CommonUtil.getResourceProperty("message.user.create.failure"));
            returntype = ActionSupport.ERROR;
        }
        return returntype;
    }

    public String loginUser() {

        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        backurl = request.getHeader("referer");

        UserBean userBean1 = loginDao.loginUser(userBean);
        String returntype = ActionSupport.ERROR;
        if (userBean1.getUserName() != null) {
            sessionMap.put("login", TRUE);
            sessionMap.put("userBean", userBean1);
            returntype = ActionSupport.SUCCESS;
        } else {
            messageBean.setSuccessMessage(CommonUtil.getResourceProperty("message.user.login.failure"));
            returntype = ActionSupport.ERROR;
        }
        return returntype;
    }

    public String forgotUserPass() {
        String returntype = ActionSupport.SUCCESS;
        return returntype;
    }

    public String forgotPasswordSendEmail() {

        String returntype = ActionSupport.ERROR;
        if (userBean.getUseremailId() == null || userBean.getUseremailId().equals("")) {
            messageBean.setSuccessMessage(CommonUtil.getResourceProperty("msg.failure.emailId"));
            returntype = "errorsEmail";

        } else {
            String regex = "^[a-z0-9]([a-z0-9_\\-\\.]*)@[a-z0-9]([a-z0-9_\\-\\.]*)(\\.[a-z]{2,3}(\\.[a-z]{2}){0,2})$";
            if (!userBean.getUseremailId().matches(regex)) {
                messageBean.setSuccessMessage(CommonUtil.getResourceProperty("msg.failure.emailId"));
                returntype = "errorsEmail";
            } else {
                UserBean user = loginDao.isUserExist(userBean.getUseremailId());

                if (user != null) {
                    String name = user.getUseremailId();
                    try {
                        String link = MessageFormat.format(CommonUtil.getResourceProperty("changepassword.link"), CommonUtil.getResourceProperty("server.address"), user.getUserId());
//            String body = MessageFormat.format(CommonUtil.getResourceProperty("email.body"), link);
                        String subject = CommonUtil.getResourceProperty("email.subject");
                        ServletContext context = request.getServletContext();
                        String path = context.getRealPath("/");

                        File file = new File(path + CommonUtil.getResourceProperty("template.path"));
                        String line = "";
                        LineIterator it;

                        it = FileUtils.lineIterator(file, "UTF-8");
                        while (it.hasNext()) {
                            line = line + it.nextLine();

                            // do something with line, here just sysout...
                        }
                        System.out.println(line);
                        line = line.replaceAll("%%PATH", CommonUtil.getResourceProperty("server.address"));
                        line = line.replaceAll("%%NAME", name);
                        line = line.replaceAll("%%LINK", link);
                        String body = line;
                        EmailUtil email = new EmailUtil();
                        email.send(user.getUseremailId(), subject, body);
                        String msg = "success";

                        if (msg.equals("success")) {
                            type = "sent";
                            changepassLink = link;
                            messageBean.setSuccessMessage(CommonUtil.getResourceProperty("msg.success"));
                            returntype = "success";
                        } else {
                            messageBean.setSuccessMessage(CommonUtil.getResourceProperty("msg.failure"));
                            returntype = "errorsEmail";
                        }
                    } catch (IOException | MissingResourceException ex) {
                        ex.printStackTrace();
                    }
                } else {
                    messageBean.setSuccessMessage(CommonUtil.getResourceProperty("msg.failure.user"));
                    returntype = "errorsEmail";

                }
            }
        }
        return returntype;

    }
//    private String id;

//    public String redirect() {
//        LoginDao loginDao = new LoginDao();
//        boolean isExist = loginDao.isUserExist(id);
//
//        if (isExist) {
//            sessionMap.put("id", id);
//            forwardPath = "displayChangePassword";
//        } else {
//            forwardPath = "success";
//            mssg = CommonUtil.getResourceProperty("msg.failure.link");
//        }
//        return forwardPath;
//    }
    public String logoutUser() {

        String returntype = ActionSupport.ERROR;

        if (sessionMap != null) {
            UserBean userBean = (UserBean) sessionMap.get("userBean");
            loginDao.logOutUser(userBean);
            sessionMap.invalidate();
            messageBean.setSuccessMessage(CommonUtil.getResourceProperty("message.user.logout.success"));
            returntype = ActionSupport.SUCCESS;
        }
        return returntype;
    }

    public UserBean getUserBean() {
        return userBean;
    }

    public void setUserBean(UserBean userBean) {
        this.userBean = userBean;
    }

    public MessageBean getMessageBean() {
        return messageBean;
    }

    public void setMessageBean(MessageBean messageBean) {
        this.messageBean = messageBean;
    }

    public SessionMap<String, Object> getSessionMap() {
        return sessionMap;
    }

    public void setSessionMap(SessionMap<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getChangepassLink() {
        return changepassLink;
    }

    public void setChangepassLink(String changepassLink) {
        this.changepassLink = changepassLink;
    }

//    public String getId() {
//        return id;
//    }
//
//    public void setId(String id) {
//        this.id = id;
//    }
    @Override
    public void setSession(Map<String, Object> map) {
        sessionMap = (SessionMap) map;
    }

    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        this.request = request;
    }

    public HttpServletRequest getServletRequest() {
        return this.request;
    }

    public String getBackurl() {
        return backurl;
    }

    public void setBackurl(String backurl) {
        this.backurl = backurl;
    }

}
