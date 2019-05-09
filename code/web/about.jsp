<!DOCTYPE html>
<%@taglib prefix="s" uri="/struts-tags" %>
<html lang="zxx" class="no-js">
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
<script src="visitors/js/vendor/jquery-2.2.4.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
        <!--
        CSS
        ============================================= -->
        <link rel="stylesheet" href="visitors/css/linearicons.css">
        <link rel="stylesheet" href="visitors/css/font-awesome.min.css">
        <link rel="stylesheet" href="visitors/css/bootstrap.css">
        <link rel="stylesheet" href="visitors/css/magnific-popup.css">
        <link rel="stylesheet" href="visitors/css/jquery-ui.css">				
        <link rel="stylesheet" href="visitors/css/nice-select.css">							
        <link rel="stylesheet" href="visitors/css/animate.min.css">
        <link rel="stylesheet" href="visitors/css/owl.carousel.css">					
        <link rel="stylesheet" href="visitors/css/main.css">
        
        <style>
            .buttonP {
                position: absolute;
                left:0;
                top: 0px;
                text-align: center;
                opacity: 0;
            }

            .buttonP a {
                width: 200px;
                padding: 12px 48px;
                text-align: center;
                color: white;
                font-weight: bold;
                background-color: #ff0040;
                z-index: 1;
            }
            .containerP:hover .buttonP {
                opacity: 1;
            }

            .glyphicon {
                font-size: 20px;
            }

            
           

    

        </style>
        
        <script>
            $(document).on("click", ".open-uploadDialog", function () {
                var uploadId = $(this).data('id');
                $(".modal-body #uploadId").val(uploadId);
                // As pointed out in comments,
                // it is unnecessary to have to manually call the modal.
                // $('#addBookDialog').modal('show');
            });
            $(document).on("click", ".open-uploadDialog-textArea", function () {
                var uploadId = $(this).data('id');
                
                $(".modal-body-desc #uploadId").val(uploadId);
                
                
                // As pointed out in comments,
                // it is unnecessary to have to manually call the modal.
                // $('#addBookDialog').modal('show');
            });
        </script>
        
    </head>
    <body>	
        <jsp:include page="/header.jsp" />

        <!-- start banner Area -->
        <section class="about-banner">
            <div class="container">				
                <div class="row d-flex align-items-center justify-content-center">
                    <div class="about-content col-lg-12">
                        <h1 class="text-white">
                            About Me				
                        </h1>	
                        <p class="text-white link-nav"><a href="index.html">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="about.html"> About Me</a></p>
                    </div>	
                </div>
            </div>
        </section>
        <!-- End banner Area -->	

        <!-- Start home-about Area -->
        <section class="home-about-area section-gap">
            <div class="container">
                <div class="row align-items-center justify-content-between">
                    <div class="col-lg-6 col-md-6 home-about-left containerP">
                        <img class="img-fluid" src="<s:url action='ImageAction'><s:param name="imageId"><s:property value="personalDetail.image"/></s:param></s:url>" alt="">
                        <s:if test="#session.login">
                            <s:if test="#session.userBean.userType == 1">
                                <div class="buttonP">
                                    <a href="#" data-id="2" class="open-uploadDialog" data-toggle="modal" data-target="#myModal"> CHANGE PHOTO </a>
                                </div>
                            </s:if>
                        </s:if>
                    </div>
                    <div class="col-lg-5 col-md-6 home-about-right">
                        <h6>About Me</h6>
                        <h1 class="text-uppercase" >Personal Details
                        <s:if test="#session.login">
                                <s:if test="#session.userBean.userType == 1">
                                    <a   href="#" data-id="2" class="open-uploadDialog-textArea" data-toggle="modal" data-target="#myModalDesc">
                                        
                                        <i title="EDIT" class="fa fa-pencil" style="color: red" aria-hidden="true"></i>
                                    </a>
                                </s:if>
                            </s:if>
                        </h1>
                        <p>
                            <s:property value="personalDetail.desc1"/>
                        </p>
                        
                    </div>
                    <div class="col-lg-12 pt-60">
                        <s:iterator value="desc2List" status="statusVar">
  <p>
                             <s:property />
                        </p>
