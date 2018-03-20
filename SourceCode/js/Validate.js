
var pattern = new RegExp(/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i);

function validateSuccess(controlId) {
    $('#' + controlId).parent().removeClass('has-error').addClass('has-success');
}

function validateError(controlId, message) {
   var parent= $('#' + controlId).parent()
   parent.addClass('has-error');
   $(parent).append("<small id='msg' class='help-block'>" + message + "</small>");
   $(parent).append("<small id='msgtop' class='help-block positiontop'>" + message + "</small>");
   $('#msg').css("display", "block");
   $('#msgtop').css("display", "block");
   $('#' + controlId).focus();
   setTimeout(function () {
        
       $("#msg").slideUp(1000, function () {
           $("#msg").remove();
           $("#msgtop").remove();
       });
   }, 8000);

}

function YOutubeVideoUrlValidate(txt, msg) {
    if (txt.value != "") {
        var p = /^(?:https?:\/\/)?(?:www\.)?(?:youtu\.be\/|youtube\.com\/(?:embed\/|v\/|watch\?v=|watch\?.+&v=))((\w|-){11})(?:\S+)?$/;
        if (!txt.value.match(p)) {
            validateError(txt.id, msg);
            txt.value ="";
            return false;
        }
    }
}




function MobileValidation(txt, msg) {
    if (txt.value != "") {
        var mobno= txt.value.split(',');
        for (var i = 0; i < mobno.length; i++) {
            {
                if (mobno[i].length < 10 || mobno[i].length > 10) {
                    validateError(txt.id, msg);
                    txt.focus();
                    return false;
                }
                else {
                    validateSuccess(txt.id);
                }
            }
        }
    }
}
function NumberCommaOnly(e) { //------------ onkeypress="NumberCommaOnly(event);"
    if (e.which != 8 && e.which != 0 && e.which!=44 && (e.which < 48 || e.which > 57)) {
        return false;
    }
}

function NumberCommaHyphenOnly(evt) {//------------ onkeypress="NumberCommaHyphenOnly(event);"
    var theEvent = evt || window.event;
    var key = theEvent.keyCode || theEvent.which;
    key = String.fromCharCode(key);
    if (key.length == 0) return;
    var regex = /^[0-9-,\b]+$/;
    if (!regex.test(key)) {
        theEvent.returnValue = false;
        if (theEvent.preventDefault) theEvent.preventDefault();
    }
}

function NumbersOnly(evt) { //------------ onkeypress="NumbersOnly(event);"
    evt = (evt) ? evt : event;
    var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode : ((evt.which) ? evt.which : 0));
    if (charCode == 8)
        return true;
    if (parseInt(charCode) != 13) {
        if (charCode > 31 && charCode < 48 || charCode > 57) {
            return false;
        }
        return true;
    }
    else {
        return false;
    }
}

function validatedate(inputTextId) {
    debugger;
    var inputText = document.getElementById(inputTextId);

    if (inputText.value != "") {
        var dateformat = /^(0?[1-9]|[12][0-9]|3[01])[\/](0?[1-9]|1[012])[\/]\d{4}$/;
        // Match the date format through regular expression  
        if (inputText.value.match(dateformat)) {
            //Test which seperator is used '/' or '-'  
            var opera1 = inputText.value.split('/');
            //var opera2 = inputText.value.split('-');
            lopera1 = opera1.length;
            //lopera2 = opera2.length;
            // Extract the string into month, date and year  
            if (lopera1 > 1) {
                var pdate = inputText.value.split('/');
            }
            //else if (lopera2 > 1) {
            //    var pdate = inputText.value.split('-');
            //}
            var dd = parseInt(pdate[0]);
            var mm = parseInt(pdate[1]);
            var yy = parseInt(pdate[2]);
            // Create list of days of a month [assume there is no leap year by default]  
            var ListofDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
            if (mm == 1 || mm > 2) {
                if (dd > ListofDays[mm - 1]) {
                    validateError(inputText.id, "Invalid Date Format.");
                    return false;
                }
            }
            if (mm == 2) {
                var lyear = false;
                if ((!(yy % 4) && yy % 100) || !(yy % 400)) {
                    lyear = true;
                }
                if ((lyear == false) && (dd >= 29)) {
                    validateError(inputText.id, "Invalid Date Format.");
                    return false;
                }
                if ((lyear == true) && (dd > 29)) {
                    validateError(inputText.id, "Invalid Date Format.");
                    return false;
                }
            }
        }
        else {
            validateError(inputText.id, "Invalid Date Format.");
            inputText.value = "";
            return false;
        }
    }
    return true;
}


