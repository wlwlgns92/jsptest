<%@page import="dto.WorkDto"%>
<%@page import="dao.WorkDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	width: 70%;
    margin-left:15%; 
    margin-right:15%;
}
table, td, th {
    border-collapse : collapse;
    border : 1px solid black;
    text-align: center;
};
</style>
</head>
<body>
<%@include file="../header.jsp" %>

<%@include file="../nav.jsp" %>
	<%
	ArrayList<WorkDto> workDtos = WorkDao.getWorkDao().worklist();
	%>
	
	<table id="table">
		<tr>
			<th>번호</th>
			<th>재료</th>
			<th>인쇄</th>
			<th>코팅</th>
			<th>합지</th>
			<th>접합</th>
			<th>포장</th>
			<th>최종일자</th>
			<th>최종시간</th>
		</tr>
		<% for(WorkDto workDto : workDtos) {%>
		<tr>
		<td><%=workDto.getNo() %></td>
		<td><%=workDto.getMaterial() %></td>
		<td><%=workDto.getPrinting() %></td>
		<td><%=workDto.getCoating() %></td>
		<td><%=workDto.getStick() %></td>
		<td><%=workDto.getBond() %></td>
		<td><%=workDto.getPacking() %></td>
		<td><%=workDto.getFdate() %></td>
		<td><%=workDto.getFtime() %></td>
		</tr>
		<%} %>
	</table>
	<%@include file="../footer.jsp" %>
</body>
</html>