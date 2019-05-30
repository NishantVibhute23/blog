<%-- 
    Document   : expertsubmitanswer
    Created on : May 30, 2019, 12:15:29 PM
    Author     : nishant.vibhute
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
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
        <title>Reply</title>

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
        <!--<link rel="stylesheet" href="visitors/css/jquery-ui.css">-->			
        <link rel="stylesheet" href="visitors/css/main.css">
        
        		<!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
		<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css">
    </head>
    <body style="background-color:  #f9f9ff;">
        <header id="header">
    <div class="container main-menu">
        <div class="row align-items-center justify-content-between d-flex">
            <div id="logo">
                <a href="index.html"><img src="visitors/img/logoMadhuri.png" alt="" title="" /></a>
            </div>
            
        </div>
    </div>
</header><!-- #header -->
        <section class="relative about-banner">	
            <div class="overlay overlay-bg"></div>
            <div class="container">				
                <div class="row d-flex align-items-center justify-content-center">
                    <div class="about-content col-lg-12">
                        <h1 class="text-white">
                            Submit Your Answer				
                        </h1>	
                        
                    </div>	
                </div>
            </div>
        </section>
        
        <section class="contact-page-area" style="margin-top: 30px">
            <div class="container">
                
                
                <div class="row d-flex justify-content-center">
                    
                    <div class="col-10" style="min-height: 500px;background-color: white;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:20px;padding-bottom: 20px">
                        <form class="form-area contact-form "  action="submitExpertAnswer" method="post">
                            
                            
                            <div class="col-lg-12 form-group" style="margin-top: 30px">
                                    <p style="font-weight: bold;font-size: 15px">Q : <s:property value="expertSubmitAnswer.question"/></p>
<s:hidden name="expertSubmitAnswer.id"/>
<s:hidden name="expertSubmitAnswer.guid"/>
                                </div>
                            <div class="col-lg-12 form-group" >
                                    <textarea style="height: 340px" class="common-textarea form-control" name="expertSubmitAnswer.answer" placeholder="Enter Answer" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Messege'" required=""></textarea>				
                                </div>
                                <div class="col-lg-12">
                                    <div class="alert-msg" style="text-align: left;"></div>
                                    
                                    <button type="submit" class="genric-btn primary" style="float: right;">Submit Reply</button>								
                                </div>
                            
                        </form>	
                        
                        
                        
                    </div>

                    
                    
                </div>
                
			
            </div>	
        </section>
    </body>
</html>
