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
body {
	background-color: white;
}
/* -------------- 제목 -------------- */
#title-text {
	text-align: left;
	margin: 30px 0 20px 40px;
	font-size: 40px;
	font-weight: bold;
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

	<jsp:useBean id="edao" class="exhib.exhibDAO"/>
	
	<br>
	<p id="title-text"> 전시회 </p>
	
	<hr><br>
	
	<table id="layout">
		<%
			request.setCharacterEncoding("utf-8");
			ArrayList<exhibDO> aList = edao.getAllExhib();	// exhib의 데이터를 담을 배열리스트 준비
			
			int i = 0;	// 칸을 세기 위한 변수
		%>		<tr>
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