function ddmmyyyy(th)  ///Onblur="return validdate(this);"            Validate dd/MM/yyyy Format
{
            var txtmodedate = document.getElementById(th.id);
            if (txtmodedate.value != '') {
                var dateformat = /^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/;
                // Match the date format through regular expression  
                if (txtmodedate.value.match(dateformat)) {
                    //txtmodedate.focus();
                    //Test which seperator is used '/' or '-'  
                    var opera1 = txtmodedate.value.split('/');
                    var opera2 = txtmodedate.value.split('-');
                    lopera1 = opera1.length;
                    lopera2 = opera2.length;
                    // Extract the string into month, date and year  
                    if (lopera1 > 1) {
                        var pdate = txtmodedate.value.split('/');
                    }
                    else if (lopera2 > 1) {
                        var pdate = txtmodedate.value.split('-');
                    }
                    var dd = parseInt(pdate[0]);
                    var mm = parseInt(pdate[1]);
                    var yy = parseInt(pdate[2]);
                    // Create list of days of a month [assume there is no leap year by default]  
                    var ListofDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
                    if (mm == 1 || mm > 2) {
                        if (dd > ListofDays[mm - 1]) {
                            txtmodedate.value = '';
                            alert('Invalid date format!');
                            
                            return false;
                        }
                    }
                    if (mm == 2) {
                        var lyear = false;
                        if ((!(yy % 4) && yy % 100) || !(yy % 400)) {
                            lyear = true;
                        }
                        if ((lyear == false) && (dd >= 29)) {
                            txtmodedate.value = '';
                            alert('Invalid date format!');
                            
                            return false;
                        }
                        if ((lyear == true) && (dd > 29)) {
                            txtmodedate.value = '';
                            alert('Invalid date format!');
                            
                            return false;
                        }
                    }
                }
                else {
                    txtmodedate.value = '';
                    alert('Invalid date format!');
                   
                    //txtmodedate.focus();
                    return false;
                }
            }
        }




function validatefileuploadPdf(fu) {
    debugger;
     var ext = $(fu).val().split('.').pop().toLowerCase();
    if ($.inArray(ext, ['pdf']) == -1) {
        validateError(fu.id, "Please upload only '.pdf' file");
        $('#' + fu.id).val('');
        return false;
    }
    else {
        var size = 1024*1024;
        var file_size = fu.files[0].size;
        if (file_size >= size) {
            $('#' + fu.id).val('');
            validateError(fu.id, 'File Too Large');
            return false;
        }
        
    }
    uploadlogo();
}
function validatefileuploadPdfForHomeWork(fu) {
    debugger;
    var ext = $(fu).val().split('.').pop().toLowerCase();
    if ($.inArray(ext, ['pdf']) == -1) {
        validateError(fu.id, "Please upload only '.pdf' file");
        $('#' + fu.id).val('');
        return false;
    }
    else {
        var size =5 * 1024 * 1024;
        var file_size = fu.files[0].size;
        if (file_size >= size) {
            $('#' + fu.id).val('');
            validateError(fu.id, 'File Too Large');
            return false;
        }

    }
  //  uploadlogo();
}

function ErrorMessage(textMsg, focusControlClintId) {
    $('#errorMsgDIV').css('display', 'block');
    $('#errorMsg').html(textMsg);
    $('#CloseError').focus();
    $('#CloseError').attr('onclick', 'CloseErrorDIV("'+ focusControlClintId +'")');
}

function CloseErrorDIV(focusControlClintId) {
    $('#errorMsgDIV').css('display', 'none');
    if (focusControlClintId != "") {
        $('#' + focusControlClintId).focus();
    }
    return false;
}

function SuccessMessage(textMsg, focusControlClintId) {
    $('#successMsgDIV').css('display', 'block');
    $('#successMessage').html(textMsg);
    $('#CloseSuccess').focus();
    $('#CloseSuccess').attr('onclick', 'CloseSuccessDIV("' + focusControlClintId + '")');
}

function CloseSuccessDIV(focusControlClintId) {
    $('#successMsgDIV').css('display', 'none');
    if (focusControlClintId != "") {
        $('#' + focusControlClintId).focus();
    }
    return false;
}

