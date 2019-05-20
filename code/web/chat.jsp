<%-- 
    Document   : chat
    Created on : May 10, 2019, 12:59:29 PM
    Author     : nishant.vibhute
--%>

<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html lang="zxx" class="no-js">
    <head>
        <!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicon-->
        <link rel="shortcut icon" href="img/fav.png">
        <!-- Author Meta -->
        <meta name="author" content="colorlib">
        <!-- Meta Description -->
        <meta name="description" content="">
        <!-- Meta Keyword -->
        <meta name="keywords" content="">
        <!-- meta character set -->
        <meta charset="UTF-8">
        <!-- Site Title -->
        <title>Personal</title>

        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
        <!--
        CSS
        ============================================= -->
        <link rel="stylesheet" href="visitors/css/linearicons.css">
        <link rel="stylesheet" href="visitors/css/font-awesome.min.css">
        <link rel="stylesheet" href="visitors/css/bootstrap.css">
        <link rel="stylesheet" href="visitors/css/magnific-popup.css">			
        <link rel="stylesheet" href="visitors/css/nice-select.css">							
        <link rel="stylesheet" href="visitors/css/animate.min.css">
        <link rel="stylesheet" href="visitors/css/owl.carousel.css">			
        <link rel="stylesheet" href="visitors/css/jquery-ui.css">			
        <link rel="stylesheet" href="visitors/css/main.css">

        <style>

            img{ max-width:100%;}
            .inbox_people {
                background: #f8f8f8 none repeat scroll 0 0;
                float: left;
                overflow: hidden;
                width: 30%; border-right:1px solid #c4c4c4;
            }
            .inbox_msg {
                border: 1px solid #c4c4c4;
                clear: both;
                overflow: hidden;
            }
            .top_spac{ margin: 20px 0 0;}


            .recent_heading {float: left; width:40%;}

            .headind_srch{ padding:10px 29px 10px 20px; overflow:hidden; border-bottom:1px solid #c4c4c4;}

            .recent_heading h4 {
                color: #05728f;
                font-size: 21px;
                margin: auto;
            }
            .srch_bar input{ border:1px solid #cdcdcd; border-width:0 0 1px 0; width:80%; padding:2px 0 4px 6px; background:none;}
            .srch_bar .input-group-addon button {
                background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
                border: medium none;
                padding: 0;
                color: #707070;
                font-size: 18px;
            }
            .srch_bar .input-group-addon { margin: 0 0 0 -27px;}

            .chat_ib h5{ font-size:15px; color:#464646; margin:0 0 8px 0;}
            .chat_ib h5 span{ font-size:13px; float:right;}
            .chat_ib p{ font-size:14px; color:#989898; margin:auto}
            .chat_img {
                float: left;
                width: 11%;
            }
            .chat_ib {
                float: left;
                padding: 0 0 0 15px;
                width: 88%;
            }

            .chat_people{ overflow:hidden; clear:both;}
            .chat_list {
                border-bottom: 1px solid #c4c4c4;
                margin: 0;
                padding: 18px 16px 10px;
            }
            .inbox_chat { height: 615px; overflow-y: scroll;}

            .active_chat{ background:#ebebeb;}

            .incoming_msg_img {
                display: inline-block;
                width: 6%;
            }
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
            .input_msg_write input {
                background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
                border: medium none;
                color: #4c4c4c;
                font-size: 15px;
                min-height: 48px;
                width: 100%;
            }

            .type_msg {border-top: 1px solid #c4c4c4;position: relative;}
            .msg_send_btn {
                background: #05728f none repeat scroll 0 0;
                border: medium none;
                border-radius: 50%;
                color: #fff;
                cursor: pointer;
                font-size: 17px;
                height: 33px;
                position: absolute;
                right: 0;
                top: 11px;
                width: 33px;
            }
            .messaging { padding: 0 0 50px 0;}
            .msg_history {
                height: 516px;
                overflow-y: auto;
            }
            
            /* width */
::-webkit-scrollbar {
  width: 10px;
}

/* Track */
::-webkit-scrollbar-track {
  background: #f1f1f1; 
}
 
/* Handle */
::-webkit-scrollbar-thumb {
  background: #888; 
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
  background: #555; 
}
        </style>

        

    </head>
    <body>	
        <jsp:include page="/header.jsp" />


        <!-- End banner Area -->				  

        <!-- Start contact-page Area -->
        <section class="contact-page-area section-gap-50">
            <div class="container" style="margin-top: 50px">

                <div class="messaging">
                    <div class="inbox_msg">
                        <div class="inbox_people">
                            <div class="headind_srch">
                                <div class="recent_heading">
                                    <h4>Recent</h4>
                                </div>

                            </div>
                            <div class="inbox_chat">

                                <s:iterator value="adminChatList">

                                    <div class="chat_list " onclick="getUserChat(<s:property value="userId"/>, '<s:property value="userName"/>',<s:property value="isLoggedIn"/>, '<s:property value="logoutTIme"/>')">
                                        <div class="chat_people">
                                            <div class="chat_img"> <img src="visitors/img/user-profile.png" > </div>
                                            <div class="chat_ib">
                                                <h5><s:property value="userName"/> <span class="chat_date"><s:property value="lastChatDate"/></span></h5>
                                                    <s:if test="isLoggedIn">
                                                    <span style="font: 14px arial, sans-serif;"><i class="fa fa-circle " style="color: green" aria-hidden="true"></i>&nbsp;&nbsp;Online</span>
                                                </s:if>
                                                <s:else>
                                                    <span style="font: 14px arial, sans-serif;"><i class="fa fa-circle " style="color: red" aria-hidden="true"></i>&nbsp;&nbsp;offline since <s:property value="logoutTIme"/></span>
                                                </s:else>
                                                    <span id="messageic_<s:property value="userId"/>" style="font: 14px arial, sans-serif;float: right;color: blue;<s:if test="isRead==1">visibility: hidden;</s:if>"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                                            </div>
                                        </div>
                                    </div>

                                </s:iterator>
                            </div>
                        </div>

                        <div class="mesgs">


                            <div style="padding: 10px 10px 0px 10px;width: auto"> 
                                <div style="float: left;" class="incoming_msg_img"> <img src="visitors/img/user-profile.png"> </div> 
                                <div >&nbsp;&nbsp;<span id="chatUserName"></span>  
                                    <br> &nbsp;&nbsp;<i class="fa fa-circle " id="chatUserSymbol" style="color: white" aria-hidden="true"></i>&nbsp;&nbsp;<span style="font: 14px arial, sans-serif;" id="chatUserStatus"></span> </div>
                            </div>
                            <hr>

                            <div class="msg_history" id="msgHis">



                            </div>

                            <div class="type_msg">
                                <div class="input_msg_write">
                                    <input type="hidden" id="userId"/>
                                    <input type="text" id="message" class="write_msg" placeholder="Type a message" />
                                    <button class="msg_send_btn" onclick="wsSendMessage()" type="button"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>




                </div></div>
        </section>
        <!-- End contact-page Area -->
        <jsp:include page="/footer.jsp" />
        
        <script>
            function getUserChat(id, name, status, time)
            {
                $("#messageic_"+id).css("visibility", "hidden");
                
                $("#userId").val(id);
                $('#chatUserName').text(name);

                if (status === true)
                {
                    $('#chatUserSymbol').css("color", "green");
                    $('#chatUserStatus').text("online");
                } else {
                    $('#chatUserSymbol').css("color", "red");
                    $('#chatUserStatus').text('offline since ' + time);
                }

                $("#msgHis").empty();

                $.ajax({
                    url: 'getChatData?userId=' + id,
                    type: "POST",
                    dataType: 'json'
                }).success(function (response) {


                    $.each(response, function (index, value) {

                        if (value.byUserId === 1)
                        {
                            var outMsg = '<div class="outgoing_msg">\n\
                                        <div class="sent_msg">\n\
                                        <span class="time_date_right" style="text-align: right"> you</span>  \n\
                                        <p>' + value.mssg + '</p><span class="time_date_right" style="text-align: right">' + value.msgTime + ' | ' + value.msgDate + '</span> </div></div>';

                            $("#msgHis").append(outMsg);

                        } else {
                            var inMsg = '<div class="incoming_msg">\n\
                                          <div class="received_msg">\n\
                                          <div class="received_withd_msg">\n\
                                          <span class="time_date">' + value.toUserName + '</span> \n\
                                          <p>' + value.mssg + '</p>\n\
                                          <span class="time_date"> ' + value.msgTime + ' | ' + value.msgDate + '</span></div>\n\
                                          </div></div>';

                            $("#msgHis").append(inMsg);
                        }

                    });
//                    map = {};

                    var objDiv = document.getElementById("msgHis");
                    objDiv.scrollTop = objDiv.scrollHeight;
                });
            }
            

//     function sendMessage()
//            {
//                var id = $("#userId").val();
//                 var message = $("#message").val();
//                
//                $.ajax({
//                    url: 'sendAdminMessage?userId=' + id+'&message='+message,
//                    type: "POST",
//                    dataType: 'json'
//                }).success(function (response) {
//                     $("#message").val("");
//                     $("#msgHis").empty();
//                    $.each(response, function (index, value) {
//                        if (value.byUserId === 1)
//                        {
//                            var outMsg = '<div class="outgoing_msg">\n\
//                                        <div class="sent_msg">\n\
//                                        <span class="time_date_right" style="text-align: right"> you</span>  \n\
//                                        <p>' + value.mssg + '</p><span class="time_date_right" style="text-align: right">' + value.msgTime + ' | ' + value.msgDate + '</span> </div></div>';
//
//                            $("#msgHis").append(outMsg);
//
//                        } else {
//                            var inMsg = '<div class="incoming_msg">\n\
//                                          <div class="received_msg">\n\
//                                          <div class="received_withd_msg">\n\
//                                          <span class="time_date">' + value.toUserName + '</span> \n\
//                                          <p>' + value.mssg + '</p>\n\
//                                          <span class="time_date"> ' + value.msgTime + ' | ' + value.msgDate + '</span></div>\n\
//                                          </div></div>';
//
//                            $("#msgHis").append(inMsg);
//                        }
//
//                    });
//                     });
//                }
            
            
//            var webSocket = new WebSocket("ws://192.168.2.80:8084/madhurisadgir/ws/websocket");
            var message = document.getElementById("message");
            
            
            webSocket.onmessage = function (message) {
                wsGetMessage(message);
            };
            webSocket.onclose = function (message) {
                wsClose(message);
            };
            webSocket.onerror = function (message) {
                wsError(message);
            };
           
            function wsSendMessage() {

                var outMsg = '<div class="outgoing_msg">\n\
                        <div class="sent_msg">\n\
                        <span class="time_date_right" style="text-align: right"> you</span>  \n\
                        <p>' + message.value + '</p><span class="time_date_right" style="text-align: right"> add time</span> </div></div>';
                ;
                $("#msgHis").append(outMsg);
                
                var uid = document.getElementById('userId').value;
                var content = message.value;
                var json = {
                    'chatRoomId':uid,
                    'uid': 1,
                    'toUid':uid,
                    'content': content
                };
                webSocket.send(JSON.stringify(json));
                message.value = "";
                var objDiv = document.getElementById("msgHis");
                    objDiv.scrollTop = objDiv.scrollHeight;
            }
            function wsCloseConnection() {
                webSocket.close();
            }
            function wsGetMessage(message) {
                var text = JSON.parse(message.data);
                var uid = document.getElementById('userId').value;
                console.log(text.uid +"="+uid);
                if(""+uid == ""+text.uid)
                {
                    
                var inMsg = '<div class="incoming_msg">\n\
                          <div class="received_msg">\n\
                          <div class="received_withd_msg">\n\
                          <span class="time_date">Them</span> \n\
                          <p>' + text.content + '</p>\n\
                          <span class="time_date"> add time </span></div>\n\
                          </div></div>';
                $("#msgHis").append(inMsg);
                var objDiv = document.getElementById("msgHis");
                    objDiv.scrollTop = objDiv.scrollHeight;
            }
            else{
                $("#messageic_"+text.uid).css("visibility", "visible");
                 console.log(text.uid);
            }
            }
            function wsClose(message) {
//            echoText.value += "Disconnect ... \n";
            }
            function wsError(message) {
//            echoText.value += "Error ... \n";
            }

            
            
        </script>
    </body>
</html>
