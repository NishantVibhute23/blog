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
                            <s:property value="type"/> TEST				
                        </h1>	
                        <p class="text-white link-nav"><a href="index.html">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="services.html"> Services</a><span class="lnr lnr-arrow-right"></span>  <a href="services.html"> NET/SET Exam Test </a><span class="lnr lnr-arrow-right"></span>   <s:property value="type"/> Exam Test </p>
                    </div>	
                </div>
            </div>
        </section>
        <!-- End banner Area -->	

        <!-- Start services Area -->
        <section class="services-area section-gap-50">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="menu-content  col-lg-7">
                        <div class="title text-center">
                            <h4 class="mb-10">UGC <s:property value="type"/> Mock Tests & Practice Tests for FREE | Available with Limited No. of Questions</h4>

                        </div>
                    </div>
                </div>	

                <div class="row d-flex justify-content-center" >
                    <div class="col-lg-10 ">
                        <div class="card">
                            <div class="card-header text-center">
                                <h4 >Paper I</h4>
                                <s:if test="#session.login">
                                    <s:if test="#session.userBean.userType == 1">
                                        <a style="float: right" href="#" data-id="1" class="open-questionuploadDialog" data-toggle="modal" data-target="#myModalUploadPaper">
                                            Add Question Paper
                                        </a>
                                    </s:if>
                                </s:if>
                            </div>
                            <div class="card-body" style="padding: 0px">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Sr No.</th>
                                            <th>Test</th>
                                            <th>No. of Question</th>
                                            <th>Score</th>
                                            <th>Answer</th>
                                            <th>Test</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <s:iterator value="paperOne" status="status">

                                            <tr>
                                                <td><s:property value="%{#status.index+1}"/></td>
                                                <td><s:property value="name"/></td>
                                                <td><s:property value="totalQuestion"/> Sample Questions</td>
                                                <td> <s:if test="score==''">-</s:if><s:else><s:property value="score"/></s:else> </td>
                                                <td><s:if test="score==''">-</s:if><s:else><button type="button" class="btn btn-primary">Answer</button></s:else></td>
                                                    <td>


                                                    <s:if test="isLoggedIn">
                                                        <a href="starttest?paperId=<s:property value="id"/>" class="btn btn-success">Start Test</a>
                                                    </s:if>
                                                    <s:else>
                                                        <a href="#" class="btn btn-success" data-toggle="modal" data-target="#myModal">Start Test</a>
                                                    </s:else>

                                                </td>
                                                <s:if test="#session.login && #session.userBean.userType == 1">
                                                    <s:if test="!isDeleted " ><td><i class="fa fa-trash" aria-hidden="true"></i></td></s:if>
                                                    <s:else><td><i class="fa fa-undo" aria-hidden="true"></i></td></s:else>
                                                    </s:if>
                                            </tr>

                                        </s:iterator>


                                    </tbody>
                                </table>


                            </div>

                        </div>
                    </div>
                </div>
                            <br>
                             <div class="row d-flex justify-content-center" >
                    <div class="col-lg-10 ">
                        <div class="card">
                            <div class="card-header text-center">
                                <h4 >Paper II</h4>
                                <s:if test="#session.login">
                                    <s:if test="#session.userBean.userType == 1">
                                        <a style="float: right" href="#" data-id="2" class="open-questionuploadDialog" data-toggle="modal" data-target="#myModalUploadPaper">
                                            Add Question Paper
                                        </a>
                                    </s:if>
                                </s:if>
                            </div>
                            <div class="card-body" style="padding: 0px">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Sr No.</th>
                                            <th>Test</th>
                                            <th>No. of Question</th>
                                            <th>Score</th>
                                            <th>Answer</th>
                                            <th>Test</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <s:iterator value="paperTwo" status="status">

                                            <tr>
                                                <td><s:property value="%{#status.index+1}"/></td>
                                                <td><s:property value="name"/></td>
                                                <td><s:property value="totalQuestion"/> Sample Questions</td>
                                                <td> <s:if test="score==''">-</s:if><s:else><s:property value="score"/></s:else> </td>
                                                <td><s:if test="score==''">-</s:if><s:else><button type="button" class="btn btn-primary">Answer</button></s:else></td>
                                                    <td>


                                                    <s:if test="isLoggedIn">
                                                        <a href="starttest?paperId=<s:property value="id"/>" class="btn btn-success">Start Test</a>
                                                    </s:if>
                                                    <s:else>
                                                        <a href="#" class="btn btn-success" data-toggle="modal" data-target="#myModal">Start Test</a>
                                                    </s:else>

                                                </td>
                                                <s:if test="#session.login && #session.userBean.userType == 1">
                                                    <s:if test="!isDeleted " ><td><i class="fa fa-trash" aria-hidden="true"></i></td></s:if>
                                                    <s:else><td><i class="fa fa-undo" aria-hidden="true"></i></td></s:else>
                                                    </s:if>
                                            </tr>

                                        </s:iterator>


                                    </tbody>
                                </table>


                            </div>

                        </div>
                    </div>
                </div>
                            <br>
                             <div class="row d-flex justify-content-center" >
                    <div class="col-lg-10 ">
                        <div class="card">
                            <div class="card-header text-center">
                                <h4 >Paper III</h4>
                                <s:if test="#session.login">
                                    <s:if test="#session.userBean.userType == 1">
                                        <a style="float: right" href="#" data-id="3" class="open-questionuploadDialog" data-toggle="modal" data-target="#myModalUploadPaper">
                                            Add Question Paper
                                        </a>
                                    </s:if>
                                </s:if>
                            </div>
                            <div class="card-body" style="padding: 0px">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Sr No.</th>
                                            <th>Test</th>
                                            <th>No. of Question</th>
                                            <th>Score</th>
                                            <th>Answer</th>
                                            <th>Test</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <s:iterator value="paperThree" status="status">

                                            <tr>
                                                <td><s:property value="%{#status.index+1}"/></td>
                                                <td><s:property value="name"/></td>
                                                <td><s:property value="totalQuestion"/> Sample Questions</td>
                                                <td> <s:if test="score==''">-</s:if><s:else><s:property value="score"/></s:else> </td>
                                                <td><s:if test="score==''">-</s:if><s:else><button type="button" class="btn btn-primary">Answer</button></s:else></td>
                                                    <td>


                                                    <s:if test="isLoggedIn">
                                                        <a href="starttest?paperId=<s:property value="id"/>" class="btn btn-success">Start Test</a>
                                                    </s:if>
                                                    <s:else>
                                                        <a href="#" class="btn btn-success" data-toggle="modal" data-target="#myModal">Start Test</a>
                                                    </s:else>

                                                </td>
                                                <s:if test="#session.login && #session.userBean.userType == 1">
                                                    <s:if test="!isDeleted " ><td><i class="fa fa-trash" aria-hidden="true"></i></td></s:if>
                                                    <s:else><td><i class="fa fa-undo" aria-hidden="true"></i></td></s:else>
                                                    </s:if>
                                            </tr>

                                        </s:iterator>


                                    </tbody>
                                </table>


                            </div>

                        </div>
                    </div>
                </div>

            </div>	
        </section>
        <!-- End services Area -->				


        <div class="modal" id="myModalUploadPaper">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Upload Question Paper</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <s:form action="uploadQuestions" method="post" enctype="multipart/form-data">
                        <!-- Modal body -->
                        <div class="modal-body">

                            <input type="hidden" name="qub.type" value="<s:property value="type"/>"/>
                            <input type="hidden" name="qub.paperType" id="paperType"/>
                            <div class="form-group row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">Test :</label>
                                <div class="col-sm-10">
                                    <input type="text" name="qub.testName" class="form-control" id="exampleFormControlInput1" placeholder="Test number or name">
                                </div>
                            </div>


                            <div class="form-group row">
                                <label for="inputPassword" class="col-sm-2 col-form-label">Type :</label>
                                <div class="col-sm-10" style="padding-top: 6px">
                                    <div class="custom-control custom-radio" >
                                        <input type="radio" id="customRadio1" value="Paid" name="qub.testType" class="custom-control-input" checked="checked">
                                        <label class="custom-control-label" for="customRadio1">Paid</label>
                                    </div>
                                    <div class="custom-control custom-radio">
                                        <input type="radio" id="customRadio2" value="Free" name="qub.testType" class="custom-control-input">
                                        <label class="custom-control-label" for="customRadio2">Free</label>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">File :</label>
                                <div class="col-sm-10">
                                    <s:file name="qub.questions" label="Image" />
                                </div>
                            </div>

                        </s:form>

                        <!-- Modal footer -->
                        <div class="modal-footer" style="justify-content: center !important">
                            <s:submit  cssClass="btn btn-primary" value="Upload" align="center" />
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        </div>

                    </div>
                </div>
            </div>








            <!-- start footer Area -->
            <jsp:include page="/footer.jsp" />
            <!-- End footer Area -->		

            <script>
                $(document).on("click", ".open-questionuploadDialog", function () {
                    var uploadId = $(this).data('id');
                    $(".modal-body #paperType").val(uploadId);
                });
            </script>
    </body>
</html>