<%--
    Document   : header.jsp
    Created on : Mar 13, 2019, 12:42:17 PM
    Author     : nishant.vibhute
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<script src="visitors/js/vendor/jquery-2.2.4.min.js"></script>
<script src="visitors/js/main_login.js"></script>
<link rel="icon" type="image/png" href="visitors/img/icons/favicon.ico"/>
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="visitors/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="visitors/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="visitors/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="visitors/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="visitors/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="visitors/css/util.css">
<link rel="stylesheet" type="text/css" href="visitors/css/main_login.css">

<style>
    body {font-family: Arial, Helvetica, sans-serif;}
    * {box-sizing: border-box;}

    .open-img{
        color: white;
        padding: 16px 20px;
        border: none;
        cursor: pointer;
        /*opacity: 0.8;*/
        position: fixed;
        bottom: 15px;
        right: 15px;
        width: 130px;
    }

    /* The popup chat - hidden by default */
    .chat-popup {
        display: none;
        position: fixed;
        bottom: 20px;
        right: 15px;

        z-index: 9;
        max-width: 400px;
        width: 400px;
        border-top-right-radius: 10px;
        border-top-left-radius: 10px;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    }

    /* Add styles to the form container */
    .form-container {
        max-width: 400px;
        padding: 0px;
        background-color: white;
        border-top-right-radius: 10px;
        border-top-left-radius: 10px;
    }

    /* Full-width textarea */
    .form-container textarea {
        width: 100%;
        padding: 15px;
        margin: 5px 0 22px 0;
        border: none;
        background: #f1f1f1;
        resize: none;
        min-height: 200px;

    }

    .win-head{
        width: 100%;

        border: none;
        background: rgb(1,81,102);
        resize: none;
        min-height:50px;
        border-top-right-radius: 10px;
        border-top-left-radius: 10px;
    }

    .win-area{
        width: 100%;

        border: none;
        background: white;
        resize: none;
        min-height: 350px;
    }

    .win-footer{
        width: 100%;

        border: none;
        background: #f1f1f1;
        resize: none;
        min-height: 50px;
        background: rgb(1,81,102);
    }

    /* When the textarea gets focus, do something */
    .form-container textarea:focus {
        background-color: #ddd;
        outline: none;
    }

    /* Set a style for the submit/send button */
    .form-container .btn {
        background-color: #4CAF50;
        color: white;
        padding: 16px 20px;
        border: none;
        cursor: pointer;
        width: 100%;
        margin-bottom:10px;
        opacity: 0.8;
    }

    /* Add a red background color to the cancel button */
    .form-container .cancel {
        background-color: red;
    }

    /* Add some hover effects to buttons */
    .form-container .btn:hover, .open-button:hover {
        opacity: 1;
    }

    .inbox_chat {width: 100%; height: 350px; overflow-y: scroll;padding-left: 10px;padding-top: 5px}
    
    .received_msg {
                display: inline-block;
                padding: 0 0 0 10px;
                vertical-align: top;
                width: 92%;
            }
            .received_withd_msg p {
                background: #ebebeb none repeat scroll 0 0;
                border-radius: 3px;
                color: #646464;
                font-size: 14px;
                margin: 0;
                padding: 5px 10px 5px 12px;
                width: 100%;
            }
            .time_date {
                color: #747474;
                display: block;
                font-size: 12px;
                margin: 8px 0 0;
            }

            .time_date_right {
                color: #747474;
                display: block;
                font-size: 12px;
                margin: 8px 0 0;
                text-align: right
            }
            .received_withd_msg { width: 57%;}
            .mesgs {
                float: left;
                padding: 0px 15px 0 25px;
                width: 70%;
                background-color: white
            }

            .sent_msg p {
                background: #05728f none repeat scroll 0 0;
                border-radius: 3px;
                font-size: 14px;
                margin: 0; color:#fff;
                padding: 5px 10px 5px 12px;
                width:100%;
            }
            .outgoing_msg{ overflow:hidden; margin:26px 0 26px;}
            .sent_msg {
                float: right;
                width: 46%;
            }