function OnlyNumber(e) { //------------ onkeypress="return OnlyNumber(event);"
    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
        return false;
    }
}

function NoSpaceKey(e) { //------------ onkeypress="return NoSpaceKey(event);"
    if (e.which == 32) {
        return false;
    }
}

function EnterEvent(e) { //------------ onkeypress="return EnterEvent(event);"
    if (e.which == 32) {
        return false;
    }
    if (e.which == 13) {
        $('#ContentPlaceHolder1_btnSearchAdmnNo').click();
        return false;
    }
}

function CheckEmailFormate(th) { //------------ onblur="return CheckEmailFormate(this);"
    if ($(th).val().trim() != '') {
        if (!pattern.test($(th).val().trim())) {
            validateError(th.id, 'Please enter correct email format');
            $(th).val('');
            return false;
        }
        else
            validateSuccess(th.id);
    }
}

function ChkAll(TableName) {  //------------ onchange="return ChkAll('datatables-1');"
    var gridView = document.getElementById('' + TableName + '');
    var checkBoxes = gridView.getElementsByTagName("input");
    if (checkBoxes[0].type == "checkbox" && checkBoxes[0].checked) {
        for (var i = 1; i < checkBoxes.length; i++) {
            if (checkBoxes[i].type == "checkbox") {
                checkBoxes[i].checked = true;
            }
        }
    }
    else if (checkBoxes[0].type == "checkbox" && checkBoxes[0].checked == false) {
        for (var i = 1; i < checkBoxes.length; i++) {
            if (checkBoxes[i].type == "checkbox") {
                checkBoxes[i].checked = false;
            }
        }
    }
    return false;
}

function ChkDelete(TableName) {
    var gridView = document.getElementById('' + TableName + '');
    var checkBoxes = gridView.getElementsByTagName("input");
    for (var i = 0; i < checkBoxes.length; i++) {
        if (checkBoxes[i].type == "checkbox" && checkBoxes[i].checked) {         
            var r = confirm("Are you sure to delete checked items.");
            if (r == true) {
                validateSuccess(TableName);
                return true;
            }
            else
                return false;
        }
    }
    validateError('' + TableName + '', 'Please select at least one item');
    return false;
}

function DateCheckValidate(startDate, endDate) {
    try {
        var StartDate = startDate;
        var EndDate = endDate;
        var edatearr = EndDate.split('/');
        var eDate = new Date(edatearr[2] + "/" + edatearr[1] + "/" + edatearr[0]);
        var esdatearr = StartDate.split('/');
        var sDate = new Date(esdatearr[2] + "/" + esdatearr[1] + "/" + esdatearr[0]);

        if (StartDate != '' && EndDate != '' && sDate > eDate) {
            return false;
        }
        else {
             return true;
        }
    }
    catch (e) {
        alert(e.message.toString());
        return false;
    }
}
function DateCheck(startDateId, endDateId) 
{
    try {
        var StartDate = document.getElementById(startDateId).value;
        var EndDate = document.getElementById(endDateId).value;
        var edatearr = EndDate.split('/');
        var eDate = new Date(edatearr[2] + "/" + edatearr[1] + "/" + edatearr[0]);
        var esdatearr = StartDate.split('/');
        var sDate = new Date(esdatearr[2] + "/" + esdatearr[1] + "/" + esdatearr[0]);

        if (StartDate != '' && EndDate != '' && sDate > eDate) {
            validateError(endDateId, "Please ensure that the End  is greater than or equal to the Start");
            return false;
        }
        else {
            validateSuccess(endDateId);
            return true;
        }
    }
    catch (e) {
        alert(e.message.toString());
        return false;
    }
}

function setPagingInGridView(v)
{
    debugger;
    try
    {
        var trcolumn = $("#" + v + ">tbody>tr:first").html();
        $("#" + v + ">tbody>tr:first").remove();
        $('#' + v + '').prepend("<thead id='th_data_1'></thead>");
        $('#th_data_1').html('<tr>' + trcolumn + '</tr>');
        $('#' + v).dataTable();
    }
    catch (e) {
       
    }
}


