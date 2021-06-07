<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String pageNum = request.getParameter("pageNum");
	if(pageNum == null){
		pageNum = "1";
	}
			
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

</head>
<body>
	<center>
		<h1>후기 게시판</h1>
		리뷰를 남겨주세요<br>
		
		
		이번 주 TOP3 후기
		<table border="1" cellspacing="0" width="800">
			<tr>
				<td height="80">
					<img src="">
					1
				</td>
				<td height="80">
					<img src="">
					2
				</td>
				<td height="80">
					<img src="">
					3
				</td>
			</tr>
		</table>
		<br><br>
			 
			<table>
				<tr>
					
					<td align="right">
					<select id="">
                    	 <option>상품</option>
                     	<option value="01">상품</option>
                     	<option value="02">제목</option>
                     	<option value="03">작성자</option>
                	</select>
					<input type="text" name="search">
					<input type ="submit" value="검색">
					<a href="write.jsp?pageNum=<%= pageNum %>">글 쓰 기</a>
					</td>
				</tr>
			</table>
		
			<table width="1000" border="1" cellspacing="0" >
				<tr>
					<td width="40" align="center" >상품명</td>
					<td width="450" align="center">글제목</td>
					<td width="120" align="center">작성자</td>
					<td width="130" align="center">작성일</td>
					<td width="60" align="center">별점</td>
				</tr>
				<tr>
						<td>하의</td>
						<td><a href="show.jsp">바지 구매 후기</a></td>
						<td>admin</td>
						<td>June</td>
						<td>(3.0/5.0)</td>
				</tr>
			
			</table>
			<br><br>
			
		</center>
		<br><br>
		<center>
				페이징
		</center>
</body>
</html>