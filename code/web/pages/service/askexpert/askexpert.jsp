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
            .boxStyle{
                border-radius:20px;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                height: 250px;
            }

            .boxfont{
                color: black;padding-left: 30px;padding-top: 20px;padding-right: 30px;
            }

            .boxhead
            {
                font-size: 20px;font-weight: 50;
            }

            .boxcontent
            {
                font-size:15px;
            }

            .fond{position:absolute;padding-top:85px;top:0;left:0; right:0;bottom:0;
                  background-color:#00506b;}

            .style_prevu_kit
            {
                display:inline-block;
                border:0;
                /*    width:196px;
                    height:210px;*/
                position: relative;
                -webkit-transition: all 200ms ease-in;
                -webkit-transform: scale(1); 
                -ms-transition: all 200ms ease-in;
                -ms-transform: scale(1); 
                -moz-transition: all 200ms ease-in;
                -moz-transform: scale(1);
                transition: all 200ms ease-in;
                transform: scale(1); 
                width: 100%;

            }
            .style_prevu_kit:hover
            {
                /*box-shadow: 0px 0px 150px #000000;*/
                z-index: 2;
                -webkit-transition: all 200ms ease-in;
                -webkit-transform: scale(1.2);
                -ms-transition: all 200ms ease-in;
                -ms-transform: scale(1.2);   
                -moz-transition: all 200ms ease-in;
                -moz-transform: scale(1.2);
                transition: all 200ms ease-in;
                transform: scale(1.2);
                cursor: pointer; 
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
                            Ask the Expert			
                        </h1>	
                        <p class="text-white link-nav"><a href="index.html">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="services.html"> Services</a><span class="lnr lnr-arrow-right"></span>  <a href="services.html"> Ask the Expert </a></p>
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
                            <h1 class="mb-10">Area Of Experties<s:if test="#session.login">
                                    <s:if test="#session.userBean.userType == 1">
                                        <a   href="#" class="open-uploadDialog-edit" data-toggle="modal" data-target="#addAreaExpert" >

                                            <i title="ADD NEW AREA" class="fa fa-plus-square-o "  style="color: green;font-size: 30px" aria-hidden="true"></i>
                                        </a>
                                    </s:if>
                                </s:if></h1>
                            <p>You can ask any questions to the experts from following areas </p>



                        </div>
                    </div>
                </div>	
                <br><br>
                <div class="row">
                    <s:iterator  value="areaBeans">
                    
                        <div class="col-lg-3 col-md-6 " style="padding:15px !important" >
                            
                        <div onclick="location.href='expertareadetail?area=<s:property value="id"/>'" style="background-image: linear-gradient(<s:property value="color1"/>,<s:property value="color2"/>);" class="boxStyle style_prevu_kit">
                            
                            <input type="hidden" value="<s:property value="id"/>" name="id"/>
                            <p class="boxfont boxhead"><s:property value="name"/></p>
                            <p class="boxfont boxcontent" align="justify"><s:property value="desc"/></p>
                        </div>

                    </div>
                    
</s:iterator>
                
                
                
                
                
                


            </div>	
        </section>
        <!-- End services Area -->	

        <!-- Start price Area -->
        <section class="price-area section-gap">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="menu-content pb-70 col-lg-8">
                        <div class="title text-center">
                            <h1 class="mb-10">Choose Your Plan</h1>
                            <p>Select the Plan which is best for you</p>
                        </div>
                    </div>
                </div>
                <div class="row d-flex justify-content-center" >
                    <div class="col-lg-3 col-md-6 single-price col-lg-offset-1">
                        <div class="top-part">
                            <h1 class="package-no">01</h1>
                            <h4>NET</h4>
                            <p class="mt-10">Access to all papers of NET</p>
                        </div>
                        <div class="package-list">
                            <ul>
                                <li>Paper I </li>
                                <li>Paper II</li>
                                <li>Paper III</li>
                            </ul>
                        </div>
                        <div class="bottom-part">
                            <h1>&#x20b9;199.00</h1>
                            <a class="price-btn text-uppercase" href="#">Buy Now</a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 single-price">
                        <div class="top-part">
                            <h1 class="package-no">02</h1>
                            <h4>SET</h4>
                            <p class="mt-10">Access to all papers of SET</p>
                        </div>
                        <div class="package-list">
                            <ul>
                                <li>Paper I </li>
                                <li>Paper II</li>
                                <li>Paper III</li>
                            </ul>
                        </div>
                        <div class="bottom-part">
                            <h1>&#x20b9;299.00</h1>
                            <a class="price-btn text-uppercase" href="#">Buy Now</a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 single-price">
                        <div class="top-part">
                            <h1 class="package-no">03</h1>
                            <h4>NET SET Combo</h4>
                            <p class="mt-10">Access to all papers of NET And SET</p>
                        </div>
                        <div class="package-list">
                            <ul>
                                <li>Paper I </li>
                                <li>Paper II</li>
                                <li>Paper III</li>
                            </ul>
                        </div>
                        <div class="bottom-part">
                            <h1>&#x20b9;399.00</h1>
                            <a class="price-btn text-uppercase" href="#">Buy Now</a>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <!-- End price Area -->

        <div class="modal" id="addAreaExpert">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Add New Area</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <s:form action="addNewExpertArea" method="post" enctype="multipart/form-data">
                        <!-- Modal body -->
                        <div class="modal-body">
<div class="form-group row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">Name :</label>
                                <div class="col-sm-10">
                                    <input type="text" name="areaBean.name" class="form-control" id="exampleFormControlInput" placeholder="Area Name">
                                </div>
                            </div>
                            
                            <div class="form-group row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">Description :</label>
                                <div class="col-sm-10">
                                    <input type="text" name="areaBean.desc" class="form-control" id="exampleFormControlInput" placeholder="Area Description">
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
                                                <td><input type="text" name="areaBean.expertiesBeans[0].name" class="form-control" id="exampleFormControlInput1" placeholder="Name"></td>
                                                <td><input type="text" name="areaBean.expertiesBeans[0].emailId" class="form-control" id="exampleFormControlInpute1" placeholder="Email Id"></td>
                                                
                                            </tr>
                                            <tr>
                                                <td style="text-align: center">2</td>
                                                <td><input type="text" name="areaBean.expertiesBeans[1].name" class="form-control" id="exampleFormControlInput2" placeholder="Name"></td>
                                                <td><input type="text" name="areaBean.expertiesBeans[1].emailId" class="form-control" id="exampleFormControlInpute2" placeholder="Email Id"></td>
                                                
                                            </tr>
                                            <tr>
                                                <td style="text-align: center"> 3</td>
                                                <td><input type="text" name="areaBean.expertiesBeans[2].name" class="form-control" id="exampleFormControlInput3" placeholder="Name"></td>
                                                <td><input type="text" name="areaBean.expertiesBeans[2].emailId" class="form-control" id="exampleFormControlInpute3" placeholder="Email Id"></td>
                                                
                                            </tr>
                                            <tr>
                                                <td style="text-align: center">4</td>
                                                <td><input type="text" name="areaBean.expertiesBeans[3].name" class="form-control" id="exampleFormControlInput4" placeholder="Name"></td>
                                                <td><input type="text" name="areaBean.expertiesBeans[3].emailId" class="form-control" id="exampleFormControlInpute4" placeholder="Email Id"></td>
                                                
                                            </tr>
                                            <tr>
                                                <td style="text-align: center">5</td>
                                                <td><input type="text" name="areaBean.expertiesBeans[4].name" class="form-control" id="exampleFormControlInput5" placeholder="Name"></td>
                                                <td><input type="text" name="areaBean.expertiesBeans[4].emailId" class="form-control" id="exampleFormControlInpute5" placeholder="Email Id"></td>
                                                
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



        <!-- start footer Area -->
        <jsp:include page="/footer.jsp" />
        <!-- End footer Area -->		
    </body>
</html>