///////////////////// Set GridView Header Fix While Scrolling  (Call In .Cs Page ---------(RunJavaScriptFunction("setfixedHeader('GridView')");)
    function setfixedHeader(v) {
        try {
            $("#"+v).each(function () {
                var grid = $(this).find("table")[0];
                var ScrollHeight = $(this).height();
                var gridWidth = $(this).width() - 20;
                var headerCellWidths = new Array();
                for (var i = 0; i < grid.getElementsByTagName('TH').length; i++) {
                    headerCellWidths[i] = grid.getElementsByTagName('TH')[i].offsetWidth;
                }
                grid.parentNode.appendChild(document.createElement('div'));
                var parentDiv = grid.parentNode; var table = document.createElement('table');
                for (i = 0; i < grid.attributes.length; i++) {
                    if (grid.attributes[i].specified && grid.attributes[i].name != 'id') {
                        table.setAttribute(grid.attributes[i].name, grid.attributes[i].value);
                    }
                }
                table.style.cssText = grid.style.cssText;
                table.style.width = parseInt((gridWidth*100/100)) + 'px';
                table.appendChild(document.createElement('tbody'));
                table.getElementsByTagName('tbody')[0].appendChild(grid.getElementsByTagName('TR')[0]);
                var cells = table.getElementsByTagName('TH');
                var gridRow = grid.getElementsByTagName('TR')[0];
                for (var i = 0; i < cells.length; i++) {
                    var width; if (headerCellWidths[i] > gridRow.getElementsByTagName('TD')[i].offsetWidth) {
                        width = headerCellWidths[i];
                    } else {
                        width = gridRow.getElementsByTagName('TD')[i].offsetWidth;
                    } cells[i].style.width = parseInt(width - 3) + 'px';
                    gridRow.getElementsByTagName('TD')[i].style.width = parseInt(width - 3) + 'px';
                }
                var gridHeight = grid.offsetHeight;
                if (gridHeight < ScrollHeight)
                    ScrollHeight = gridHeight;
                parentDiv.removeChild(grid);
                var dummyHeader = document.createElement('div');
                dummyHeader.appendChild(table); parentDiv.appendChild(dummyHeader);
                var scrollableDiv = document.createElement('div');
                if (parseInt(gridHeight) > ScrollHeight) {
                    gridWidth = parseInt((gridWidth * 100 / 100)) + 17;
                }
                scrollableDiv.style.cssText = 'overflow:auto;height:' + ScrollHeight + 'px;width:' + gridWidth + 'px';
                scrollableDiv.appendChild(grid);
                parentDiv.appendChild(scrollableDiv);
            });
        }
        catch (err) { }
    }
        


function DecimalNumber(evt) { //------------ onkeypress="return DecimalNumber(event);"
    var code = (evt.keyCode) ? evt.keyCode : evt.which;
    if (code == 8)
        return true;
    if (!(code == 46 || code == 13 || (code >= 48 && code <= 57) || code == 9 || code == 8))
        return false;
    else {
        var parts = $(evt.target).val().split('.');
        if (parts.length >= 2) {
            if (parts.length >= 2 && code == 46) //--------- only one dot
                return false;
            if (parts[0].length > 17 && code != 8) //------- max length of numeric value is 18
                return false;
            //else if (parts[1].length >= 2 && code != 8) //------- max length of decimal value is 2
            //    return false;
        }
        else {
            return true;
        }
    }
}

// decimal place no limit
function DecimalNumberNoLimit(evt) { //------------ onkeypress="return DecimalNumberNoLimit(event);"

    debugger;
    var code = (evt.keyCode) ? evt.keyCode : evt.which;
    if (code == 8)
        return true;
    if (!(code == 46 || code == 13 || (code >= 48 && code <= 57) || code == 9 || code == 8))
        return false;
    else {
        var parts = $(evt.target).val().split('.');
        if (parts.length >=3)
        {
            if (parts.length >= 3 && code == 46) //--------- only one dot
                return false;
            if (parts[0].length > 17 && code != 8) //------- max length of numeric value is 18
                return false;
            
        }
        else {
            return true;
        }
    }
}
function CharWithSpaceOnly(evt) {
    evt = (evt) ? evt : event;
    var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode : ((evt.which) ? evt.which : 0));
    if (charCode == 8)
        return true;
    if (parseInt(charCode) != 13) {
        if (charCode > 32 && (charCode < 65 || charCode > 90) && (charCode < 97 || charCode > 122))
            return false;
        return true;
    }
    else {
        return false;
    }
}

