<%@page import="exhib.exhibRegisterDO"%>
<%@page import="exhib.exhibReserveDO"%>
<%@page import="exhib.exhibDO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>exhibMyPage.com</title>
<style>
*{
	margin: 0;
}

#back-img {
	width: 100%;
	height: 300px;
	background-image: url("./assets/bg.jpg");
	background-size: cover;
	box-shadow: inset 0 10px 10px black;
	margin-bottom: 30px;
}

/* ---- 회원정보 ----- */
.user-info {
	margin: auto;
	border: 9px double black;
	text-align: center;
	font-weight: bold;
	/* background-color: #b1e3af; */
}
.user-info-tr {
	height: 60px;
	border: 3px solid black;
}
.user-info-index {
	width: 200px;
}
.user-info-info {
	width: 600px;
	text-align:left;
}
.user-info-input {
	width: 150px;
	height: 40px;
	margin-bottom: 10px;
	background-color: transparent;
	border: 0;
	border-bottom:3px solid black;
	outline: none;
	color: black;
	font-size: 15px;
	font-weight: bold;
}
.user-info-btn {
	margin: 5px 10px;
	width: 70px;
	height: 30px;
	border-radius: 15px;
	background-color: white;
	color: black;
	font-size: 13px;
	font-weight: bold;
}

/* ---- 수정/삭제 버튼 ----- */
.container {
	margin-top: 20px;
	text-align: center;
}
.edit-btn {
	width: 100px;
	height: 45px;
	border-radius: 20px;
	background-color: white;
	color: black;
	font-size: 20px;
	font-weight: bold;
}
</style>
</head>
<body>
	<!-- exhibMemDO에서 데이터 가져오기 -->
	<jsp:useBean id="emdo" class="exhib.exhibMemDO"/>
	
	<jsp:useBean id="edao" class="exhib.exhibDAO"/>
	<jsp:useBean id="ervdao" class="exhib.exhibReserveDAO" />
	<jsp:useBean id="ergdao" class="exhib.exhibRegisterDAO" />	
	
	<%@ include file="nav.jsp" %>
	
	<div id="back-img"></div>
	<br><br>
	
	<!-- 회원정보 -->
	<form action="modifyProc.jsp" method="post">
		<table class="user-info">
			<tr class="user-info-tr">
				<td class="user-info-index"> 아이디 </td>
				<td class="user-info-info"> 
					<%= id %>
				</td>
			</tr><tr class="user-info-tr">
				<td class="user-info-index"> 비밀번호 </td>
				<td class="user-info-info"> 
					<%= passwd %>
				</td>
			</tr><tr class="user-info-tr">
				<td class="user-info-index"> 새 비밀번호 </td>
				<td class="user-info-info"> 
					<input type="text" class="user-info-input" name="new_passwd">
				</td>
			</tr>
			
		</table>
		<div class="container">
			<input type="submit" class="edit-btn" onclick="location.href='modifyProc.jsp'" value="확인">
			<input type="reset" class="edit-btn" onclick="location.href='myPage.jsp'" value="취소">
		</div>
	</form>
	
</body>
</html>