<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
 <link href="./css/review.css" rel="stylesheet" type="text/css">
</head>
<body>

</body>
</html><body>
	<center>
		<h1>�� �� �� �� ��</h1>
		<form name="form" action="edit_ok.jsp?" method="post">
			<table>
				<tr>
					<td>������</td>
					<td colspan="3"><input type="text" size="55" name="rv_title" value=""> </td>
				</tr>
				<tr>
					<td>����</td>
				<td><input type="file" name=""> </td>
					<td>����</td>
					<td><input type="text" name="b_email" value="" > </td>
				</tr>
			
				<tr>
					<td colspan="4">
						<textarea rows="10" cols="65" name="b_content">

						</textarea> 
					</td>
				</tr>
			
				<tr align="center">
					<td colspan="4">
						<input type="button" value="�ۼ���" onclick="check_ok()"class="write-submit">&nbsp;
						<input type="reset" value="�ٽ��ۼ�"class="write-submit">
						<input type="button" value="�۸��" onclick="location.href='list.jsp?'"class="write-submit" >
					</td>
				</tr>
			</table>
		</form>
	</center>
</body>