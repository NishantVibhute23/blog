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
    </head>
    <body>	
        <jsp:include page="/header.jsp" />

        <!-- start banner Area -->
        <section class="relative about-banner">	
            <div class="overlay overlay-bg"></div>
            <div class="container">				
                <div class="row d-flex align-items-center justify-content-center">
                    <div class="about-content col-lg-12">
                        <h1 class="text-white">
                            Contact Me				
                        </h1>	
                        <p class="text-white link-nav"><a href="index.html">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="contact"> Contact Me</a></p>
                    </div>	
                </div>
            </div>
        </section>
        <!-- End banner Area -->				  

        <!-- Start contact-page Area -->
        <section class="contact-page-area section-gap-50">
            <div class="container">
                
                <div class="row">

                    <div class="col-lg-4 d-flex flex-column address-wrap">
                        <div class="single-contact-address d-flex flex-row">
                            <div class="icon">
                                <span class="lnr lnr-home"></span>
                            </div>
                            <div class="contact-details">
                                <h5>Mumbai, Maharashtra, India</h5>
                                <p>
                                    Near Mumbai University(Kalina), Santacruz (East).
                                </p>
                            </div>
                        </div>
                        <div class="single-contact-address d-flex flex-row">
                            <div class="icon">
                                <span class="lnr lnr-phone-handset"></span>
                            </div>
                            <div class="contact-details">
                                <h5>+91 9860955477</h5>
                                <p>Mon to Fri 9am to 6 pm</p>
                            </div>
                        </div>
                        <div class="single-contact-address d-flex flex-row">
                            <div class="icon">
                                <span class="lnr lnr-envelope"></span>
                            </div>
                            <div class="contact-details">
                                <h5>professor.madhuri@gmail.com</h5>
                                <p>Send me your query anytime!</p>
                            </div>
                        </div>														
                    </div>
                    <div class="col-lg-8">
                        <form class="form-area contact-form text-right"  action="submitQuery" method="post">
                            <div class="row">	
                                <div class="col-lg-6 form-group">
                                    <input name="userQueryBean.userName" placeholder="Enter your name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" class="common-input mb-20 form-control" required="" type="text">

                                    <input name="userQueryBean.userEmail" placeholder="Enter email address" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" class="common-input mb-20 form-control" required="" type="email">

                                    <input name="userQueryBean.messageSubject" placeholder="Enter subject" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter subject'" class="common-input mb-20 form-control" required="" type="text">
                                </div>
                                <div class="col-lg-6 form-group">
                                    <textarea class="common-textarea form-control" name="userQueryBean.messageText" placeholder="Enter Messege" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Messege'" required=""></textarea>				
                                </div>
                                <div class="col-lg-12">
                                    <div class="alert-msg" style="text-align: left;"></div>
                                    <s:if test="messageBean.errorMessage != null">
                                        <div class="alert-msg" style="text-align: left;">
                                            <s:property value="messageBean.errorMessage"/>
                                        </div>
                                    </s:if>
                                    <s:if test="messageBean.successMessage != null">
                                        <div class="alert-msg" style="text-align: left;">
                                            <s:property value="messageBean.successMessage"/>
                                        </div>
                                    </s:if>
                                    <button type="submit" class="genric-btn primary" style="float: right;">Send Message</button>								
                                </div>
                            </div>
                        </form>	
                    </div>
                </div>
            </div>	
        </section>
        <!-- End contact-page Area -->

        <!-- start footer Area -->
        <jsp:include page="/footer.jsp" />
        <!-- End footer Area -->	
    </body>
</html>