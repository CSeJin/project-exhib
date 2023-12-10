<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="emdao" class="exhib.exhibMemDAO" />
	<%
		request.setCharacterEncoding("utf-8");
	
		String id = (String) session.getAttribute("id");	
	
		String new_passwd = request.getParameter("new_passwd");
		session.setAttribute("passwd", new_passwd);
		emdao.modifyPasswd(id, new_passwd);
		
		response.sendRedirect("myPage.jsp");
	%>

</body>
</html>