</style>

<script>

var webSocket = new WebSocket("ws://192.168.2.80:8084/madhurisadgir/ws/websocket");
        var echoText = document.getElementById("echoText");
        echoText.value = "";
        var message = document.getElementById("message");
        webSocket.onopen = function(message){ wsOpen(message);};
        webSocket.onmessage = function(message){ wsGetMessage(message);};
        webSocket.onclose = function(message){ wsClose(message);};
        webSocket.onerror = function(message){ wsError(message);};
        function wsOpen(message){
            echoText.value += "Connected ... \n";
        }
        function wsSendMessage(){
            webSocket.send(message.value);
            echoText.value += "Message sended to the server : " + message.value + "\n";
            message.value = "";
        }
        function wsCloseConnection(){
            webSocket.close();
        }
        function wsGetMessage(message){
            echoText.value += "Message received from to the server : " + message.data + "\n";
        }
        function wsClose(message){
            echoText.value += "Disconnect ... \n";
        }
 
        function wsError(message){
            echoText.value += "Error ... \n";
        }



    function showSignUp() {

        document.getElementById("loginDiv").style.display = "none";
        document.getElementById("signUpDiv").style.display = "block";
    }

    function showLogin() {

        document.getElementById("loginDiv").style.display = "block";
        document.getElementById("signUpDiv").style.display = "none";

    }

    function openForm() {
        document.getElementById("myForm").style.display = "block";
    }

    function closeForm() {
        document.getElementById("myForm").style.display = "none";
    }
</script>




<header id="header">
    <div class="container main-menu">
        <div class="row align-items-center justify-content-between d-flex">
            <div id="logo">
                <a href="index.html"><img src="visitors/img/logoMadhuri.png" alt="" title="" /></a>
            </div>
            <nav id="nav-menu-container">
                <ul class="nav-menu">
                    <li><a href="home">Home</a></li>
                    <li><a href="about">About</a></li>
                    <li><a href="services">Services</a></li>
                    <li><a href="portfolio">Portfolio</a></li>
                    <li><a href="<s:url action="subscription"/>">Pricing</a></li>
                    <!--			          <li class="menu-has-children"><a href="">Blog</a>
                                                        <ul>
                                                          <li><a href="blog-home.html">Blog Home</a></li>
                                                          <li><a href="blog-single.html">Blog Single</a></li>
                                                        </ul>
                                                      </li>
                                                      <li class="menu-has-children"><a href="">Pages</a>
                                                        <ul>
                                                      <li><a href="elements.html">Elements</a></li>
                                                              <li class="menu-has-children"><a href="">Level 2 </a>
                                                                <ul>
                                                                  <li><a href="#">Item One</a></li>
                                                                  <li><a href="#">Item Two</a></li>
                                                                </ul>
                                                              </li>
                                                        </ul>
                                                      </li>					          					          		          -->
                    <li><a href="contactme">Contact</a></li>

                    <s:if test="#session.login">
                        <s:if test="#session.userBean.userType == 1">
                            <li><a href="chat">Chat</a></li>
                            </s:if>
                        </s:if>

                    <s:if test="#session.login">
                        <li class="menu-has-children"><a href=""><s:property value="#session.userBean.userName"/></a>
                            <ul>
                                <li><a href="">My Profile</a></li>
                                <li><hr/></li>
                                <li><a href="<s:url action="logoutUser"/>">Logout</a></li>
                            </ul>
                        </li>

                    </s:if>
                    <s:else>
                        <li>
                            <!--<a href="login">Login</a>-->

                            <a href="#" data-id="1" class="open-uploadDialog-textArea" data-toggle="modal" data-target="#myModal">Login</a>
                        </li>
                    </s:else>

                </ul>
            </nav><!-- #nav-menu-container -->
        </div>
    </div>
