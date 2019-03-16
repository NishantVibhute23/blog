<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
        <link rel="stylesheet" href="visitors/css/nice-select.css">							
        <link rel="stylesheet" href="visitors/css/animate.min.css">
        <link rel="stylesheet" href="visitors/css/owl.carousel.css">			
        <link rel="stylesheet" href="visitors/css/jquery-ui.css">			
        <link rel="stylesheet" href="visitors/css/main.css">

        <script src="js/netsetquestion.js"></script>


    </head>
    <body>	

        <jsp:include page="/header.jsp" />



        <!-- Start services Area -->
        <section class="services-area section-gap">
            <div class="container">

                <div class="row">
                    <input type="hidden" id="isSubmitted" value="<s:property value="isAnswerSubmitted"/>" />
                    <div class="col-lg-12 col-md-12">
                        <s:set var="counter" value="0"/>
                        <s:set var="counterList" value="0"/>
                        <div class="card text-center">
                            <div class="card-header">
                                <div class="row">

                                    <div class="col-lg-6 text-left"  >
                                        Question : <span id="currentq"></span> / <span id="totalq"></span>
                                    </div>
                                    <div id="countdown" class="col-lg-6 text-rigth" >
                                        Remaining Time : 00:00
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <s:form action="submitTest">
                                    <input type="hidden" id="currentQuestionId" value="1"/>

                                    <s:iterator value="questionBeanList">

                                        <input type="hidden"  name="questionBeanList[<s:property value="#counterList"/>].id" value="<s:property value="id"/>" />
                                        <s:set var="counter" value="#counter+1"/>
                                        <s:if test="#counter == 1">
                                            <div id="q<s:property value="#counter"/>" style="display:block ">
                                            </s:if>
                                            <s:else>
                                                <div style="display:none " id="q<s:property value="#counter"/>">
                                                </s:else>
                                                <div class="Row">
                                                    <div  class="col-lg-12  text-left">
                                                        <h6> Q. <s:property value="#counter"/> ) <s:property value="question"/></h6>

                                                    </div>
                                                </div>
                                                        <p>
                                                 <div class="Row">           
                                                     <div  class="col-lg-4  text-left"></div>
                                                      <div  class="col-lg-12  text-left">
                                                <div class="Row">
                                                    <div  class="col-lg-10  text-left">
                                                        <input type="radio" name="questionBeanList[<s:property value="#counterList"/>].answer" value="a"> <s:property value="optionA"/>
                                                    </div>
                                                </div>
                                                <div class="Row">
                                                    <div  class="col-lg-10 text-left">
                                                        <input type="radio" name="questionBeanList[<s:property value="#counterList"/>].answer" value="b"> <s:property value="optionB"/>
                                                    </div>
                                                </div>
                                                <div class="Row">
                                                    <div  class="col-lg-10 text-left">
                                                        <input type="radio" name="questionBeanList[<s:property value="#counterList"/>].answer" value="c"> <s:property value="optionC"/>
                                                    </div>
                                                </div>
                                                <div class="Row">
                                                    <div  class="col-lg-10 text-left">
                                                        <input type="radio" name="questionBeanList[<s:property value="#counterList"/>].answer" value="d"> <s:property value="optionD"/>
                                                    </div>
                                                </div>
                                                </p>
                                                <s:if test="answer!=null">    
                                                    <div class="Row">
                                                        <hr/>
                                                        <div  class="col-lg-12 text-left">
                                                            Correct Answer : <s:property value="answer"/>
                                                        </div>
                                                    </div>
                                                </s:if>

                                            </div>
                                                    </div>
                                                    </div>
                                            <s:set var="counterList" value="#counterList+1"/>
                                        </s:iterator>

                                        <input type="hidden" id="totalQuestions" value="<s:property value="#counter"/>"/>


                                    </div>
                                    <div class="card-footer">
                                        <div class="row">
                                            <div class="col-lg-4 text-left" >
                                                <button type="button" id="butPrev" onclick="prevQuestion()" class="btn btn-primary">&lt;&nbsp;&nbsp; PREV</button>
                                            </div>
                                            <div class="col-lg-4 text-center"  >
                                                <button type="submit" id="butEnd" class="btn btn-danger">END TEST</button>
                                            </div>
                                            <div class="col-lg-4 text-rigth"  >
                                                <button type="button" id="butNext" onclick="nextQuestion()" class="btn btn-success">NEXT &nbsp;&nbsp;&gt;</button>
                                            </div>
                                        </div>
                                    </div>
                                </s:form>        
                            </div>
                        </div>


                    </div>

                </div>
            </div>	
        </section>
        <!-- End services Area -->				

        <div id="resultModal" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Result</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        
                    </div>
                    <div class="modal-body">
                        <p>Total Questions : <s:property value="totalQuestions"/></p><br/>
                        <p>Correctly Answered : <s:property value="correctAnswers"/></p><br/>
                        <p>Incorrectly Answered : <s:property value="wrongAnswers"/></p><br/>
                        <p>Not Attempted : <s:property value="notAttemptedAnswers"/></p><br/>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Show Answers</button>
                        
                    </div>
                </div>

            </div>
        </div>
 <!-- start footer Area -->
        <jsp:include page="/footer.jsp" />
        <!-- End footer Area -->		
    </body>
    <script>
        document.getElementById("currentq").innerHTML = "1";

        document.getElementById("totalq").innerHTML = document.getElementById("totalQuestions").value;

        $(window).on('load', function () {
            var val = document.getElementById("isSubmitted").value;
            
            if (val === "true")
            {
                $('#resultModal').modal('show');
                $('#butEnd').hide();
                
            }else{
                $('#butEnd').show();
                var timer2 = "5:01";
        var interval = setInterval(function () {


            var timer = timer2.split(':');
            //by parsing integer, I avoid all extra string processing
            var minutes = parseInt(timer[0], 10);
            var seconds = parseInt(timer[1], 10);
            --seconds;
            minutes = (seconds < 0) ? --minutes : minutes;
            if (minutes < 0)
                clearInterval(interval);
            seconds = (seconds < 0) ? 59 : seconds;
            seconds = (seconds < 10) ? '0' + seconds : seconds;
            //minutes = (minutes < 10) ?  minutes : minutes;
            $('#countdown').html('Remaining Time : ' + minutes + ' : ' + seconds);
            timer2 = minutes + ':' + seconds;



            if ((seconds <= 0) && (minutes <= 0))
            {
                clearInterval(interval);
                alert("Time Up");
            }


        }, 1000);
            }
        });


        
    </script>
</html>