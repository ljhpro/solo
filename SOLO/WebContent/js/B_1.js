function joinidck() {
	var id =document.getElementById("joinnickname");
	
	
	if(id.value==""){
		alert("아이디를 입력해주세요.");
		
		id.focus();
		return;
	}
	
	
}
function joinpwck(){
	var pw =document.getElementById("joinpwd").value;
	if(pw==""){
		alert("비밀번호를 입력해 주세요.");
		pw.focus();
		return;
	}
	
	var checkNumber = pw.search(/[0-9]/g);
	var checkEnglish = pw.search(/[a-z]/ig);

	if(checkNumber <0 || checkEnglish <0){
	alert("숫자와 영문자를 혼용하여야 합니다.");
	pw.focus();
	return false;
	}
	if(/(\w)\1\1\1/.test(pw)){
	alert('444같은 문자를 4번 이상 사용하실 수 없습니다.');
	pw.focus();
	return false;
	}
	if(pw.length < 8 || pw.length > 15){
		  alert("8자리 ~ 15자리 이내로 입력해주세요.");
		  return false;
		 }
		
}

function addOptionElement(id, startVal, endVal) {
    var selectElement = document.getElementById(id);
    for(var i=startVal; i<=endVal; i++) {
        var optionElement = document.createElement("option");
        if(!+"\v1") {  // for IE
            optionElement.value = i;
            optionElement.text = i;
            selectElement.add(optionElement);
        } else {
            optionElement.setAttribute("value", i);
            optionElement.appendChild(document.createTextNode(i));
            selectElement.appendChild(optionElement);
        }
    }
}


function deleteOptionElements(id) {
    var node = document.getElementById(id);
    if(!node) return;
    while(node.childNodes.length > 0) {
        var childNode = node.childNodes.item(0);
        if(childNode.parentNode) childNode.parentNode.removeChild(childNode);
    }
}


function setSelectValue(id, value) {
    var selectElement = document.getElementById(id);
    for(var i=0; i<selectElement.options.length; i++) {
        if(selectElement.options[i].value == value) {
            selectElement.options[i].selected = "selected";
        }
    }
}


function setYearData(id) {
    addOptionElement(id, 1950, 2017);
}


function setMonthData(id) {
    addOptionElement(id, 1, 12);
}


function setDayData(id, year, month) {
    var date = new Date(year, month, 1);
    date.setDate(0);
    var lastDay = date.getDate();
    addOptionElement(id, 1, lastDay);
}


function setSelectDate(yearId, monthId, dayId, year, month, day) {
    setYearData(yearId);
    setMonthData(monthId);
    
    if(year && month && day) {
        setDayData(dayId, year, month);
    } else {
        var date = new Date();
        year = date.getFullYear();
        month = date.getMonth()+1;
        day = date.getDate();
        setDayData(dayId, year, month);
    }

   
    setSelectValue(yearId, parseInt(year));
    setSelectValue(monthId, parseInt(month));
    setSelectValue(dayId, parseInt(day));
}


function updateSelectDate(yearId, monthId, dayId) {
    deleteOptionElements(dayId);
    setDayData(dayId, document.getElementById(yearId).value, document.getElementById(monthId).value);
}
window.onload = function() {
   
    setSelectDate("toYear", "toMonth", "toDay", 1992, 7, 11); 
}
function autoHypenPhone(str){
    str = str.replace(/[^0-9]/g, '');
    var tmp = '';
    if( str.length < 4){
        return str;
    }else if(str.length < 7){
        tmp += str.substr(0, 3);
        tmp += '-';
        tmp += str.substr(3);
        return tmp;
    }else if(str.length < 11){
        tmp += str.substr(0, 3);
        tmp += '-';
        tmp += str.substr(3, 3);
        tmp += '-';
        tmp += str.substr(6);
        return tmp;
    }else{              
        tmp += str.substr(0, 3);
        tmp += '-';
        tmp += str.substr(3, 4);
        tmp += '-';
        tmp += str.substr(7);
        return tmp;
    }
    return str;
}

var cellPhone = document.getElementById('cellPhone');
cellPhone.onkeyup = function(event){
event = event || window.event;
var _val = this.value.trim();
this.value = autoHypenPhone(_val) ;
}
function join(){
	var id= document.getElementById("joinnickname").value;
	var idck= document.getElementById("idck").value;
	var name= document.getElementById("joinname").value;
	var pw= document.getElementById("joinpwd").value;
	var pwck= document.getElementById("joinpwdck").value;
	var phone= document.getElementById("cellPhone").value;
	var birth= document.getElementById("toYear").value +"/"+ document.getElementById("toMonth").value +"/"+ document.getElementById("toMonth").value;
	 alert(id);
	$.ajax({
		"url":"/joinmember?id="+id+"&pw="+pw+"&name="+name+"&phone="+phone+"&birth="+birth,
		"method":"post"
	}).done(function(rst) {
		
		if(rst=="YYYY") {
			
		}else {
			
		}
	})
	
}
