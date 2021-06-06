<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
<title>판매 물품 목록</title>
</head>
<body>
<table id="items">
<tr><td><a href="add_item.jsp">상품 등록</a></td></tr>
<tr>
<td>상품번호</td>
<td>상품명</td>
<td>종류1</td>
<td>종류2</td>
<td>옵션</td>
<td>가격</td>
<td>부가세</td>
<td>할인률</td>
<td>판매량</td>
<td>재고량</td>
<td>등록일</td>
<td>메모</td>
</tr>

<%
	//오라클 DB 접속, scott/tiger
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String password = "tiger";
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection(url, user, password);

	PreparedStatement pstmt = null;
	ResultSet rs = null;

	pstmt = con.prepareStatement("select * from items");
	rs = pstmt.executeQuery();
	if(rs.next()){
		//있는대로 하나씩 하나씩 출력하자.
		//물품 번호에는 링크를 줘서 수정할 수 있게, 마지막에는 삭제버튼 있어서 삭제하도록
		out.write("<td><a href='edit_item.jsp?item_number="+rs.getInt(1)+"'>"+rs.getInt(1)+"</a></td>"
				+ "<td>"+rs.getString(2)+"</td>"
				+ "<td>"+rs.getString(3)+"</td>"
				+ "<td>"+rs.getString(4)+"</td>"
				+ "<td>"+rs.getString(5)+"</td>"
				+ "<td>"+rs.getInt(6)+"</td>"
				+ "<td>"+rs.getInt(7)+"</td>"
				+ "<td>"+rs.getInt(8)+"</td>"
				+ "<td>"+rs.getInt(9)+"</td>"
				+ "<td>"+rs.getString(10)+"</td>"
				+ "<td>"+rs.getString(11)+"</td>"
				+ "<td><a href='delete_item_ok.jsp?item_number"+rs.getInt(1)+"'>상품 삭제</a></td></tr>"
				);
	}
%>

</table>
<script>
	if("<%=verified%>" != "verified"){
		alert("관리자로 로그인되지 않았습니다. 관리자로 로그인해주세요.");
		location.href="login.jsp";
	}
</script>
</body>
</html>