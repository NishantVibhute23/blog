/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhurisadgir.redirect;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.Result;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author nishant.vibhute
 */
public class CustomImageBytesResult implements Result {

    public void execute(ActionInvocation invocation) throws Exception {

        ImageAction action = (ImageAction) invocation.getAction();
        HttpServletResponse response = ServletActionContext.getResponse();

        response.setContentType(action.getCustomContentType());
        response.getOutputStream().write(action.getCustomImageInBytes());
        response.getOutputStream().flush();

    }

}