</header><!-- #header -->


<div class="modal" id="myModal">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal body -->
            <div class="modal-body" style="padding: 0px !important">
                <div class="limiter">
                    <div class="container-login100">
                        <div class="wrap-login100">

                            <div id="loginDiv">
                                <form class="login100-form validate-form" action="loginUser" method="post">
                                    <s:if test="messageBean.errorMessage != null">
                                        <div class="alert alert-danger">
                                            <s:property value="messageBean.errorMessage"/>
                                        </div>
                                    </s:if>
                                    <span class="login100-form-title">
                                        Login
                                    </span>

                                    <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                                        <input class="input100" type="text" name="userBean.useremailId" placeholder="Email">
                                        <span class="focus-input100"></span>
                                        <span class="symbol-input100">
                                            <i class="fa fa-envelope" aria-hidden="true"></i>
                                        </span>
                                    </div>

                                    <div class="wrap-input100 validate-input" data-validate = "Password is required">
                                        <input class="input100" type="password" name="userBean.userpassword" placeholder="Password">
                                        <span class="focus-input100"></span>
                                        <span class="symbol-input100">
                                            <i class="fa fa-lock" aria-hidden="true"></i>
                                        </span>
                                    </div>

                                    <div class="container-login100-form-btn">
                                        <button class="login100-form-btn">
                                            Login
                                        </button>
                                    </div>

                                    <div class="text-center p-t-12">
                                        <span class="txt1">
                                            Forgot
                                        </span>
                                        <a class="txt2" href="<s:url action="forgotUserPass"/>">
                                            Username / Password?
                                        </a>
                                    </div>

                                    <div class="text-center p-t-136">
                                        <a id="signUpLink" onclick="showSignUp()" class="txt2" href="#" >
                                            Create your Account

                                        </a>
                                    </div>
                                </form>
                            </div>

                            <div id="signUpDiv" style="display: none">
                                <form class="login100-form validate-form" action="createUser" method="post">
                                    <s:if test="messageBean.errorMessage != null">
                                        <div class="alert alert-danger">
                                            <s:property value="messageBean.errorMessage"/>
                                        </div>
                                    </s:if>
                                    <span class="login100-form-title">
                                        Sign Up
                                    </span>


                                    <div class="wrap-input100 validate-input" data-validate = "Name is required">
                                        <input class="input100" type="text" name="userBean.userName" placeholder="Your Name">
                                        <span class="focus-input100"></span>
                                        <span class="symbol-input100">
                                            <i class="fa fa-user" aria-hidden="true"></i>
                                        </span>
                                    </div>

                                    <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                                        <input class="input100" type="text" name="userBean.useremailId" placeholder="Your Email">
                                        <span class="focus-input100"></span>
                                        <span class="symbol-input100">
                                            <i class="fa fa-envelope" aria-hidden="true"></i>
                                        </span>
                                    </div>

                                    <div class="wrap-input100 validate-input" data-validate = "Password is required">
                                        <input class="input100" type="password" name="userBean.userpassword" placeholder="Password">
                                        <span class="focus-input100"></span>
                                        <span class="symbol-input100">
                                            <i class="fa fa-lock" aria-hidden="true"></i>
                                        </span>
                                    </div>

                                    <div class="wrap-input100 validate-input" data-validate = "Repeat Password is required">
                                        <input class="input100" type="password" name="userBean.userRepeatPassword" placeholder="Repeat Password">
                                        <span class="focus-input100"></span>
                                        <span class="symbol-input100">
                                            <i class="fa fa-lock" aria-hidden="true"></i>
                                        </span>
                                    </div>

                                    <div class="container-login100-form-btn">
                                        <button class="login100-form-btn">
                                            Sign UP
                                        </button>
                                    </div>



                                    <div class="text-center p-t-52">
                                        Already registered. 
                                        <a id="loginLink" onclick="showLogin()" class="txt2" href="#">
                                            Login to continue

                                        </a>
                                    </div>
                                </form>
                            </div>               


                        </div>
                    </div>
                </div>

            </div>

            <!-- Modal footer -->
            <!--            <div class="modal-footer" style="justify-content: center !important">
            <s:submit  cssClass="btn btn-primary" value="Upload" align="center" />
            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>-->

        </div>
    </div>
