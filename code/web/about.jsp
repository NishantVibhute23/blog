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
                    <div class="col-lg-6 col-md-6 home-about-left">
                        <img class="img-fluid" src="visitors/img/about-img.png" alt="">
                    </div>
                    <div class="col-lg-5 col-md-6 home-about-right">
                        <h6>About Me</h6>
                        <h1 class="text-uppercase">Personal Details</h1>
                        <p>
                            Here, I focus on a range of items and features that we use in life without giving them a second thought. such as Coca Cola. Dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.
                        </p>
                        <a href="#" class="primary-btn text-uppercase">View Full Details</a>
                    </div>
                    <div class="col-lg-12 pt-60">
                        <p>
                            It won?t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game, it has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale.
                        </p>
                        <p>
                            The quality of today?s video game was not at all there when video game first conceptualized and played ever. During the formulative years, video games were created by using various interactive electronic devices with various display formats. The first ever video game was designed in 1947 by Thomas T. Goldsmith Jr.
                        </p>
                        <h4 class="pt-30">Tools Expertness</h4>
                    </div>
                </div>
                <div class="row skillbar-wraps">
                    <div class="col-lg-6 skill-left">
                        <div class="single-skill">
                            <p>
                                After Effects 85%
                            </p>
                            <div class="skill" data-width="85"></div>
                        </div>
                        <div class="single-skill">
                            <p>
                                Photoshop 90%
                            </p>
                            <div class="skill" data-width="90"></div>
                        </div>
                        <div class="single-skill">
                            <p>
                                Illustrator 70%
                            </p>
                            <div class="skill" data-width="70"></div>
                        </div>
                    </div>
                    <div class="col-lg-6 skill-right">
                        <div class="single-skill">
                            <p>
                                Sublime 95%
                            </p>
                            <div class="skill" data-width="95"></div>
                        </div>
                        <div class="single-skill">
                            <p>
                                Sketch 85%
                            </p>
                            <div class="skill" data-width="85"></div>
                        </div>

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
                        <h1 class="mb-10">My Qualifications</h1>
                        <p>Who are in extremely love with eco friendly system.</p>
                    </div>
                </div>
            </div>
            <ul>
                <s:set var="counter" value="0"/>
                <s:iterator value="qualList">
                    <li>
                        <div class="content">
                            <s:if test="#counter%2!=0 ">
                                <img class="img-fluid mx-auto d-block mb-30" src="visitors/img/about/c-logo.png" alt="">
                            </s:if>
                            <h4>
                                <time><s:property value="courseName"/></time>
                            </h4>
                            <p><b>Session:</b> <s:property value="year"/></p>
                        </div>
                    </li>
                    <s:set var="counter" value="%{#counter+1}"/>
                </s:iterator>
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

        <div class="modal" id="myModalQual">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Update Qualification</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        <s:form action="updateQualification" method="post">
                            <s:iterator value="qualList">
                                <s:hidden name="courseId"/>
                                <s:textfield name="courseName"/>
                                <s:textfield name="courseDesc"/>
                                <s:textfield name="year"/>
                            </s:iterator>
                            <s:submit value="Upload" align="center" />
                        </s:form>
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>

                </div>
            </div>
        </div>

        <!-- start footer Area -->
        <jsp:include page="/footer.jsp" />
        <!-- End footer Area -->

    </body>
</html>