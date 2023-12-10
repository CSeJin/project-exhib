<%@page import="exhib.exhibMemDO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="edao" class="exhib.exhibMemDAO"/>
	
	<%
		request.setCharacterEncoding("utf-8");
	
		// login페이지에 입력한 정보 가져오기
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String warning = "";
		
		if(edao.login(id, passwd)){				// DB에 입력된 id와 passwd 회원정보가 존재할 경우
			session.setAttribute("id", id);		// session에 id를 저장함
			session.setAttribute("passwd", passwd);		// session에 passwd를 저장함
			session.setAttribute("warning", null);
			response.sendRedirect("main.jsp");	// main.jsp로 이동
			
		}else{
			warning = "아이디(로그인 전용 아이디) 또는 비밀번호를 잘못 입력했습니다. 입력하신 내용을 다시 확인해주세요.";
			session.setAttribute("warning", warning);	//warning을 session에 저장해 login.jsp로 복귀
			
			session.setAttribute("id", null);		// session의 id, passwd 정보 초기화
			session.setAttribute("passwd", null);
			
			response.sendRedirect("login.jsp");
		}
		
	%>
	
</body>
</html>