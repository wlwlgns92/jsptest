<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#menu li {
	display: inline;
}

#navdiv {
	background-color: blue;
	color: white;
}
a:link{
color: white;
}
</style>
</head>
<body>
	<div id="navdiv">
		<ul id="menu">
			<li><a href="#">제품조회</a></li>
			<li><a href="#">작업지시서조회</a></li>
			<li><a href="/jsptest/website/view/work/signup.jsp">작업공정등록</a></li>
			<li><a href="/jsptest/website/view/work/list.jsp">작업공정조회</a></li>
			<li><a href="#">홈으로</a></li>
		</ul>
	</div>
</body>
</html>