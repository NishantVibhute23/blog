<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
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

        <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">-->


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
        <section class="banner-area">
            <div class="container">
                <div class="row fullscreen align-items-center justify-content-between">
                    <div class="col-lg-6 col-md-6 banner-left">
                        <h6>This is me</h6>
                        <h1>Dr. Madhuri Sadgir</h1>

                        <p >

                            <s:property value="home.desc1"/>

                            <s:if test="#session.login">
                                <s:if test="#session.userBean.userType == 1">
                                    <a href="#" data-id="2" class="open-uploadDialog-textArea" data-toggle="modal" data-target="#myModalDesc">
                                        <span class="glyphicon glyphicon-pencil" style="color: #ff0040;" title="Edit"></span>
                                    </a>
                                </s:if>
                            </s:if>
                        </p>
                        <a href="#" class="primary-btn text-uppercase">discover now</a>
                    </div>
                    <div class="col-lg-6 col-md-6 banner-right d-flex align-self-end containerP">
                        <img class="img-fluid" src="<s:url action='ImageAction'><s:param name="imageId"><s:property value="home.image"/></s:param></s:url>" alt="" />
                        <s:if test="#session.login">
                            <s:if test="#session.userBean.userType == 1">
                                <div class="buttonP"><a href="#" class="open-uploadDialog" data-id="1" data-toggle="modal" data-target="#myModal"> CHANGE PHOTO </a></div>
                            </s:if>
                        </s:if>


                        <!--<img class="img-fluid" src="visitors/img/hero-img.png" alt="">-->
                    </div>
                </div>
            </div>
        </section>
        <!-- End banner Area -->

        <!-- Start home-about Area -->
        <section class="home-about-area pt-120">
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
                        <h1 class="text-uppercase">Personal Details</h1>
                        <p>
                            <s:property value="personalDetail.desc1"/>
                            <s:if test="#session.login">
                                <s:if test="#session.userBean.userType == 1">
                                    <a href="#" data-id="2" class="open-uploadDialog-textArea" data-toggle="modal" data-target="#myModalDesc">
                                        <span class="glyphicon glyphicon-pencil" style="color: #ff0040;" title="Edit"></span>
                                    </a>
                                </s:if>
                            </s:if>
                        </p>
                        <a href="#" class="primary-btn text-uppercase">View Full Details</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- End home-about Area -->

        <!-- Start services Area -->
        <jsp:include page="/myofferedserviceslist.jsp" />
        <!-- End services Area -->

        <!-- Start fact Area -->
        <section class="facts-area section-gap" id="facts-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 single-fact">
                        <h1 class="counter">2536</h1>
                        <p>Projects Completed</p>
                    </div>
                    <div class="col-lg-3 col-md-6 single-fact">
                        <h1 class="counter">6784</h1>
                        <p>Happy Clients</p>
                    </div>
                    <div class="col-lg-3 col-md-6 single-fact">
                        <h1 class="counter">2239</h1>
                        <p>Cups of Coffee</p>
                    </div>
                    <div class="col-lg-3 col-md-6 single-fact">
                        <h1 class="counter">435</h1>
                        <p>Real Professionals</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- end fact Area -->

        <!-- Start portfolio-area Area -->
        <section class="portfolio-area section-gap" id="portfolio">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="menu-content pb-70 col-lg-8">
                        <div class="title text-center">
                            <h1 class="mb-10">Our Latest Featured Projects</h1>
                            <p>Who are in extremely love with eco friendly system.</p>
                        </div>
                    </div>
                </div>

                <div class="filters">
                    <ul>
                        <li class="active" data-filter="*">All</li>
                        <li data-filter=".vector">Vector</li>
                        <li data-filter=".raster">Raster</li>
                        <li data-filter=".ui">UI/UX</li>
                        <li data-filter=".printing">Printing</li>
                    </ul>
                </div>

                <div class="filters-content">
                    <div class="row grid">
                        <div class="single-portfolio col-sm-4 all vector">
                            <div class="relative">
                                <div class="thumb">
                                    <div class="overlay overlay-bg"></div>
                                    <img class="image img-fluid" src="visitors/img/p1.jpg" alt="">
                                </div>
                                <a href="visitors/img/p1.jpg" class="img-pop-up">
                                    <div class="middle">
                                        <div class="text align-self-center d-flex"><img src="visitors/img/preview.png" alt=""></div>
                                    </div>
                                </a>
                            </div>
                            <div class="p-inner">
                                <h4>2D Vinyl Design</h4>
                                <div class="cat">vector</div>
                            </div>
                        </div>
                        <div class="single-portfolio col-sm-4 all raster">
                            <div class="relative">
                                <div class="thumb">
                                    <div class="overlay overlay-bg"></div>
                                    <img class="image img-fluid" src="visitors/img/p2.jpg" alt="">
                                </div>
                                <a href="visitors/img/p2.jpg" class="img-pop-up">
                                    <div class="middle">
                                        <div class="text align-self-center d-flex"><img src="visitors/img/preview.png" alt=""></div>
                                    </div>
                                </a>
                            </div>
                            <div class="p-inner">
                                <h4>2D Vinyl Design</h4>
                                <div class="cat">vector</div>
                            </div>
                        </div>
                        <div class="single-portfolio col-sm-4 all ui">
                            <div class="relative">
                                <div class="thumb">
                                    <div class="overlay overlay-bg"></div>
                                    <img class="image img-fluid" src="visitors/img/p3.jpg" alt="">
                                </div>
                                <a href="visitors/img/p3.jpg" class="img-pop-up">
                                    <div class="middle">
                                        <div class="text align-self-center d-flex"><img src="visitors/img/preview.png" alt=""></div>
                                    </div>
                                </a>

                            </div>
                            <div class="p-inner">
                                <h4>Creative Poster Design</h4>
                                <div class="cat">Agency</div>
                            </div>
                        </div>
                        <div class="single-portfolio col-sm-4 all printing">
                            <div class="relative">
                                <div class="thumb">
                                    <div class="overlay overlay-bg"></div>
                                    <img class="image img-fluid" src="visitors/img/p4.jpg" alt="">
                                </div>
                                <a href="visitors/img/p4.jpg" class="img-pop-up">
                                    <div class="middle">
                                        <div class="text align-self-center d-flex"><img src="visitors/img/preview.png" alt=""></div>
                                    </div>
                                </a>
                            </div>
                            <div class="p-inner">
                                <h4>Embosed Logo Design</h4>
                                <div class="cat">Portal</div>
                            </div>
                        </div>
                        <div class="single-portfolio col-sm-4 all vector">
                            <div class="relative">
                                <div class="thumb">
                                    <div class="overlay overlay-bg"></div>
                                    <img class="image img-fluid" src="visitors/img/p5.jpg" alt="">
                                </div>
                                <a href="visitors/img/p5.jpg" class="img-pop-up">
                                    <div class="middle">
                                        <div class="text align-self-center d-flex"><img src="visitors/img/preview.png" alt=""></div>
                                    </div>
                                </a>
                            </div>
                            <div class="p-inner">
                                <h4>3D Helmet Design</h4>
                                <div class="cat">vector</div>
                            </div>
                        </div>
                        <div class="single-portfolio col-sm-4 all raster">
                            <div class="relative">
                                <div class="thumb">
                                    <div class="overlay overlay-bg"></div>
                                    <img class="image img-fluid" src="visitors/img/p6.jpg" alt="">
                                </div>
                                <a href="visitors/img/p6.jpg" class="img-pop-up">
                                    <div class="middle">
                                        <div class="text align-self-center d-flex"><img src="visitors/img/preview.png" alt=""></div>
                                    </div>
                                </a>
                            </div>
                            <div class="p-inner">
                                <h4>2D Vinyl Design</h4>
                                <div class="cat">raster</div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <!-- End portfolio-area Area -->

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

        <!-- Start price Area -->
        <section class="price-area section-gap">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="menu-content pb-70 col-lg-8">
                        <div class="title text-center">
                            <h1 class="mb-10">Choose Your Plan</h1>
                            <p>When someone does something that they know that they shouldn?t do, did they.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-6 single-price">
                        <div class="top-part">
                            <h1 class="package-no">01</h1>
                            <h4>Economy</h4>
                            <p class="mt-10">For the individuals</p>
                        </div>
                        <div class="package-list">
                            <ul>
                                <li>Secure Online Transfer</li>
                                <li>Unlimited Styles for interface</li>
                                <li>Reliable Customer Service</li>
                            </ul>
                        </div>
                        <div class="bottom-part">
                            <h1>£199.00</h1>
                            <a class="price-btn text-uppercase" href="#">Buy Now</a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 single-price">
                        <div class="top-part">
                            <h1 class="package-no">02</h1>
                            <h4>Business</h4>
                            <p class="mt-10">For the individuals</p>
                        </div>
                        <div class="package-list">
                            <ul>
                                <li>Secure Online Transfer</li>
                                <li>Unlimited Styles for interface</li>
                                <li>Reliable Customer Service</li>
                            </ul>
                        </div>
                        <div class="bottom-part">
                            <h1>£299.00</h1>
                            <a class="price-btn text-uppercase" href="#">Buy Now</a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 single-price">
                        <div class="top-part">
                            <h1 class="package-no">03</h1>
                            <h4>Premium</h4>
                            <p class="mt-10">For the individuals</p>
                        </div>
                        <div class="package-list">
                            <ul>
                                <li>Secure Online Transfer</li>
                                <li>Unlimited Styles for interface</li>
                                <li>Reliable Customer Service</li>
                            </ul>
                        </div>
                        <div class="bottom-part">
                            <h1>£399.00</h1>
                            <a class="price-btn text-uppercase" href="#">Buy Now</a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 single-price">
                        <div class="top-part">
                            <h1 class="package-no">04</h1>
                            <h4>Exclusive</h4>
                            <p class="mt-10">For the individuals</p>
                        </div>
                        <div class="package-list">
                            <ul>
                                <li>Secure Online Transfer</li>
                                <li>Unlimited Styles for interface</li>
                                <li>Reliable Customer Service</li>
                            </ul>
                        </div>
                        <div class="bottom-part">
                            <h1>£499.00</h1>
                            <a class="price-btn text-uppercase" href="#">Buy Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End price Area -->

        <!-- Start recent-blog Area -->
        <section class="recent-blog-area section-gap">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-8 pb-30 header-text">
                        <h1>Latest posts from our blog</h1>
                        <p>
                            You may be a skillful, effective employer but if you don?t trust your personnel and the opposite, then the chances of improving and expanding the business
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="single-recent-blog col-lg-4 col-md-4">
                        <div class="thumb">
                            <img class="f-img img-fluid mx-auto" src="visitors/img/b1.jpg" alt="">
                        </div>
                        <div class="bottom d-flex justify-content-between align-items-center flex-wrap">
                            <div>
                                <img class="img-fluid" src="visitors/img/user.png" alt="">
                                <a href="#"><span>Mark Wiens</span></a>
                            </div>
                            <div class="meta">
                                13th Dec
                                <span class="lnr lnr-heart"></span> 15
                                <span class="lnr lnr-bubble"></span> 04
                            </div>
                        </div>
                        <a href="#">
                            <h4>Break Through Self Doubt
                                And Fear</h4>
                        </a>
                        <p>
                            Dream interpretation has many forms; it can be done be done for the sake of fun, hobby or can be taken up as a serious career.
                        </p>
                    </div>
                    <div class="single-recent-blog col-lg-4 col-md-4">
                        <div class="thumb">
                            <img class="f-img img-fluid mx-auto" src="visitors/img/b2.jpg" alt="">
                        </div>
                        <div class="bottom d-flex justify-content-between align-items-center flex-wrap">
                            <div>
                                <img class="img-fluid" src="visitors/img/user.png" alt="">
                                <a href="#"><span>Mark Wiens</span></a>
                            </div>
                            <div class="meta">
                                13th Dec
                                <span class="lnr lnr-heart"></span> 15
                                <span class="lnr lnr-bubble"></span> 04
                            </div>
                        </div>
                        <a href="#">
                            <h4>Portable Fashion for
                                young women</h4>
                        </a>
                        <p>
                            You may be a skillful, effective employer but if you don?t trust your personnel and the opposite, then the chances of improving.
                        </p>
                    </div>
                    <div class="single-recent-blog col-lg-4 col-md-4">
                        <div class="thumb">
                            <img class="f-img img-fluid mx-auto" src="visitors/img/b3.jpg" alt="">
                        </div>
                        <div class="bottom d-flex justify-content-between align-items-center flex-wrap">
                            <div>
                                <img class="img-fluid" src="visitors/img/user.png" alt="">
                                <a href="#"><span>Mark Wiens</span></a>
                            </div>
                            <div class="meta">
                                13th Dec
                                <span class="lnr lnr-heart"></span> 15
                                <span class="lnr lnr-bubble"></span> 04
                            </div>
                        </div>
                        <a href="#">
                            <h4>Do Dreams Serve As
                                A Premonition</h4>
                        </a>
                        <p>
                            So many of us are demotivated to achieve anything. Such people are not enthusiastic about anything. They don?t want to work involved.
                        </p>
                    </div>


                </div>
            </div>
        </section>
        <!-- end recent-blog Area -->

        <div class="modal" id="myModal">
            <div class="modal-dialog">
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

        <div class="modal" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Edit Desc</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body-desc">
                        <s:form action="updateDesc" method="post">
                            <s:hidden name="uploadId" id="uploadId"/>
                            <s:if test="uploadId==1">
                                <s:textarea name="desc" label="Enter Description" />
                            </s:if>
                            <s:else>
                                <s:textarea name="desc1" label="Enter Description" />
                                <s:textarea name="desc2" label="Enter Description" />
                            </s:else>

                            <s:submit value="Save" align="center" />
                        </s:form>
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>

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