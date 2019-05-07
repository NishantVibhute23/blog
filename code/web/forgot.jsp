<%--
    Document   : forgot
    Created on : May 7, 2019, 10:21:50 AM
    Author     : guruprasad.tiwari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Page</title>
    </head>
    <body>
        <s:form action="forgotPasswordSendEmail">
            <s:if test="type.equals('sent')">
                <s:property value="mssg"/>
            </s:if>
            <s:else>
                <div class="label">Enter Registered Mail</div>
                <div class="input-field"><s:textfield name="userBean.useremailId" required="required"/></div>
            </div>
            <div class="login-button">
                <a href="javascript:document.forms[0].submit();"><div class="button-login">OK </div></a>

            </div>
        </div>
    </s:else>

</div>
</div>

</s:form>
</body>
</html>
