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
	
	<%	
		ArrayList<exhibReserveDO> aListRv = ervdao.getMemExhibReserve(id);	//session에 저장된 아이디로 예매내역을 구함(변수 id는 nav.jsp에 존재)
		ArrayList<exhibRegisterDO> aListRg = ergdao.getMemExhibRegister(id);	//session에 저장된 아이디로 등록내역을 구함
	%>
	
	
	<div id="back-img"></div>
	<br><br>
	
	<!-- 회원정보 -->
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
			<td class="user-info-index"> 예매내역 </td>
			<td class="user-info-info"> 
			<%
				for(int i=0; i<aListRv.size(); i++){
					exhibReserveDO ervdo = aListRv.get(i);
			%>
					<%= ervdo.getReserve_title() %> | <%=ervdo.getReserve_date() %>
					<input type="button" class="user-info-btn" value="취소하기" onclick="location.href='rerserveDeleteProc.jsp?reserve_title=<%= ervdo.getReserve_title() %>'">
					<br>
			<%	
				}
			 %>
			</td>
		</tr><tr class="user-info-tr">
			<td class="user-info-index"> 등록내역 </td>
			<td class="user-info-info"> 
			<%
				for(int i=0; i<aListRg.size(); i++){
					exhibRegisterDO ergdo = aListRg.get(i);
			%>
					<%= ergdo.getRegister_title() %> | <%=ergdo.getRegister_date() %> | <%=ergdo.getRegister_place() %>
					<input type="button" class="user-info-btn" value="삭제하기" onclick="location.href='registerDeleteProc.jsp?register_title=<%= ergdo.getRegister_title() %>'">
					<br>
			<%	
				}
			 %>	
			</td>
		</tr>
		
	</table>
	<div class="container">
		<input type="button" class="edit-btn" onclick="location.href='modify.jsp'" value="수정하기">
	</div>
	
</body>
</html>