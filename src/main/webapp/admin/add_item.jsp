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
<title>상품 등록</title>
</head>
<body>
<form name="form" method="post" action="add_item_ok.jsp">
<table>
<tr><td>상품명</td>
<td><input type="text" name="item_name"></td></tr>
<tr><td>종류1</td>
<td><input type="text" name="item_type1"></td></tr>
<tr><td>종류2</td>
<td><input type="text" name="item_type1"></td></tr>
<tr><td>옵션</td>
<td><input type="text" name="item_option"></td></tr>
<tr><td>가격</td>
<td><input type="number" name="item_cost"></td></tr>
<tr><td>부가세</td>
<td><input type="number" name="item_discharge_rate"></td></tr>
<tr><td>재고량</td>
<td><input type="number" name="item_remains"></td></tr>
<tr><td>메모</td>
<td><input type="text" name="item_memo"></td></tr>
<tr><td></td><td><input type="button" name="register" value="등록하기" onClick="click_register()"></td></tr>
<script>
function click_register(){
	//각 항목들이 입력되었는 지 검사
}
</script>
</table>
</form>
<script>
	if("<%=verified%>" != "verified"){
		alert("관리자로 로그인되지 않았습니다. 관리자로 로그인해주세요.");
		location.href="login.jsp";
	}
</script>
</body>
</html>