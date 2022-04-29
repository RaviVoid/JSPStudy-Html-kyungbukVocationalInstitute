<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Home > Person Information
<hr>
<form action="" method="get">
<fieldset style="width:300px;">
<legend>개인정보</legend>
이름 : <br />
<input name="p_code" placeholder="asdf"><br />
사원코드 : <br />
<input name="e_code" placeholder="asdf"><br />
성별 : <br />
<input type="radio" name="gender">남
<input type="radio" name="gender">여
<input type="radio" name="gender">멍멍이
<input type="radio" name="gender">고양이<br />
취미 : <br />
<input type="checkbox" name="hobby1" >운동<br />
<input type="checkbox" name="hobby2" >독서<br />
<input type="checkbox" name="hobby3" >음악감상<br />
<hr>
언어선택 : <br />
<select name="language">
	<option>선택</option>
	<option>한국어</option>
	<option>중국어</option>
</select>
<br />
<hr>
<button type="submit">Login</button>
<button type="reset">Cancel</button>
</fieldset>
</form>

</body>
</html>