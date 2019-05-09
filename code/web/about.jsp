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
        <!--<link rel="stylesheet" href="visitors/css/jquery-ui.css">-->
        <link rel="stylesheet" href="visitors/css/nice-select.css">
        <link rel="stylesheet" href="visitors/css/animate.min.css">
        <link rel="stylesheet" href="visitors/css/owl.carousel.css">
        <link rel="stylesheet" href="visitors/css/main.css">






        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">
        <link rel="stylesheet" href="visitors/css/gallery-grid.css">
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.1/themes/base/jquery-ui.css">
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

            $(document).on("click", ".open-uploadDialog-delete", function () {
                var courseId = $(this).data('id');

                $(".modal-body-del #courseId").val(courseId);


                // As pointed out in comments,
                // it is unnecessary to have to manually call the modal.
                // $('#addBookDialog').modal('show');
            });
            
            
            
            $(document).on("click", ".open-photoDialog-delete", function () {
                var courseId = $(this).data('id');

                $(".modal-body-photo-del #courseId").val(courseId);


                // As pointed out in comments,
                // it is unnecessary to have to manually call the modal.
                // $('#addBookDialog').modal('show');
            });


            $(document).on("click", ".open-uploadDialog-edit", function () {
                var id = $(this).data('todo').courseId;
                var name = $(this).data('todo').name;
                var desc = $(this).data('todo').desc;
                var year = $(this).data('todo').year;


                $(".modal-body-edit #courseId").val(id);
                $(".modal-body-edit #courseName").val(name);
                $(".modal-body-edit #courseDesc").val(desc);
                $(".modal-body-edit #courseYear").val(year);


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
        <section class="home-about-area section-gap-50">
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

        <!-- Start testimonial Area -->
        <section class="testimonial-area section-gap-50">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="menu-content pb-70 col-lg-8">
                        <div class="title text-center">
                            <h1 class="mb-10">My Tweets</h1>
                            <hr>
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

        <!-- start photos section -->
        <section class="portfolio-area section-gap" id="portfolio">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="menu-content pb-20 col-lg-8">
                        <div class="title text-center">
                            <h1 class="mb-10">My Photos <s:if test="#session.login">
                                <s:if test="#session.userBean.userType == 1">
                                    <a   href="#" class="open-uploadDialog-edit" data-toggle="modal" data-target="#myModalUploadPhoto" >

                                        <i title="ADD NEW" class="fa fa-plus-square-o "  style="color: green" aria-hidden="true"></i>
                                    </a>
                                </s:if>
                            </s:if>
                        </h1>
                            <hr>
                        </div>
                    </div>
                </div>



                <div class="filters-content">
                    <div class="row grid">
                        <s:iterator value="photoNames" status="statusVar">
                            <div class="single-portfolio col-sm-4 all vector">
                                <div class="relative">
                                    <div class="thumb">
                                        <div class="overlay overlay-bg"></div>
                                        <img class="image img-fluid" src="<s:url action='ImageAction'><s:param name="imageId"><s:property /></s:param></s:url>" alt="">
                                            </div>
                                            <a href="<s:url action='ImageAction'><s:param name="imageId"><s:property /></s:param></s:url>" class="img-pop-up">	
                                                <div class="middle">
                                                    <div class="text align-self-center d-flex"><img src="visitors/img/preview.png" alt=""></div>
                                                </div>
                                            </a>                              		
                                        </div>
                                        <div class="p-inner">
                                    <s:if test="#session.login">
                                <s:if test="#session.userBean.userType == 1">
                                    <a   href="#" data-id="<s:property />" class="open-photoDialog-delete" data-toggle="modal" data-target="#myModalPhotoDelete">
                                            <i title="DELETE" class="fa fa-trash fa-lg" style="color: red" aria-hidden="true"></i>
                                        </a>
                                </s:if>
                            </s:if>
                                </div>

                            </div>
                        </s:iterator>

                    </div>
                </div>

            </div>
        </section>

        <!-- end photo section -->
        <!-- Start timeline Area -->
        <section class="timeline pb-120 section-gap-50">
            <div class="text-center">
                <div class="menu-content pb-70">
                    <div class="title text-center">
                        <h1 class="mb-10">My Qualifications
                            <s:if test="#session.login">
                                <s:if test="#session.userBean.userType == 1">
                                    <a   href="#" data-id="2" class="open-uploadDialog-edit" data-toggle="modal" data-target="#myModalQual" data-todo='{"courseId":0,"name":"","desc":"","year":""}'>

                                        <i title="ADD NEW" class="fa fa-plus-square-o "  style="color: green" aria-hidden="true"></i>
                                    </a>
                                </s:if>
                            </s:if>
                        </h1>


                    </div>
                </div>
            </div>
            <ul>
                <s:set var="counter" value="0"/>
                <s:iterator value="qualList">
                    <li>
                        <div class="content">

                            <h4>
                                <time><s:property value="courseName"/></time>
                            </h4>
                            <p><s:property value="courseDesc"/></p>
                            <s:if test="#session.login">
                                <s:if test="#session.userBean.userType == 1">
                                    <div style="float: right">
                                        <a  id="editQual<s:property value="courseId"/>" href="#" data-id="2" class="open-uploadDialog-edit" data-toggle="modal" data-todo='{"courseId":<s:property value="courseId"/>,"name":"<s:property value="courseName"/>","desc":"<s:property value="courseDesc"/>","year":"<s:property value="year"/>"}' data-target="#myModalQual">
                                            <i title="EDIT" class="fa fa-pencil fa-lg" style="color: red" aria-hidden="true"></i>
                                        </a>
                                        &nbsp;
                                        <a   href="#" data-id="<s:property value="courseId"/>" class="open-uploadDialog-delete" data-toggle="modal" data-target="#myModalDelete">
                                            <i title="DELETE" class="fa fa-trash fa-lg" style="color: red" aria-hidden="true"></i>
                                        </a>

                                    </div>
                                </s:if>
                            </s:if>
                        </div>
                    </li>
                    <s:set var="counter" value="%{#counter+1}"/>
                </s:iterator>
            </ul>
        </section>

        <!-- End timeline Area -->




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


        <div class="modal" id="myModalQual">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Add Qualification</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body-edit">
                        <div class="container">
                            <s:form action="updateQualification" method="post">
                                <s:hidden name="qualification.courseId" id="courseId"/>
                                <div class="form-group">
                                    <label for="email">Title</label>
                                    <s:textarea name="qualification.courseName" id="courseName" cssClass="form-control" rows="2"/>
                                </div>
                                <div class="form-group">
                                    <label for="email">Detail Description:</label>
                                    <s:textarea name="qualification.courseDesc" id="courseDesc" cssClass="form-control" rows="3"  />
                                </div>

                                <div class="form-group">
                                    <label for="email">Year</label>
                                    <s:select name="qualification.year" id="courseYear" cssClass="form-control" headerKey="-1" headerValue="Select" list="yearList" />
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

        <div id="myModalDelete" class="modal fade">
            <div class="modal-dialog modal-confirm">
                <div class="modal-content">
                    <div class="modal-header">

                        <h4 class="modal-title">Are you sure?</h4>	
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <s:form action="deleteQualification">
                        <div class="modal-body-del">
                            <div class="container">
                                <p>Do you really want to delete these records? This process cannot be undone.</p>
                                <s:hidden name="courseId" id="courseId"/>
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
        
        <div id="myModalPhotoDelete" class="modal fade">
            <div class="modal-dialog modal-confirm">
                <div class="modal-content">
                    <div class="modal-header">

                        <h4 class="modal-title">Are you sure?</h4>	
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <s:form action="deletePhoto">
                        <div class="modal-body-photo-del">
                            <div class="container">
                                <p>Do you really want to delete this Photo? This process cannot be undone.</p>
                                <s:hidden name="ImageId" id="courseId"/>
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

        <div class="modal" id="myModalUploadPhoto">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Upload Photo</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        <s:form action="uploadMyPhoto" method="post" enctype="multipart/form-data">
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
        
        <!-- start footer Area -->
        <jsp:include page="/footer.jsp" />
        <!-- End footer Area -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
        <script>
            baguetteBox.run('.tz-gallery');
        </script>
    </body>
</html>