function CharWithSpecialChar(event) {
    var regex = new RegExp("^[a-zA-Z?=.*!@#$%^&*)(]+$");
    var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
    if (event.which != 8) {
        if (!regex.test(key)) {
            event.preventDefault();
            return false;
        }
    }

}

function alphaNumeric(e) {
    var keyCode = e.keyCode == 0 ? e.charCode : e.keyCode;
    if (keyCode == 8)
        return true;
    if (keyCode != 13) {
        var ret = ((keyCode >= 48 && keyCode <= 57) || (keyCode >= 65 && keyCode <= 90) || (keyCode >= 97 && keyCode <= 122) || (keyCode == 32));
        return ret;
    }
    else {
        return false;
    }
}

function alphaNumericSpecialChracter(e) {
    var keyCode = e.keyCode == 0 ? e.charCode : e.keyCode;
    if (keyCode == 8)
        return true;
    if (keyCode != 13) {
        var ret = ((keyCode >= 48 && keyCode <= 57) || (keyCode >= 65 && keyCode <= 90) || (keyCode >= 97 && keyCode <= 122) || (keyCode == 32) || (keyCode == 64) || (keyCode == 35) || (keyCode == 36) || (keyCode == 94) || (keyCode == 42) || (keyCode == 40) || (keyCode == 41) || (keyCode == 60) || (keyCode == 62) || (keyCode == 46) || (keyCode == 44) || (keyCode == 58) || (keyCode == 59) || (keyCode == 63) || (keyCode == 126));
        return ret;
    }
    else {
        return false;
    }
}

function validatRdList(rb) {
    var inputs = rb.getElementsByTagName('input');
    var flag = false;
    var selected;
    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].checked) {
            selected = inputs[i];
            flag = true;
            break;
        }
    }
    if (flag) {
        return true;
    }
    else {
        rb.focus();
        return false;
    }
}

function validatChkBox(chk) {
    if (chk.checked) {
        return false;
    }
    else {
        chk.focus();
        return false;
    }
}

function validatChkList(chk) {
    var inputs = chk.getElementsByTagName('input');
    var flag = false;
    var selected;
    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].checked) {
            selected = inputs[i];
            flag = true;
            break;
        }
    }
    if (flag) {
        return true;
    }
    else {
        chk.focus();
        return false;
    }
}

function getcurentDate() {
    var currentDate = new Date()
    var day = currentDate.getDate()
    var month = currentDate.getMonth() + 1
    var year = currentDate.getFullYear()
    var date = day + "/" + month + "/" + year;
    var date1 = changedateformate(date);
    date.replace('/', '-').replace('/', '-');
    return date1.replace('/', '-').replace('/', '-');
}

function SetDecimalVal(th) { //------------ onblur="return SetDecimalVal(this);"
    if ($(th).val().trim() == '')
        return;
    if ($(th).val().split('.').length != 2) {
        $(th).val($(th).val() + '.00');

    }
    else {
        th.value = th.value.toFixed(2);
    }
}
function DeleteDownloadCheck(v) {
    var gridView = document.getElementById(v);
    var checkBoxes = gridView.getElementsByTagName("input");
    for (var i = 1; i < checkBoxes.length; i++) {
        if (checkBoxes[i].type == "checkbox" && checkBoxes[i].checked) {
            var r = confirm("Are you sure to delete checked items.");
            if (r == true) {
                validateSuccess(v);
                return true;
            }
            else
                return false;
        }
    }
    validateError(v, 'Please checked atleast one Record');
    return false;
}

////////////New Function Add

function NumericwithSpecialChracter(event) {
    var regex = new RegExp("^[0-9-!@#$%*+?()]");
    var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
    if (!regex.test(key)) {
        event.preventDefault();
        return false;
    }
}


////// this is for disable multiple submission and backword history//////
function DisableButtons() {
    var inputs = document.getElementsByTagName("INPUT");
    for (var i in inputs) {
        if (inputs[i].type == "button" || inputs[i].type == "submit") {
            inputs[i].disabled = true;
        }
    }
}
window.onbeforeunload = DisableButtons;
window.history.forward();
function noBack() {
    window.history.forward();

}
window.onload = noBack();
function setFixedDisplayData() {
    try {
        debugger;
        $("#datatables-1").wrap("<div class='table-responsive ddd'></div>");
    }
    catch (e) { }
    
}
////// end//////