<%@page import="dao.WorkDao"%>
<%@page import="dto.WorkDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	String material = request.getParameter("material");
	String printing = request.getParameter("printing");
	String coating = request.getParameter("coating");
	String stick = request.getParameter("stick");
	String bond = request.getParameter("bond");
	String packing = request.getParameter("packing");
	String fdate = request.getParameter("fdate");
	String ftime = request.getParameter("ftime");
	
	WorkDto workDto = new WorkDto(material,printing,coating,stick,bond,packing,fdate,ftime);
	boolean result = WorkDao.getWorkDao().worksignup(workDto);
	if(result) {
	%>
	<script type="text/javascript"> alert("등록성공")</script>
	<%
	response.sendRedirect("../view/index.jsp");
	}else {
	%>
		<script type="text/javascript"> alert("등록실패")</script>
	<%
	response.sendRedirect("../view/work/signup.jsp");
	}
	%>
</body>
</html>