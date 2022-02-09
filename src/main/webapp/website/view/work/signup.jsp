<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#signupform{
text-align: center;
}
</style>
</head>
<body>
	
	<%@include file="../header.jsp" %>

	<%@include file="../nav.jsp" %>
	<form id="signupform" action="../../controller/signupcontroller.jsp" method="get" onsubmit="return work();">
	<h3>작업공정등록</h3>
		작업지시번호<input type="text">예) 20190001 <br>
		재료준비 <input type="radio" id="material1" name="material" value="완료">완료 <input type="radio" id="material2" name="material" value="작업중"> 작업중	<br>
		<div id="materialmsg"></div>
		인쇄공정 <input type="radio" id="printing1" name="printing" value="완료">완료 <input type="radio" id="printing2" name="printing" value="작업중"> 작업중	<br>
		<div id="printingmsg"></div>
		코팅공정 <input type="radio" id="coating1" name="coating" value="완료">완료 <input type="radio" id="coating2" name="coating" value="작업중"> 작업중	<br>
		<div id="coatingmsg"></div>
		합지공정 <input type="radio" id="stick1" value="완료">완료 <input type="radio" id="stick" name="stick2" value="작업중"> 작업중	<br>
		<div id="stickmsg"></div>
		접합공정 <input type="radio" id="bond1" name="bond" value="완료">완료 <input type="radio" id="bond2" name="bond" value="작업중"> 작업중	<br>
		<div id="bondmsg"></div>
		포장공정 <input type="radio" id="packing1" name="packing" value="완료">완료 <input type="radio" id="packing2" name="packing" value="작업중"> 작업중	<br>
		<div id="packingmsg"></div>
		최종작업일자 <input type="date" id="fdate" name="fdate"> 예) 20190101 <br>
		<div id="fdatemsg"></div>
		최종작업시간 <input type="time" id="ftime" name="ftime"> 예) 1300
		<div id="ftimemsg"></div>
		<input type="submit" value="공정등록">
	</form> 
</body>
</html>