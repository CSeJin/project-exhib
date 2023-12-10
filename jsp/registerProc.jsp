<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="ergdo" class="exhib.exhibRegisterDO" />
	<jsp:useBean id="ergdao" class="exhib.exhibRegisterDAO" />
	<jsp:useBean id="edao" class="exhib.exhibDAO" />
	<jsp:useBean id="edo" class="exhib.exhibDO" />

	<%
		request.setCharacterEncoding("utf-8");
	
		String register_title = request.getParameter("register_title");
		String register_date = request.getParameter("register_date");
		String register_place = request.getParameter("register_place");
		String id = (String) session.getAttribute("id");
		
		// exhib_register에 등록정보 추가
		ergdo.setId(id);
		ergdo.setRegister_title(register_title);
		ergdo.setRegister_date(register_date);
		ergdo.setRegister_place(register_place);

		ergdao.insertExhibRegister(ergdo);
		
		// exhib에 전시정보 추가
		edo.setTitle(register_title);
		edo.setDate(register_date);
		edo.setPlace(register_place);
		
		edao.insertExhib(edo);
		
		// main.jsp로 이동
		response.sendRedirect("myPage.jsp");
		
	%>

</body>
</html>