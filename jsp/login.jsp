<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>exhibLogin.com</title>
<style>
* {
	margin:0;
}
/* ----title text ---- */
.title {
	width: 100%;
	height: 70px;
	margin-top: 200px;
	text-align: center;
	font-weight: bold;
	background-color: black;
	color: white;
	font-size: 50px;
	font-style: italic;
}
/* -------- login box -------- */
.login-box {
	margin: auto;
	margin-top: 40px;
	width: 650px;
	border: 3px solid black;
	text-align: center;
	padding: 20px;
}

/* ---- logo ---- */
#logo {
	 width: 100px;
	 height: 100px;
	 margin-left: 20px;
}
/* ---- input ---- */
.user-info-input {
	width: 300px;
	height: 40px;
	margin: 7px;
	background-color: transparent;
	border: 0;
	border-bottom:3px solid black;
	outline: none;
	color: black;
	font-size: 15px;
	font-weight: bold;
}
::placeholder {
	color: black;
	font-size: 15px;
	font-weight: bold;
}

/* ---- button ---- */
.login-btn {
	float: right;
	width: 80px;
	height: 150px;
	border-radius: 35px;
	background-color: black;
	color: white;
	font-size: 15px;
	font-weight: bold;
}

</style>
</head>
<body>
		
	<%
		request.setCharacterEncoding("utf-8");
		String warning = (String)session.getAttribute("warning");
		String warning_visibility = "hidden";
		if(warning != null){
			warning_visibility = "visible";
		}
	%>
	<p class="title"> EXhib </p>
	
	<form action="loginProc.jsp" method="post">
		<table class="login-box">
			<tr>
				<td>
					<a href="main.jsp">
						<img src="./assets/logo_v2.png" id="logo">
					</a>
				</td>
				<td id="user-info">
					<input type="text" name="id" class="user-info-input" placeholder="아이디">
					<input type="password" name="passwd" class="user-info-input" placeholder="비밀번호">
				</td>
				<td>
					<input type="submit" class="login-btn" value="로그인" 
							onclick="location.href='loginProc.jsp'">
				</td>
			</tr>
		</table>
	</form>
	<div class="title" style="margin-top:40px; font-size:20px; color:white;">
		<p style="visibility:<%= warning_visibility%>"> <%=warning %> </p>
	</div>
</body>
</html>