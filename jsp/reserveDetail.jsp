<%@page import="exhib.exhibDO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>exhibReserveDetail.com</title>
<style>
.container {
	text-align: center;
}

#back-img {
	width: 100%;
	height: 300px;
	background-image: url("./assets/bg.jpg");
	background-size: cover;
	box-shadow: inset 0 10px 10px black;
}
#title-text {
	text-align: left;
	margin: 30px 0 20px 40px;
	font-size: 40px;
	font-weight: bold;
}

/* 레이아웃 */
#layout {
	padding: 10px;
	width: 700px;
}

/* input */
.date-input {
	width: 200px;
	height: 40px;
	background-color: transparent;
	border: 0;
	border-bottom:3px solid black;
	outline: none;
	color: black;
	font-size: 20px;
	font-weight: bold;
}
::placeholder {
	color: grey;
	font-size: 20px;
	font-weight: bold;
}

/* 전시정보 */
.ex-info {
	margin: 20px 25px;
	font-size: 17px;
	font-weight: bold;
}

/* 버튼 */
.reserve-btn {
	width: 100px;
	height: 45px;
	border-radius: 20px;
	background-color: black;
	color: white;
	font-size: 20px;
	font-weight: bold;
}
</style>
</head>
<body>
	<jsp:useBean id="edao" class="exhib.exhibDAO"/>
	<%
		request.setCharacterEncoding("utf-8");

		String title = request.getParameter("title");
		exhibDO edo = edao.getOneExhib(title);
	%>
	
	<div class="container">
		<%@ include file="nav.jsp"%>
		<div id="back-img"></div>
	</div>
	<br>
	<p id="title-text"> <%= edo.getTitle() %> </p>
	<hr><br>
	
	<table id="layout">
		<tr>
			<td>
				<p class="ex-info">일시: <%= edo.getDate() %></p>
				<p class="ex-info">장소: <%= edo.getPlace() %></p>
			</td>
			<td>
				<form action="reserveDetailProc.jsp" method="post">
					<input type="hidden" name="reserve_title" value="<%=edo.getTitle()%>">
					<input type="text" name="reserve_date" class="date-input" placeholder="0000-00-00">
					<input type="submit" class="reserve-btn" value="예매하기">
				</form>
			</td>
		</tr>
	</table>
	
	
</body>
</html>