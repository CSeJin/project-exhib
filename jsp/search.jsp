<%@page import="exhib.exhibDO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>exhib.com</title>
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
/* -------------- 검색 ----------------- */
.search {
	text-align: center;
	margin-top: 30px;
}
/* input */
#search-input {
	width: 400px;
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
	color: black;
	font-size: 20px;
	font-weight: bold;
}

/* 버튼 */
#search-btn {
	width: 70px;
	height: 45px;
	border-radius: 22px;
	background-color: black;
	color: white;
	font-size: 20px;
	font-weight: bold;
}


/* ---- 여백 ---- */
.space{
	height: 100px;
}

/* ----------- 레이아웃 ------------ */
#layout {
	margin: auto;
	padding: 10px;
	/* border: 3px solid black; */
}

#layout td {
	padding:30px;
}

hr {
	margin: 15px 0;
	border: 1px solid black;
}

/* ------------ 카드 --------------- */
.card {
	width: 300px;
	height: 300px;
	border: 3px solid black;
	margin: 15px 15px 20px 15px;
	padding: 20px 30px 15px 0;
}

.card-info {
	list-style: none;
	text-align: left;
}

/* 카드제목 */
.card-title {
	height: 120px;
	font-size: 25px;
	font-weight: bold;
	margin-top: 30px;
	padding: 3px 3px 3px 10px;
}

/* 카드상세정보 */
.card-detail {
	height: 40px;
	margin-top: 10px;
	font-size: 15px;
	font-weight: bold;	
	padding: 3px;
}
/* 링크 디자인 제거 */
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
	<jsp:useBean id="edao" class="exhib.exhibDAO" />
	
	<%@ include file="nav.jsp" %>
	
	<div id="back-img"></div>
	
	<div class="search">
		<form action="search.jsp" method="post">
			<input id="search-input" type="text" name="search" placeholder= "검색어를 입력하세요">
			<input id="search-btn" type="submit" value="검색">
		</form>
	</div>
	<div class="space"></div>
	<!-- --------------------- 조회 결과 ------------------------------ -->
	<table id="layout">
		<%
			request.setCharacterEncoding("utf-8");
		
		String search = (String) request.getParameter("search");
		ArrayList<exhibDO> aList = edao.searchExhib(search);		// 조회한 결과를 ArrayList에 저장
			
			int i = 0;	// 칸을 세기 위한 변수
		%><tr>
		<%
			for(int j=0; j<aList.size(); j++){
				exhibDO edo = aList.get(j);	//aList의 배열을 1개씩 읽어오기
				i++;
		%>		
				<td>
					<a class="link" href="reserveDetail.jsp?title=<%=edo.getTitle()%>">
						<div class="card">
							<ul class="card-info">
								<li class="card-title"> <%= edo.getTitle() %> </li>
								<hr>
								<li class="card-detail"> 일시 &nbsp <%=edo.getDate() %> </li>
								<li class="card-detail"> 장소 &nbsp <%=edo.getPlace() %></li>
							</ul>
						</div>
					</a>
				</td>
		<%			if(i%3 == 0){
		%>				</tr>
		<%				continue;
					}		
			}
		%>

	</table>
	
	<br><br><br><br>
	
</body>
</html>