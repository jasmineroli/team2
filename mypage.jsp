<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%	String name = (String)session.getAttribute("name");
	if (session.getAttribute("name") == null) {
		
%>
<jsp:forward page="Login.jsp"></jsp:forward>
<%-- �� �ڵ� �츮�� �α��� �������� main.jsp�� ������  --%>
<%
	}
%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body>
	<%=name %>�� �ȳ��ϼ���!
	<%
	session.invalidate();
	%>
	
</body>
</html>