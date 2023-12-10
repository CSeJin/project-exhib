<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{
	margin: 0;
}
#menu {	/* menu id를 가진 태그의 style 지정 */
	background-color: black;
	height: 60px;
	width: 100%;
	margin: 0;
	position: fixed;
	color: white;
}

#menu ul li{
	list-style: none;
	float: left;
	text-align: center;
	line-height: 60px;
}

#menu .link{
	width: 200px;
	text-decoration: none;
	margin: 0 139px;
	color: white;
	font-size: 20px;
	font-weight: bold;
}#menu .link:visited{
	text-decoration: none;
	color: white;
}

#member {
	float: right;
	margin: 17px 10px 0 0;
	font-size: 17px;
	font-weight: bold;
}

#login{
	float: right;
	margin: 10px 50px 0 10px;
	width: 90px;
	height: 40px;
	border-radius: 20px;
	background-color: white;
	color: black;
	font-size:18px;
	font-weight: bold;
}
</style>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");	
	
		String logout = request.getParameter("logout");
		
		if(logout != null){						// logout에 값이 있다면(로그아웃 상태라면)	
			session.setAttribute("id", "guest");	// session의 id를 guest로 생성
		}
			
		String id = (String) session.getAttribute("id");	// session id 값을 가져와 변수 id에 담음
		String passwd = (String) session.getAttribute("passwd");	// session passwd 값을 가져와 변수 passwd에 담음
		
		
		String login_btn = "로그인";	// 로그인 버튼의 기본값을 '로그인'으로 설정
		String login_chk = "";		// 이동할 주소를 담을 변수를 준비
		
		if(id==null || id.equals("guest")){		// 변수 id의 값이 없거나(<-최초 server 연결할 경우) 'geust'라면
			session.setAttribute("id", "guest");	// session의 id 값을 guest로 변경(<-최초 server 연결할 경우)
			session.setAttribute("warning", null);
			login_chk = "login.jsp";	// 로그인 버튼을 login.jsp로 연결
		}
		else{				// 로그인 되어있는 경우(session의 id에 null, guest 이외의 값이 있는 경우)
			login_btn = "로그아웃";	//변수 id의 값이 guest가 아니라면 로그인 버튼의 텍스트를 '로그아웃'으로 설정
			login_chk = "main.jsp?logout=1";	// 로그아웃 버튼을 클릭할 경우 logout 변수에 값을 넘겨주어 not null이 되도록 함
		}
	%>

	<nav id="menu">
		<ul>
			<li>
			     <a href="main.jsp" class="link">
			      <img src="./assets/logo_v2_white.png" width="60" height="60">
			    </a>
			</li>
			<li> <a href="register.jsp" class="link"> 등록 </a> </li>
			<li> <a href="reserve.jsp" class="link"> 예매 </a> </li>
			<li> <a href="myPage.jsp" class="link"> 마이페이지 </a> </li>
		</ul>
	
		<input id ="login" type="button" value=<%=login_btn %> onclick="location.href='<%=login_chk%>'">	
		<p id="member"> <%= id %> 님</p>
	</nav>
</body>
</html>