</div>



<img class="open-img" onclick="openForm()" src="visitors/img/chat-bubble.png"/>

<div class="chat-popup" id="myForm">
    <div class="form-container">
        <div class="win-head">
            <span style="float:left;margin-left:  15px;margin-top: 17px ;font: 16px arial, sans-serif;color: white;font-weight: bold ">Chat with XYZ</span>
            <span style="float:right;margin-right: 15px;margin-top: 10px"><i style="color: white"  onclick="closeForm()" class="fa fa-angle-down fa-2x" aria-hidden="true"></i></span>
        </div>
        <div  class="win-area">
            <div class="inbox_chat">
                <div class="incoming_msg">

                    <div class="received_msg">
                        <div class="received_withd_msg">
                            <p>Test, which is a new approach to have</p>
                            <span class="time_date"> 11:01 AM    |    Yesterday</span></div>
                    </div>
                </div>
                <div class="outgoing_msg">
                    <div class="sent_msg">
                        <p>Apollo University, Delhi, India Test</p>
                        <span class="time_date"> 11:01 AM    |    Today</span> </div>
                </div><div class="incoming_msg">

                    <div class="received_msg">
                        <div class="received_withd_msg">
                            <p>Test, which is a new approach to have</p>
                            <span class="time_date"> 11:01 AM    |    Yesterday</span></div>
                    </div>
                </div>
                <div class="outgoing_msg">
                    <div class="sent_msg">
                        <p>Apollo University, Delhi, India Test</p>
                        <span class="time_date"> 11:01 AM    |    Today</span> </div>
                </div><div class="incoming_msg">

                    <div class="received_msg">
                        <div class="received_withd_msg">
                            <p>Test, which is a new approach to have</p>
                            <span class="time_date"> 11:01 AM    |    Yesterday</span></div>
                    </div>
                </div>
                <div class="outgoing_msg">
                    <div class="sent_msg">
                        <p>Apollo University, Delhi, India Test</p>
                        <span class="time_date"> 11:01 AM    |    Today</span> </div>
                </div><div class="incoming_msg">

                    <div class="received_msg">
                        <div class="received_withd_msg">
                            <p>Test, which is a new approach to have</p>
                            <span class="time_date"> 11:01 AM    |    Yesterday</span></div>
                    </div>
                </div>
                <div class="outgoing_msg">
                    <div class="sent_msg">
                        <p>Apollo University, Delhi, India Test</p>
                        <span class="time_date"> 11:01 AM    |    Today</span> </div>
                </div>
            </div>
        </div>
        <div  class="win-footer">
            <div style="background-color: white;margin: 2px 2px 2px 2px;position: absolute;width: 99%;height: 45px">
                <input type="text" placeholder="Type message here" style="width: 85%;padding: 9px"/>
                
                <div style="border-radius: 50px;width: 35px;height: 35px;background-color: rgb(1,81,102);float: right;margin-top: 5px;margin-right: 10px">
                    
                    <i class="fa fa-paper-plane-o fa-lg" style="color: white;position: absolute;margin-top: 10px;margin-left: 6px" aria-hidden="true"></i>
                </div>
        </div>
        
   
        </div>

    </div>

    <!--  <form action="/action_page.php" class="form-container">
        <h1>Chat</h1>
    
        <label for="msg"><b>Message</b></label>
        <textarea placeholder="Type message.." name="msg" required></textarea>
    
        <button type="submit" class="btn">Send</button>
        <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
      </form>-->
</div>


