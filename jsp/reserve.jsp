<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>exhibReserve.com</title>
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


/* 링크 */
.link{
	text-decoration: none;
	color: black;
}
.link:visited{
	text-decoration: none;
	color: black;
}
</style>
</head>
<body>

	<div class="container">
		<%@ include file="nav.jsp"%>
		
		<div id="back-img"></div>
		
		
		<%@ include file="card.jsp" %>
	</div>

</body>
</html>