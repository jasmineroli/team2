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
		<h1>�ı� �Խ���</h1>
		���並 �����ּ���<br>
		
		
		�̹� �� TOP3 �ı�
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
                    	 <option>��ǰ</option>
                     	<option value="01">��ǰ</option>
                     	<option value="02">����</option>
                     	<option value="03">�ۼ���</option>
                	</select>
					<input type="text" name="search">
					<input type ="submit" value="�˻�">
					<a href="write.jsp?pageNum=<%= pageNum %>">�� �� ��</a>
					</td>
				</tr>
			</table>
		
			<table width="1000" border="1" cellspacing="0" >
				<tr>
					<td width="40" align="center" >��ǰ��</td>
					<td width="450" align="center">������</td>
					<td width="120" align="center">�ۼ���</td>
					<td width="130" align="center">�ۼ���</td>
					<td width="60" align="center">����</td>
				</tr>
				<tr>
						<td>����</td>
						<td><a href="show.jsp">���� ���� �ı�</a></td>
						<td>admin</td>
						<td>June</td>
						<td>(3.0/5.0)</td>
				</tr>
			
			</table>
			<br><br>
			
		</center>
		<br><br>
		<center>
				����¡
		</center>
</body>
</html>