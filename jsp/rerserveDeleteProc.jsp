<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="ervdao" class="exhib.exhibReserveDAO"/>
	<%
		request.setCharacterEncoding("utf-8");
	
		String reserve_title= request.getParameter("reserve_title");
		
		ervdao.deleteExhibReserve(reserve_title);
		
		response.sendRedirect("myPage.jsp");
	%>
</body>
</html>