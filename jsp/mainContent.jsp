<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
#container {
	height: 600px;	/*  메인컨텐츠 높이 지정 */
	width: 100%;
	/* background-color: #7ccc8b; */
	background-image: url("./assets/bg.jpg");
	background-size: cover;
	padding-top: 10px;
}

/* --------------- 로고 이미지 --------------- */
#logo {
	height: 200px;
	margin: 170px 30px 10px 30px;
	display: block;
}

/* ---------------- 로고텍스트 ---------------- */
.text {
	text-align: center;
	font-weight: bold;
	color: white;
	text-shadow: 1px 1px 20px black;
}

#title{
	font-size: 50px;
	font-style: italic;
	text-decoration: underline;
}
#subtitle{
	font-size: 20px;
}

/* -------------- 검색 ----------------- */
.search {
	margin-top: 30px;
	position: relative;
}
/* input */
#search-input {
	width: 400px;
	height: 40px;
	background-color: transparent;
	border: 0;
	border-bottom:3px solid white;
	outline: none;
	color: white;
	font-size: 20px;
	font-weight: bold;
}
::placeholder {
	color: white;
	font-size: 20px;
	font-weight: bold;
}

/* 버튼 */
#search-btn {
	width: 70px;
	height: 45px;
	border-radius: 22px;
	background-color: white;
	color: black;
	font-size: 20px;
	font-weight: bold;
	position: absolute;
	bottom:0px;
}
</style>
</head>
<body>
	<div id="container">
		<div id="logo">
			<img src="./assets/logo_v2.png" width="200" height="200">
		</div>
		<p class="text" id="title"> EXhib </p>
		<p class="text" id="subtitle"> 일상의 탈출구 </p>
		
		<div class="search">
			<form action="search.jsp" method="post">
				<input id="search-input" type="text" name="search" placeholder= "검색어를 입력하세요">
				<input id="search-btn" type="submit" value="검색">
			</form>
		</div>
	</div>
</body>
</html>