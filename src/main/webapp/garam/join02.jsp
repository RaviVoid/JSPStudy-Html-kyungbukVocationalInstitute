<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String agree = request.getParameter("agree");
	String method = request.getMethod();//GET , POST
	
	if((agree == null || !agree.equals("Y")) || method.equals("GET")){
	//if((!"Y".equals(agree)) || method.equals("GET")){
%>
<script>
	history.go(-1);
</script>
<%		
	}
%>    
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>회원가입<%=method %></title>
  <link rel="stylesheet" type="text/css" href="style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body class="page07">
    <div class="jointit w100 tC"><b>회원가입</b></div>

    <div class="pd16">
		<form method="post" action="join02Act.jsp">
		<input type="hidden" name="uid" id="uid">
	        <div>
	            <h4>이름</h4>
	            <input type="text" name="uname" id="uname">
	        </div>
	
	        <div>
	            <h4>학교</h4>
	            <input type="text" name="schoolname" id="school">
	        </div>
	
	        <div>
	            <h4>학년/반</h4>
	            <input type="text" name="gradeclass" id="grade">
	        </div>
	
	        <div class="pnum">
	            <div><h4 class="inline">휴대폰번호</h4> <span>(※휴대폰 번호가 ID로 설정됩니다.)</span></div>
	            <input type="text" id="phone1"> - <input type="text" id="phone2"> - <input type="text" id="phone3">
	        </div>
	
	        <div>
	            <h4 class="inline">비밀번호</h4> <span>(※최대 12자리)</span>
	            <input type="password" name="upw" maxlength='12' id="pwd1">
	        </div>
	
	        <div>
	            <h4>비밀번호 확인</h4>
	            <input type="password" maxlength='12' id="pwd2">
	        </div>
	
	        <div>
	            <h4>노선</h4>
	            <div class="sltbox">
	                <select name="route" id="road">
	                    <option value="N">노선선택</option>
	                    <option value="A노선">A노선</option>
	                    <option value="B노선">B노선</option>
	                    <option value="C노선">C노선</option>
	                </select>
	            </div>
	        </div>
	        
	        <div>
	            <h4 class="inline">탑승장소</h4> <span>(※노선을 먼저 선택해주세요)</span>
	            <div class="sltbox">
	                <select name="boardingplace" id="place">
	                    <option value="N">장소선택</option>
	                    <option value="A장소">A장소</option>
	                    <option value="B장소">B장소</option>
	                    <option value="C장소">C장소</option>
	                </select>
	            </div>
	        </div>
	        
	        <div class="jw100 tC">
	            <button type="submit" id="submit">가입하기</button>
	        </div>
        </form>
    </div>
<script>
$(document).ready(function(){
	$("button[type=submit]").on("click", function(){
		var p1 = $("#phone1").val();
		var p2 = $("#phone2").val();
		var p3 = $("#phone3").val();
		$("#uid").val(p1+p2+p3);
		return true;
	});
	
	$('#submit').click(function() {
        if ($('#uname').val() == '') {
            alert('네 이놈! 냉큼 이름을 입력하지 못할까!');
            $('#uname').focus();
            return false;
        }
        if ($('#school').val() == '') {
            alert('네 정녕 학교를 입력하지 않을것이냐?');
            $('#school').focus();
            return false;
 		}
 		if ($('#grade').val() == '') {
 			alert('네 목숨이 중하거든 학년/반을 입력하거라!');
 			$('#grade').focus();
 			return false;
 		}
 		if ($('#phone1').val() == '') {
 			alert('휴대폰번호를 입력 안했다멍.');
 			$('#phone1').focus();
 			return false; 
 		}
 		if ($('#phone2').val() == '') {
 			alert('휴대폰번호를 입력 안했다멍.');
 			$('#phone2').focus();
 			return false; 
 		}
 		if ($('#phone3').val() == '') {
 			alert('휴대폰번호를 입력 안했다멍.');
 			$('#phone3').focus();
 			return false; 
 		}
 		if ($('#pwd1').val() == '') {
 			alert('비밀번호를 입력 안했끼오.');
 			$('#pwd1').focus();
 			return false; 
 		}
 		if ($('#pwd2').val() == '') {
 			alert('비밀번호 확인을 입력 안했음메.');
 			$('#pwd2').focus();
 			return false; 
 		}
 		if ($('#road').val() == 'N') {
 			alert('노선을 선택 안했다냥.');
 			$('#road').focus();
 			return false; 
 		}
 		if ($('#place').val() == 'N') {
 			alert('탑승장소 선택하라 개굴.');
 			$('#place').focus();
 			return false;
 		}
        
	});
	
	
	/* 휴대폰번호 커서 이동 */
    $('#phone1').on('keyup',function(){
        var utelA = $('#phone1').val();
        var utelB = $('#phone2').val();
        
		if (utelA != null && utelA.length == 3) {
			$('#phone2').focus();
		}
    });

    $('#phone2').on('keyup',function(){
        var utelB = $('#phone2').val();
        var utelC = $('#phone3').val();
        
		if (utelB != null && utelB.length == 4) {
			$('#phone3').focus();
		}
    });
    
    $('#phone3').on('keyup',function(){
        var utelC = $('#phone3').val();
        
		if (utelC != null && utelC.length == 4) {
			$('#pwd1').focus();
		}
    });
	
    
    /* 비밀번호 일치 확인 */
 	$('input').focusout(function(){
		
		var pwd1=$('#pwd1').val();
		var pwd2=$('#pwd2').val();
		
		if(pwd1 != '' && pwd2 != ''){
			if(pwd1 != pwd2){
			   
			   alert('비밀번호가 틀리고 말았구나! 다시 입력하여 목숨을 부지하거라!');
			   
			   $("#pwd1").val('');
			   $("#pwd2").val('');
			   
			   $('#pwd1').focus();
			}    
		}
	});
	
});
</script> 


</body>
</html>

