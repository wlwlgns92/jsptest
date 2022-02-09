<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form id="signupform" action="../../controller/signupcontroller.jsp" method="get">
	<h3>작업공정등록</h3>
		작업지시번호<input type="text">예) 20190001 <br>
		재료준비 <input type="radio" name="material" value="완료">완료 <input type="radio" name="material" value="작업중"> 작업중	<br>
		인쇄공정 <input type="radio" name="printing" value="완료">완료 <input type="radio" name="printing" value="작업중"> 작업중	<br>
		코팅공정 <input type="radio" name="coating" value="완료">완료 <input type="radio" name="coating" value="작업중"> 작업중	<br>
		합지공정 <input type="radio" name="stick" value="완료">완료 <input type="radio" name="stick" value="작업중"> 작업중	<br>
		접합공정 <input type="radio" name="bond" value="완료">완료 <input type="radio" name="bond" value="작업중"> 작업중	<br>
		포장공정 <input type="radio" name="packing" value="완료">완료 <input type="radio" name="packing" value="작업중"> 작업중	<br>
		최종작업일자 <input type="text" name="fdate"> 예) 20190101 <br>
		최종작업시간 <input type="text" name="ftime"> 예) 1300
		<input type="submit" value="공정등록">
	</form> 
</body>
</html>