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
	<header>
		<p>green shopping</p>
	</header>
	<hr>
	<center>
	<form action="write_ok.jsp" method="post">
		<table>
			<tr>
				<td>������</td>
				<td colspan="3"><input type="text" name=""></td>
				<te>
			</tr>
			<tr>
				<td>��ǰ��</td>
				<td><input type="text" name="" size="30"> </td>
				<td>
					<div class="warning_msg">������ ������ �ּ���.</div>
          			  <div class="rating">
           			     <!-- �ش� ������ Ŭ���ϸ� �ش� ���� �� ������ ��� ���� üũ�ڽ��� checked ���� -->
              			  <input type="checkbox" name="rating" id="rating1" value="1" class="rate_radio" title="1��">
                <label for="rating1"></label>
                <input type="checkbox" name="rating" id="rating2" value="2" class="rate_radio" title="2��">
                <label for="rating2"></label>
                <input type="checkbox" name="rating" id="rating3" value="3" class="rate_radio" title="3��" >
                <label for="rating3"></label>
                <input type="checkbox" name="rating" id="rating4" value="4" class="rate_radio" title="4��">
                <label for="rating4"></label>
                <input type="checkbox" name="rating" id="rating5" value="5" class="rate_radio" title="5��">
                <label for="rating5"></label>
       		     </div>
				
				</td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="file" name=""> </td>
			</tr>
			<tr>
				<td colspan="4">
					<textarea rows="5" cols="70">
				
					</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="center">
					<input type="button" value="�۾���" onclick="" class="write-submit">&nbsp;
					<input type="reset" value="�ٽ��ۼ�" class="write-submit">&nbsp;
					<input type="button" value="�۸��" onclick="location.href='list.jsp'" class="write-submit">
			</tr>
		
		</table>
	
	</form>
	</center>
	<br><br><br>
	<hr>
<footer>
(��)shopping
</footer>
</body>
</html>