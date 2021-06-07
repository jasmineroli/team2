<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%

String id = request.getParameter("u_id");
String pwd = request.getParameter("u_pwd");
if( id.equals("user")){
	if(pwd.equals("1234")){
		session.setAttribute("user","userID");
		%>
		<script type="text/javascript">
		alert("로그인에 성공했습니다.");
		location.href="exMain.jsp";
		</script>
		<%
	}else{
		System.out.println("비밀번호 1234 아님");
	}
		
}else{
	System.out.println("id 는 user <");
	%>
	<script type="text/javascript">
	alert("로그인에 실패했습니다.");
	location.href="exMain.jsp";
	</script>
	<%
}


%>