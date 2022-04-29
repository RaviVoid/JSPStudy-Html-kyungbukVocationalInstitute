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
<form action="form_membership02.jsp" method="post">
<fieldset style="width:350px;">
<legend>개인정보</legend>
아이디 : <br />
<input name="p_id" placeholder="asdf"><br />
비밀번호 : <br />
<input name="p_pw" placeholder="asdf"><br />
이름 : <br />
<input name="p_name" placeholder="asdf"><br />
연락처 : <br />
<select name="choice">
	<option value="choice">선택</option>
	<option value="KT">KT</option>
	<option value="SK">SK</option>
	<option value="LG">LG</option>
</select>
<input size="3" name="phone1"/>-<input size="3" name="phone2"/>-<input size="3" name="phone3"/>
<br />
<hr>
성별 : <br />
<input type="radio" name="gender" value="남">남
<input type="radio" name="gender" value="여">여
<input type="radio" name="gender" value="개">멍멍이
<input type="radio" name="gender" value="고양이">고양이<br />
취미 : <br />
<input type="checkbox" name="hobby"  value="운동">운동<br />
<input type="checkbox" name="hobby"  value="독서">독서<br />
<input type="checkbox" name="hobby"  value="음악감상">음악감상<br />
<input type="checkbox" name="hobby"  value="여행">여행<br />
<input type="checkbox" name="hobby"  value="잠자기">잠자기<br />
<hr>
본인소개 : <br />
<textarea name="Instroduction">
</textarea>

<br />
<hr>
<button type="submit">Login</button>
<button type="reset">Cancel</button>
</fieldset>
</form>

</body>
</html>