</s:iterator>
                        
                        
                    </div>
                </div>
                
            </div>	
        </section>
        <!-- End home-about Area -->	

        <!-- Start timeline Area -->
        <section class="timeline pb-120">
            <div class="text-center">
                <div class="menu-content pb-70">
                    <div class="title text-center">
                        <h1 class="mb-10">My Qualifications
                        <s:if test="#session.login">
                                <s:if test="#session.userBean.userType == 1">
                                    <a   href="#" data-id="2" class="open-uploadDialog-textArea" data-toggle="modal" data-target="#myModalDesc">
                                        
                                        <i title="EDIT" class="fa fa-pencil" style="color: red" aria-hidden="true"></i>
                                    </a>
                                </s:if>
                            </s:if>
                        
                        </h1>
                       
                    </div>
                </div>
            </div>				
            <ul>
                <li>
                    <div class="content">
                        <h4>
                            <time>Masters in Graphics & Fine Arts</time>
                        </h4>
                        <p><b>Session:</b> 2010-11</p>
                        <p><b>Result:</b> 3.78 (In the Scale of 4.00)</p>
                    </div>
                </li>
                <li>
                    <div class="content">
                        <img class="img-fluid mx-auto d-block mb-30" src="visitors/img/about/c-logo.png" alt="">
                        <h4>
                            <time>Creative Content Developer</time>
                        </h4>
                        <p>July 2015 to Present</p>
                    </div>
                </li>
                <li>
                    <div class="content">
                        <h4>
                            <time>Bachelor in Graphics & UI/UX</time>
                        </h4>
                        <p><b>Session:</b> 2006-09</p>
                        <p><b>Result:</b> 3.40 (In the Scale of 4.00)</p>
                    </div>
                </li>
                <li>
                    <div class="content">
                        <img class="img-fluid mx-auto d-block mb-30" src="visitors/img/about/c-logo.png" alt="">
                        <h4>
                            <time>Senior UI/UX Designer</time>
                        </h4>
                        <p>July 2015 to Present</p>
                    </div>
                </li>
                <li>
                    <div class="content">
                        <h4>
                            <time>Diploma in Fine Arts & Printing</time>
                        </h4>
                        <p><b>Session:</b> 2003-06</p>
                        <p><b>Result:</b> 4.94 (In the Scale of 5.00)</p>
                    </div>
                </li>
            </ul>
        </section>		

        <!-- End timeline Area -->


        <!-- Start testimonial Area -->
        <section class="testimonial-area section-gap">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="menu-content pb-70 col-lg-8">
                        <div class="title text-center">
                            <h1 class="mb-10">Client?s Feedback About Me</h1>
                            <p>It is very easy to start smoking but it is an uphill task to quit it. Ask any chain smoker or even a person.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="active-testimonial">
                        <div class="single-testimonial item d-flex flex-row">
                            <div class="thumb">
                                <img class="img-fluid" src="visitors/img/elements/user1.png" alt="">
                            </div>
                            <div class="desc">
                                <p>
                                    Do you want to be even more successful? Learn to love learning and growth. The more effort you put into improving your skills, the bigger the payoff you.		     
                                </p>
                                <h4>Harriet Maxwell</h4>
                                <p>CEO at Google</p>
                            </div>
                        </div>
                        <div class="single-testimonial item d-flex flex-row">
                            <div class="thumb">
                                <img class="img-fluid" src="visitors/img/elements/user2.png" alt="">
                            </div>
                            <div class="desc">
                                <p>
                                    A purpose is the eternal condition for success. Every former smoker can tell you just how hard it is to stop smoking cigarettes. However.
                                </p>
                                <h4>Carolyn Craig</h4>
                                <p>CEO at Facebook</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End testimonial Area -->			

        <div class="modal" id="myModal">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Upload Photo</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        <s:form action="uploadImage" method="post" enctype="multipart/form-data">
                            <s:hidden name="uploadId" id="uploadId"/>
                            <s:file name="userImage" label="Image" />
                                                       
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer" style="justify-content: center !important">
                            <s:submit  cssClass="btn btn-primary" value="Upload" align="center" />
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        </div>
 </s:form>
                </div>
            </div>
        </div>
        
        <div class="modal" id="myModalDesc">
            <div class="modal-dialog  modal-lg">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">

                        
                        <div class="personalDetailDiv">
                            <h4 class="modal-title">Personal Detail</h4>
                        </div>

                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body-desc">
                        <div class="container">
                            <br/>
                            <s:form action="updateDescFromAboutPage" method="post">
                                <s:hidden name="uploadId" id="uploadId"/>
                                 
                                <div class="personalDetailDiv">
                                    <div class="form-group">
                                        <label for="email">Short Description:</label>
                                        <s:textarea name="personalDetail.desc1" cssClass="form-control" rows="5"/>
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Detail Description:</label>
                                        <s:textarea name="personalDetail.desc2" cssClass="form-control" rows="10"  />
                                    </div>
                                </div>

                            </div>

                        </div>

                        <!-- Modal footer -->
                        <div class="modal-footer" style="justify-content: center !important">
                            <s:submit  cssClass="btn btn-primary" value="Save" align="center" />
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        </div>

                    </s:form>
                </div>
            </div>
        </div>
        <!-- Start brands Area -->
        <section class="brands-area">
            <div class="container">
                <div class="brand-wrap">
                    <div class="row align-items-center active-brand-carusel justify-content-start no-gutters">
                        <div class="col single-brand">
                            <a href="#"><img class="mx-auto" src="visitors/img/l1.png" alt=""></a>
                        </div>
                        <div class="col single-brand">
                            <a href="#"><img class="mx-auto" src="visitors/img/l2.png" alt=""></a>
                        </div>
                        <div class="col single-brand">
                            <a href="#"><img class="mx-auto" src="visitors/img/l3.png" alt=""></a>
                        </div>
                        <div class="col single-brand">
                            <a href="#"><img class="mx-auto" src="visitors/img/l4.png" alt=""></a>
                        </div>
                        <div class="col single-brand">
                            <a href="#"><img class="mx-auto" src="visitors/img/l5.png" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End brands Area -->	

        <!-- start footer Area -->
        <jsp:include page="/footer.jsp" />
        <!-- End footer Area -->

    </body>
</html>