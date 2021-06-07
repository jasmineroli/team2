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
<title>주문 목록</title>
<style>
table{
	border: 1px solid black;
	border-collapse: collapse;
}
td{
	border: 1px solid black;
	padding: 10px;
	min-width: 80px;
	text-align: right;
}
</style>
</head>
<body>
<table>
<tr>
<td>주문번호</td>
<td>주문상태</td>
<td>구매자 아이디</td>
<td>구매자 성명</td>
<td>구매자 연락처</td>
<td>구매자 주소</td>
<td>상품 번호</td>
<td>상품명</td>
<td>상품종류1</td>
<td>상품종류2</td>
<td>상품옵션</td>
<td>판매량</td>
<td>판매가격</td>
<td>결재수단</td>
<td>주문일시</td>
<td>평점</td>
<td>고객의견</td>
<td>메모</td>
</tr>

<%
	boolean show_orders_success;

	String order_number = request.getParameter("order_number");
	String order_status = request.getParameter("order_status");
	String buyer_id = request.getParameter("buyer_id");
	String buyer_name = request.getParameter("buyer_name");
	String buyer_tel = request.getParameter("buyer_tel");
	String buyer_address = request.getParameter("buyder_address");
	String item_number = request.getParameter("item_number");
	String item_name = request.getParameter("item_name");
	String item_type1 = request.getParameter("item_type1");
	String item_type2 = request.getParameter("item_type2");
	String item_option = request.getParameter("item_option");
	String sell_quantity = request.getParameter("sell_quantity");
	String sell_price = request.getParameter("sell_price");
	String payment_option = request.getParameter("payment_option");
	String order_date = request.getParameter("order_date");
	String assessment_rating = request.getParameter("assessment_rating");
	String assessment_comment = request.getParameter("assessment_comment");
	String memo = request.getParameter("memo");

	try{
		//오라클 DB 접속, scott/tiger
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "scott";
		String password = "tiger";
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection(url, user, password);

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		pstmt = con.prepareStatement("select * from orders");
		rs = pstmt.executeQuery();
		while(rs.next()){
			//있는대로 하나씩 하나씩 출력하자.
			//물품 번호에는 링크를 줘서 수정할 수 있게, 마지막에는 삭제버튼 있어서 삭제하도록
			out.write("<td>"+rs.getInt(1)+"</td>"
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
					+ "<td>"+rs.getString(12)+"</td>"
					+ "<td>"+rs.getString(13)+"</td>"
					+ "<td>"+rs.getString(14)+"</td>"
					+ "<td>"+rs.getString(15)+"</td>"
					+ "<td>"+rs.getString(16)+"</td>"
					+ "<td>"+rs.getString(17)+"</td>"
					+ "<td>"+rs.getString(18)+"</td></tr>"
					);
		}

		show_orders_success = true;
		System.out.println("주문 조회 성공");
	}catch(Exception e){
		show_orders_success = false;
		System.out.println("주문 조회 실패");
	}
%>

</table>

<script>
	if("<%=verified%>" != "verified"){
		alert("관리자로 로그인되지 않았습니다. 관리자로 로그인해주세요.");
		location.href="login.jsp";
	}
	if(<%=show_orders_success%>==true){
		alert("주문 조회 성공");
	}
	if(<%=show_orders_success%>==false){
		alert("주문 조회에 실패했습니다.");
		history.back();
	}
</script>
</body>
</html>