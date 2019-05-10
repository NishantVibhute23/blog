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
    </head>
    <body>	

        <jsp:include page="/header.jsp" />

        <!-- start banner Area -->
        <section class="about-banner">
            <div class="container">				
                <div class="row d-flex align-items-center justify-content-center">
                    <div class="about-content col-lg-12">
                        <h1 class="text-white">
                            NET / SET TEST				
                        </h1>	
                        <p class="text-white link-nav"><a href="index.html">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="services.html"> Services</a><span class="lnr lnr-arrow-right"></span>  <a href="services.html"> NET/SET Exam Test </a></p>
                    </div>	
                </div>
            </div>
        </section>
        <!-- End banner Area -->	

        <!-- Start services Area -->
        <section class="services-area section-gap">
            <div class="container">

                <div class="row">
<!--                    <div class="col-lg-4 col-md-6">
                        <div class="card text-center">
                            <div class="card-header">
                                <h4>GENERAL</h4>
                            </div>
                            <div class="card-body">
                                
                                <p class="card-text">5 Ques | 5 Min</p>
                               
                            </div>
                            <div class="card-footer bg-info">
                                <a href="#" class="text-white">Start Test</a>
                            </div>
                        </div>
                    </div>-->
                    <div class="col-lg-6 col-md-6">
                        <div class="card text-center">
                            <div class="card-header">
                                <h4>PAPER I</h4>
                            </div>
                            <div class="card-body">
                                
                                <p class="card-text">5 Ques | 5 Min</p>
                               
                            </div>
                            <div class="card-footer bg-info">
                                
                                <s:if test="isLoggedIn">
                                    <a href="starttest?paperId=1" class="text-white">Start Test</a>
                                </s:if>
                                <s:else>
                                    <a href="#" class="text-white" data-toggle="modal" data-target="#myModal">Start Test</a>
                                </s:else>
                                
                                
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="card text-center">
                            <div class="card-header">
                                <h4>PAPER II</h4>
                            </div>
                            <div class="card-body">
                                
                                <p class="card-text">5 Ques | 5 Min</p>
                               
                            </div>
                            <div class="card-footer bg-info">
                                <s:if test="isLoggedIn">
                                    <a href="starttest?paperId=2" class="text-white">Start Test</a>
                                </s:if>
                                <s:else>
                                    <a href="#"  class="text-white" data-toggle="modal" data-target="#myModal">Start Test</a>
                                </s:else>
                            </div>
                        </div>
                    </div>

                </div>
            </div>	
        </section>
        <!-- End services Area -->				









          <!-- start footer Area -->
            <jsp:include page="/footer.jsp" />
            <!-- End footer Area -->		
    </body>
</html>