<!DOCTYPE html>
<html lang="zxx" class="no-js">
    <%@taglib prefix="s" uri="/struts-tags" %>
    <head>
        <!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicon-->
        <link rel="shortcut icon" href="visitors/img/fav.png">
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
            .template_faq {
                background: #edf3fe none repeat scroll 0 0;
            }
            .panel-group {
                background: #fff none repeat scroll 0 0;
                border-radius: 3px;

                margin-bottom: 0;
                padding: 30px;
            }
            #accordion .panel {
                border: medium none;
                border-radius: 0;
                box-shadow: none;
                margin: 0 0 15px 10px;
            }
            #accordion .panel-heading {
                border-radius: 30px;
                padding: 0;
            }
            #accordion .panel-title a {
                background: #ffb900 none repeat scroll 0 0;
                border: 1px solid transparent;
                border-radius: 30px;
                color: #fff;
                display: block;
                font-size: 18px;
                font-weight: 600;
                padding: 12px 20px 12px 50px;
                position: relative;
                transition: all 0.3s ease 0s;
            }
            #accordion .panel-title a.collapsed {
                background: #fff none repeat scroll 0 0;
                border: 1px solid #ddd;
                color: #333;
            }
            #accordion .panel-title a::after, #accordion .panel-title a.collapsed::after {
                background: #ffb900 none repeat scroll 0 0;
                border: 1px solid transparent;
                border-radius: 50%;
                box-shadow: 0 3px 10px rgba(0, 0, 0, 0.58);
                color: #fff;
                content: "\f078";
                font-family: fontawesome;
                font-size: 25px;
                height: 55px;
                left: -20px;
                line-height: 55px;
                position: absolute;
                text-align: center;
                top: -5px;
                transition: all 0.3s ease 0s;
                width: 55px;
            }
            #accordion .panel-title a.collapsed::after {
                background: #fff none repeat scroll 0 0;
                border: 1px solid #ddd;
                box-shadow: none;
                color: #333;
                content: "\f054";
            }
            #accordion .panel-body {
                background: transparent none repeat scroll 0 0;
                border-top: medium none;
                padding: 20px 25px 10px 9px;
                position: relative;
            }
            #accordion .panel-body p {
                border-left: 1px dashed #8c8c8c;
                padding-left: 25px;
             border-right: 1px dashed #8c8c8c;
            padding-right: 25px;
            }
        </style>

    </head>
    <body>	

        <jsp:include page="/header.jsp" />

        <!-- start banner Area -->
        <section class="about-banner">
            <div class="container">				
                <div class="row d-flex align-items-center justify-content-center">
                    <div class="about-content col-lg-12">
                        <h1 class="text-white">
                            <s:property value="areaBean.name"	/>	<s:if test="#session.login">
                                    <s:if test="#session.userBean.userType == 1">
                                        <a   href="#" class="open-uploadDialog-edit" data-toggle="modal" data-target="#addAreaExpert" >

                                            <i title="EDIT <s:property value="areaBean.name"	/>" class="fa fa-pencil-square-o"  style="color: #6E101C;font-size: 40px" aria-hidden="true"></i>
                                        </a>
                                        
                                        <a   href="#" class="open-uploadDialog-edit" data-id="<s:property value="areaBean.id"	/>" data-toggle="modal" data-target="#myModalDelete" >

                                            <i title="DELETE <s:property value="areaBean.name"	/>" class="fa fa-trash-o"  style="color: #6E101C;font-size: 40px" aria-hidden="true"></i>
                                        </a>
                                    </s:if>
                                </s:if>	
                        </h1>	
                        <p class="text-white link-nav"><a href="index.html">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="services.html"> Services</a><span class="lnr lnr-arrow-right"></span>  <a href="services.html"> Ask the Expert </a><span class="lnr lnr-arrow-right"></span> <s:property value="areaBean.name"/> </p>
                    </div>	
                </div>
            </div>
        </section>
        <!-- End banner Area -->	

        <!-- Start services Area -->
        <section class="services-area section-gap-50" >
            <div class="container">
                
                
                <div class="row d-flex justify-content-center">
                    <div class="menu-content  col-lg-7">
                        <div class="title text-center">
                            <form action="addExpertQuestion" method="post">
                            <h2 class="mb-30">How Can We Help You?</h2>
                            <div class="row d-flex justify-content-center">
                                <div class="col-xs-10 col-md-10">
                                    <div class="input-group" style="margin-bottom: 20px" >
                                        
                                        <input type="text" name="expertQestionBean.question" class="form-control" placeholder="Ask Your Question" id="txtSearch"/>
                                        <input type="hidden" value="<s:property value="areaBean.id"	/>" name="expertQestionBean.areaId"/>
                                        <div class="input-group-btn">
                                            <button class="btn btn-primary" type="submit">
                                                <i class="fa fa-send-o" ></i>
                                            </button>
                                        </div>
                                       
                                    </div>
                                </div>
                            </div>
                             </form>
                        </div>
                    </div>
                </div>	

                <div class="row">				
                    <div class="col-md-12">
                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                            <s:iterator value="expertQuestionList"> 
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading<s:property value="qid"/>">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse<s:property value="qid"/>" aria-expanded="false" aria-controls="collapseTwo">
                                           <s:property value="question"/>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse<s:property value="qid"/>" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading<s:property value="qid"/>">
                                    <div class="panel-body">
                                        <s:iterator value="answers"> 
                                            <p align="justify"><s:property/></p>
                                            <hr>
                                        </s:iterator>
                                    </div>
                                </div>
                            </div>
                            </s:iterator>
                        </div>
                    </div><!--- END COL -->		
                </div><!--- END ROW -->	






            </div>	
        </section>
        <!-- End services Area -->	

        <!-- Start price Area -->

        <!-- End price Area -->

        <div class="modal" id="addAreaExpert">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Edit Area</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <s:form action="editArea" method="post" enctype="multipart/form-data">
                        <!-- Modal body -->
                        <div class="modal-body">
                            <div class="form-group row">
                                <input type="hidden" name="areaBean.id" value="<s:property value="areaBean.id"/>"/>
                                <label for="staticEmail" class="col-sm-2 col-form-label">Name :</label>
                                <div class="col-sm-10">
                                    <input type="text" name="areaBean.name" value="<s:property value="areaBean.name"/>" class="form-control" id="exampleFormControlInput" placeholder="Area Name">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">Description :</label>
                                <div class="col-sm-10">
                                    <input type="text" name="areaBean.desc" value="<s:property value="areaBean.desc"/>" class="form-control" id="exampleFormControlInput" placeholder="Area Description">
                                </div>
                            </div>
                            <center> <p class="boxfont boxhead" style="padding-bottom: 10px">Experties Details</p></center> 
                            <table class="table" style="padding: 20px">
                                <thead>
                                    <tr>
                                        <th style="text-align: center" width="10%">Sr No.</th>
                                        <th width="30%">Name</th>
                                        <th>Email Id</th>

                                    </tr>
                                </thead>
                                <tbody>



                                    <tr >
                                        <td style="text-align: center">1</td>
                                        <td><input type="text" value="<s:property value="areaBean.expertiesBeans[0].name"/>" name="areaBean.expertiesBeans[0].name" class="form-control" id="exampleFormControlInput1" placeholder="Name"></td>
                                        <td><input type="text" value="<s:property value="areaBean.expertiesBeans[0].emailId"/>" name="areaBean.expertiesBeans[0].emailId" class="form-control" id="exampleFormControlInpute1" placeholder="Email Id"></td>

                                    </tr>
                                    <tr>
                                        <td style="text-align: center">2</td>
                                        <td><input type="text" value="<s:property value="areaBean.expertiesBeans[1].name"/>" name="areaBean.expertiesBeans[1].name" class="form-control" id="exampleFormControlInput2" placeholder="Name"></td>
                                        <td><input type="text" value="<s:property value="areaBean.expertiesBeans[1].emailId"/>" name="areaBean.expertiesBeans[1].emailId" class="form-control" id="exampleFormControlInpute2" placeholder="Email Id"></td>

                                    </tr>
                                    <tr>
                                        <td style="text-align: center"> 3</td>
                                        <td><input type="text" value="<s:property value="areaBean.expertiesBeans[2].name"/>" name="areaBean.expertiesBeans[2].name" class="form-control" id="exampleFormControlInput3" placeholder="Name"></td>
                                        <td><input type="text" value="<s:property value="areaBean.expertiesBeans[2].emailId"/>" name="areaBean.expertiesBeans[2].emailId" class="form-control" id="exampleFormControlInpute3" placeholder="Email Id"></td>

                                    </tr>
                                    <tr>
                                        <td style="text-align: center">4</td>
                                        <td><input type="text" value="<s:property value="areaBean.expertiesBeans[3].name"/>" name="areaBean.expertiesBeans[3].name" class="form-control" id="exampleFormControlInput4" placeholder="Name"></td>
                                        <td><input type="text" value="<s:property value="areaBean.expertiesBeans[3].emailId"/>" name="areaBean.expertiesBeans[3].emailId" class="form-control" id="exampleFormControlInpute4" placeholder="Email Id"></td>

                                    </tr>
                                    <tr>
                                        <td style="text-align: center">5</td>
                                        <td><input type="text" value="<s:property value="areaBean.expertiesBeans[4].name"/>" name="areaBean.expertiesBeans[4].name" class="form-control" id="exampleFormControlInput5" placeholder="Name"></td>
                                        <td><input type="text" value="<s:property value="areaBean.expertiesBeans[4].emailId"/>" name="areaBean.expertiesBeans[4].emailId" class="form-control" id="exampleFormControlInpute5" placeholder="Email Id"></td>

                                    </tr>




                                </tbody>
                            </table>


                        </div>

                        <!-- Modal footer -->
                        <div class="modal-footer" style="justify-content: center !important">
                            <s:submit  cssClass="btn btn-primary" value="Submit" align="center" />
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        </div>
                    </s:form>
                </div>
            </div>
        </div>
        
        
        <div id="myModalDelete" class="modal fade">
            <div class="modal-dialog modal-confirm">
                <div class="modal-content">
                    <div class="modal-header">

                        <h4 class="modal-title">Are you sure?</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <s:form action="deleteArea">
                        <div class="modal-body-del">
                            <div class="container">
                                <p>Do you really want to delete these records? This process cannot be undone.</p>
                                <s:hidden name="area" id="areaId"/>
                            </div>
                        </div>
                        <div class="modal-footer"  style="justify-content: center !important">
                            <button type="button" class="btn btn-info" data-dismiss="modal">Cancel</button>
                            <s:submit  cssClass="btn btn-danger" value="Delete" align="center" />

                        </div>
                    </s:form>
                </div>
            </div>
        </div>



        <!-- start footer Area -->
        <jsp:include page="/footer.jsp" />

        <script>
            (function ($) {
                'use strict';

                jQuery(document).on('ready', function () {

                    $('a.page-scroll').on('click', function (e) {
                        var anchor = $(this);
                        $('html, body').stop().animate({
                            scrollTop: $(anchor.attr('href')).offset().top - 50
                        }, 1500);
                        e.preventDefault();
                    });

                });


            })(jQuery);


$(document).on("click", ".open-uploadDialog-delete", function () {
                var courseId = $(this).data('id');

                $(".modal-body-del #areaId").val(courseId);


                // As pointed out in comments,
                // it is unnecessary to have to manually call the modal.
                // $('#addBookDialog').modal('show');
            });
        </script>
        <!-- End footer Area -->		
    </body>
</html>