<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>관리자 로그인</title>
</head>
<body>
<form name="form" method="post" action="login_ok.jsp">
아이디<input type="text" name="id" id="id">
비밀번호<input type="password" name="password" id="password">
<input type="button" name="login" onClick="click_login()" value="로그인">
<script>
function click_login(){
	if(form.id.value == ""){
		form.id.focus();
		alert("아이디를 입력하세요.");
		return;
	}
	if(form.password.value == ""){
		form.password.focus();
		alert("비밀번호를 입력하세요.");
		return;
	}
	form.submit();
}
</script>
</form>
</body>
</html>