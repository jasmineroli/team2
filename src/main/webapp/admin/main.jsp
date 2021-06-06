<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	//세션 admin이 verified여야 페이지가 보임
	String verified = (String)session.getAttribute("admin");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>관리자 메인 페이지</title>
</head>
<body>
<div id="link" hidden>
<a href="show_items.jsp">상품 관리 페이지</a><br>
<a href="show_items.jsp">매출 관리 페이지</a><br>
<a href="show_items.jsp">상품 관리 페이지</a><br>
</div>
<script>
	if("<%=verified%>" == "verified"){
		document.getElementById("link").hidden = false;
	} else{
		alert("관리자로 로그인되지 않았습니다. 관리자로 로그인해주세요.");
		location.href="login.jsp";
	}
</script>
</body>
</html>