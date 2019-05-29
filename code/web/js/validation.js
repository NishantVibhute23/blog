/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function ValidateEmailID(txtEmailID) {
    var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    if (txtEmailID.value == "") {
        txtEmailID.style.border = "";
        return true;
    } else if (filter.test(txtEmailID.value)) {
        txtEmailID.style.border = "";
        return true;
    } else {
        txtEmailID.style.borderColor = "red";
        return false;
    }
}
function Validatepass(txtpPassword) {
    var regularExpression = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/;
    if (txtpPassword.value == "") {
        txtpPassword.style.border = "";
        return true;
    } else if (regularExpression.test(txtpPassword.value)) {
        txtpPassword.style.border = "";
        return true;
    } else {
        txtpPassword.style.borderColor = "red";
        $(document).ready(function () {
            $('input[rel="txtTooltip"]').tooltip();
        });
        return false;
    }
}

function validatePassword(txtConfPassword) {
    var Password = document.getElementById("password").value;
    var ConfirmPassword = document.getElementById("confirmPassword").value;
    if (txtConfPassword.value == "") {
        txtConfPassword.style.border = "";
        return true;
    } else if (Password == txtConfPassword.value) {
        txtConfPassword.style.border = "";
        return true;
    } else {
        txtConfPassword.style.borderColor = "red";
        return false;
    }
}

var _validFileExtensions = [".jpg", ".jpeg", ".bmp", ".gif", ".png"];
function Validate(oForm) {
    var arrInputs = oForm.getElementsByTagName("input");
    for (var i = 0; i < arrInputs.length; i++) {
        var oInput = arrInputs[i];
        if (oInput.type == "file") {
            var sFileName = oInput.value;
            if (sFileName.length > 0) {
                var blnValid = false;
                for (var j = 0; j < _validFileExtensions.length; j++) {
                    var sCurExtension = _validFileExtensions[j];
                    if (sFileName.substr(sFileName.length - sCurExtension.length, sCurExtension.length).toLowerCase() == sCurExtension.toLowerCase()) {
                        blnValid = true;
                        break;
                    }
                }

                if (!blnValid) {
                    alert("Sorry, " + sFileName + " is invalid, allowed extensions are: " + _validFileExtensions.join(", "));
                    return false;
                }
            }
        }
    }

    return true;
}
