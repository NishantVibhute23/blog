/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function nextQuestion()
{

    var current = document.getElementById("currentQuestionId").value;

    var totalQ = document.getElementById("totalQuestions").value;

    if (parseInt(totalQ) === parseInt(current))
    {
        alert("End Of Question");
    } else {
        var next = parseInt(current) + 1;
            
        document.getElementById("q" + current).style.display = "none";
        document.getElementById("q" + next).style.display = "block";
        document.getElementById("currentQuestionId").value = next;
        document.getElementById("currentq").innerHTML = next;
    }
}

function prevQuestion()
{
    var current = document.getElementById("currentQuestionId").value;


    if (parseInt(current) === 1)
    {
        alert("Start Of Question");
    } else {
        var prev = parseInt(current) - 1;
        document.getElementById("q" + current).style.display = "none";
        document.getElementById("q" + prev).style.display = "block";
        document.getElementById("currentQuestionId").value = prev;
        document.getElementById("currentq").innerHTML = prev;
    }
}
