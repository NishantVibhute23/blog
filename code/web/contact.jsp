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
        <!--<link rel="stylesheet" href="visitors/css/jquery-ui.css">-->			
        <link rel="stylesheet" href="visitors/css/main.css">
        
        		<!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
		<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css">
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
                <s:if test="#session.login && #session.userBean.userType == 1">
   <table cellpadding="0" cellspacing="0" border="0" class="datatable table table-striped table-bordered">
					<thead>
						<tr>
							<th >Date</th>
							<th>Name</th>
							<th>Email Id</th>
							<th>Subject</th>
							<th>Message</th>
						</tr>
					</thead>
					<tbody>
                                            <s:iterator value="userQueries">
                                                <tr class="gradeA">
                                                    <td width="10%"><s:property value="date"/></td>
							<td width="10%"><s:property value="userName"/></td>
							<td width="20%"><s:property value="userEmail"/></td>
							<td width="25%"><s:property value="messageSubject"/></td>
							<td ><s:property value="messageText"/></td>
						</tr>
                                            </s:iterator>
						
						
					</tbody>
					
				</table>
   <script>
   $(document).ready(function() {
			$('.datatable').dataTable({
                                  "searching": false,
         "paging": true, 
         "info": false,         
         "lengthChange":false ,
          "aaSorting": []
                        });	
			
		});
		</script>
                </s:if>
                <s:else>
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
                                    <input name="userQueryBean.userName" placeholder="Enter your name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" class="common-input mb-20 form-control" value="<s:if test="#session.login"><s:property value="#session.userBean.userName"/></s:if>"required="" type="text">

                                    <input name="userQueryBean.userEmail" placeholder="Enter email address" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" value="<s:if test="#session.login"><s:property value="#session.userBean.useremailId"/></s:if>"class="common-input mb-20 form-control" required="" type="email">

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
                </s:else>
			
            </div>	
        </section>
        <!-- End contact-page Area -->

        <!-- start footer Area -->
        <jsp:include page="/footer.jsp" />
        <!--<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>-->
		<!--<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>-->
                
		<script src="//cdnjs.cloudflare.com/ajax/libs/datatables/1.9.4/jquery.dataTables.min.js"></script>
		<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
		<script type="text/javascript">
		
                          
        <!-- End footer Area -->	
    </body>
</html>