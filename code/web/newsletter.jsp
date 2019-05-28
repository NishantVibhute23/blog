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
        <!--<link rel="stylesheet" href="visitors/css/font-awesome.min.css">-->
        <link rel="stylesheet" href="visitors/css/bootstrap.css">
        <link rel="stylesheet" href="visitors/css/magnific-popup.css">			
        <link rel="stylesheet" href="visitors/css/nice-select.css">							
        <link rel="stylesheet" href="visitors/css/animate.min.css">
        <link rel="stylesheet" href="visitors/css/owl.carousel.css">			
        <!--<link rel="stylesheet" href="visitors/css/jquery-ui.css">-->			
        <link rel="stylesheet" href="visitors/css/main.css">




        <!--Font Awesome--> 
        <!--<link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">-->
        <!--Ionicons--> 
        <!--<link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">-->
        <!-- Theme style -->
        <link rel="stylesheet" href="visitors/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <!--<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">-->
        <!-- bootstrap wysihtml5 - text editor -->
        <link rel="stylesheet" href="visitors/css/bootstrap3-wysihtml5.min.css">
        <!-- Select2 -->
        <link rel="stylesheet" href="bower_components/select2/dist/css/select2.min.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Google Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">


        <style>
            .my-custom-scrollbar {
                position: relative;
                height: 530px;
                y-overflow: auto;
            }

            .form-group{
                width: 100%;
            }

            .form-group input[type="checkbox"] {
                display: none;
            }

            .form-group input[type="checkbox"] + .btn-group > label span {
                width: 20px;
            }

            .form-group input[type="checkbox"] + .btn-group > label span:first-child {
                display: none;
            }
            .form-group input[type="checkbox"] + .btn-group > label span:last-child {
                display: inline-block;   
            }

            .form-group input[type="checkbox"]:checked + .btn-group > label span:first-child {
                display: inline-block;
            }
            .form-group input[type="checkbox"]:checked + .btn-group > label span:last-child {
                display: none;   
            }
        </style>
        
       






    </head>
    <body>	
        <jsp:include page="/header.jsp" />



        <!-- Start contact-page Area -->
        <section class="contact-page-area section-gap-50">
            <div class="container" style="margin-top: 50px">
                <form action="sendNewsLetter" method="post">
                    <div class="row">
                        <div class="col-md-4" style="padding: 0px">
                            <div class="box box-primary" style="padding-left: 5px;padding-right: 5px">
                                <div class="box-header with-border">
                                    <h4 style="float: left;margin-top: 7px" class="box-title">Send To</h4>
                                    <div style="float: Right">
                                        <div class="[ form-group ]" style="margin:1px">
                                                <input type="checkbox" checked="checked" id="fancy-checkbox-default" autocomplete="off" />
                                                <div class="[ btn-group ]" >

                                                    <label for="fancy-checkbox-default" class="[ btn btn-default active ]" >
                                                        ALL
                                                    </label>
                                                    <label for="fancy-checkbox-default" class="[ btn btn-default ]">
                                                        <span class="[ glyphicon glyphicon-ok ]"></span>
                                                        <span> </span>
                                                    </label>
                                                </div>
                                            </div>
                                    </div>
                                </div>
                                <div class="box-body" style="padding: 0px">
                                    <div class="table-wrapper-scroll-y my-custom-scrollbar">


                                        <s:iterator value="emailIds" status="num">
                                            <div class="[ form-group ]" style="margin:1px">
                                                <input type="checkbox" checked="checked" name="emailIds" value="<s:property/>" id="fancy-checkbox-default<s:property value="%{#num.index}"/>" autocomplete="off" />
                                                <div class="[ btn-group ]" style="width: 100%">

                                                    <label for="fancy-checkbox-default<s:property value="%{#num.index}"/>" class="[ btn btn-default active ]" style="width: 85%">
                                                        <s:property/>
                                                    </label>
                                                    <label for="fancy-checkbox-default<s:property value="%{#num.index}"/>" class="[ btn btn-default ]"style="width: 15%">
                                                        <span class="[ glyphicon glyphicon-ok ]"></span>
                                                        <span> </span>
                                                    </label>
                                                </div>
                                            </div>

                                        </s:iterator>        

                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-8" style="padding: 0px">
                            <div class="box box-primary">
                                <div class="box-header with-border"style="height: 57px">
                                    <h3 class="box-title" style="margin-top: 7px">Compose Newsletter</h3>
                                </div>

                                <!-- /.box-header -->
                                <div class="box-body">
                                    <div class="form-group">

                                        <select class="form-control select2" name="to" multiple="multiple" data-placeholder="To:"
                                                style="width: 100%;">


                                            <s:iterator value="emailIdList">
                                                <option><s:property/></option>
                                            </s:iterator>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <input name="subject" name="subject" class="form-control" placeholder="Subject:">
                                    </div>
                                    <div class="form-group">
                                        <textarea id="compose-textarea" name="body" class="form-control" style="height: 300px">

                                        </textarea>
                                    </div>

                                </div>

                                <!-- /.box-body -->
                                <div class="box-footer">
                                    <div class="pull-right">

                                        <button type="submit" class="btn btn-primary"><i class="fa fa-envelope-o"></i> Send</button>
                                    </div>
                                    <button type="reset" class="btn btn-default"><i class="fa fa-times"></i> RESET</button>
                                </div>

                                <!-- /.box-footer -->
                            </div>
                            <!-- /. box -->
                        </div>
                    </div>

                </form>
            </div>	
        </section>
        <!-- End contact-page Area -->

        <!-- start footer Area -->
        <%--<jsp:include page="/footer.jsp" />--%>
        <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">

        <script src="bower_components/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap 3.3.7 -->
        <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- Select2 -->
        <script src="bower_components/select2/dist/js/select2.full.min.js"></script>

        <script src="bower_components/moment/min/moment.min.js"></script>
        <script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
        <!-- bootstrap datepicker -->
        <script src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
        <!-- bootstrap color picker -->
        <script src="bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
        <!-- bootstrap time picker -->
        <!--<script src="plugins/timepicker/bootstrap-timepicker.min.js"></script>-->
        <!-- SlimScroll -->
        <script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
        <!-- iCheck 1.0.1 -->
        <!--<script src="plugins/iCheck/icheck.min.js"></script>-->
        <!-- FastClick -->
        <script src="bower_components/fastclick/lib/fastclick.js"></script>
        <!--         AdminLTE App 
                <script src="dist/js/adminlte.min.js"></script>
                 AdminLTE for demo purposes 
                <script src="dist/js/demo.js"></script>-->
        <!-- Page script -->
        <script src="js/bootstrap3-wysihtml5.all.min.js"></script>
        <script>


            $(function () {
                //Initialize Select2 Elements
                $('.select2').select2()
                //Add text editor
                $("#compose-textarea").wysihtml5();
            });
            
          
            
            $('#fancy-checkbox-default').change(function() {
        if($(this).is(":checked")) {
           $('input:checkbox').attr('checked','checked');
        }
        else{
             $('input:checkbox').removeAttr('checked');
        }        
    });
           
        </script>


        <!-- End footer Area -->	
    </body>
</html>