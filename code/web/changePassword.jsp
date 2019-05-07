<%--
    Document   : changePassword
    Created on : May 7, 2019, 11:22:39 AM
    Author     : guruprasad.tiwari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
    </head>
    <body>
    <s:form action="changePassword" onsubmit="return validatePassword();">


        <span class="red-text" id="error">
            <p id="error"></p> <s:property value="errorMssg"/>
        </span>
        <div><h2>Change Password</h2></div>
        <div class="">
            <input type="hidden" name="id" value="<s:property value="#session.user.id"/>" />
            <div class="label">Create New Password</div>
            <div class="input-field">
                <s:password id="password" name="password" maxlength="15" size="30" required="required"/>
            </div>
        </div>
        <div class="">
            <div class="label">Confirm Password</div>
            <div class="input-field">
                <s:password id="confirmPassword" name="confirmPassword" maxlength="15" size="30" required="required" onkeyup="return validatePassword(this);"/>
            </div>
        </div>
        <div class="login-button">
            <a href="javascript:document.forms[0].submit();"><div class="button-login">OK </div></a>
            <!--<div class="button-login">OK </div>-->

        </div>
    </div>
</div>
</div>




</s:form>
</body>
</html>
