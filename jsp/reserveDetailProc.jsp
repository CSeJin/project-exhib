<%@page import="exhib.exhibReserveDO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="ervdao" class="exhib.exhibReserveDAO" />
	<%
		request.setCharacterEncoding("utf-8");
	
		String reserve_title = request.getParameter("reserve_title");
		String reserve_date = request.getParameter("reserve_date");
		String id = (String) session.getAttribute("id");
		
		// exhib_register 테이블의 객체를 생성에 데이터 추가하기
		exhibReserveDO ervdo = new exhibReserveDO();
		
		ervdo.setId(id);
		ervdo.setReserve_title(reserve_title);
		ervdo.setReserve_date(reserve_date);
		
		
		if(id.equals("guest")){				// id가 'guest'라면(로그인하지 않았다면)
			response.sendRedirect("login.jsp");	//로그인페이지로 이동
		}
		else{
			ervdao.insertExhibReserve(ervdo);	//예매내역에 추가
			response.sendRedirect("myPage.jsp");// 마이페이지로 이동
		}
		
	%>
</body>
</html>