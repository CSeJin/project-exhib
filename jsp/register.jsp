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
}

/* -------------- 제목 -------------- */
#title-text {
	text-align: left;
	margin: 30px 0 20px 40px;
	font-size: 40px;
	font-weight: bold;
}
hr {
	margin: 15px 0;
	border: 1px solid black;
}
/* ---- 등록정보 ----- */
.ex-register {
	margin: auto;
	border: 3px solid black;
	text-align: center;
	font-weight: bold;
}
.ex-register-tr {
	height: 60px;
	border: 3px solid black;
}
.ex-register-index {
	width: 170px;
}
.ex-register-info {
	width: 400px;
}
/* ---- input ---- */
.register-input {
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
/* ---- button ----- */
.ex-register-btn {
	margin: 25px 10px;
	width: 90px;
	height: 40px;
	border-radius: 20px;
	background-color: black;
	color: white;
	font-size:18px;
	font-weight: bold;
}
</style>
</head>
<body>
	<!-- exhibMemDO에서 데이터 가져오기 -->
	<jsp:useBean id="emdo" class="exhib.exhibMemDO" scope="application"/>
	<jsp:useBean id="emdao" class="exhib.exhibMemDAO"/>
	<jsp:useBean id="edao" class="exhib.exhibDAO"/>
	<%
		String id_registrant = emdo.getId();
	%>
	

	<%@ include file="nav.jsp" %>
	
	<div id="back-img"></div>
	<br>
	<p id="title-text"> 전시회 등록</p>
	<hr><br>
	
	<!-- 등록 정보 -->
	<form action="registerProc.jsp" method="post">
		<table class="ex-register">
			<tr class="ex-register-tr">
				<td class="ex-register-index"> 전시회명 </td>
				<td class="ex-register-info"> 
					<input type="text" name="register_title" class="register-input">
				</td>
			</tr><tr class="ex-register-tr">
				<td class="ex-register-index"> 일시 </td>
				<td class="ex-register-info"> 
					<input type="text" name="register_date" class="register-input">
				</td>
			</tr><tr class="ex-register-tr">
				<td class="ex-register-index"> 장소 </td>
				<td class="ex-register-info"> 
					<input type="text" name="register_place" class="register-input">
				</td>
			</tr><tr class="ex-register-tr">
				<td colspan="2"> 
					<input type="submit" value="등록하기" class="ex-register-btn">
					<input type="reset" value="취소하기" class="ex-register-btn">
				</td>
			</tr>
			
		</table>
	</form>
</body>
</html>