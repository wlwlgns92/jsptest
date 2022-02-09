
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
	margin-left: 15%;
	margin-right: 15%;
}

table, td, th {
	border-collapse: collapse;
	border: 1px solid black;
	text-align: center;
}
;
</style>
</head>
<body>
	<%@include file="../header.jsp"%>

	<%@include file="../nav.jsp"%>


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
		<%
		if (workDtos.size() == 0) {
		%>
		<tr>
			<td style="text-align: center;">게시물이 없습니다.</td>
		</tr>
		<%
		}
		%>
		<%
		for (WorkDto workDto : workDtos) {
		%>
		<tr>
			<td><%=workDto.getNo()%></td>
			<%if (workDto.getMaterial().equals("작업중")) {%>
			<td>-</td>
			<%} else {%>
			<td><%=workDto.getMaterial()%></td>
			<%}	%>
			
			<%if (workDto.getPrinting().equals("작업중")) {%>
			<td>-</td>
			<%} else {%>
			<td><%=workDto.getPrinting()%></td>
			<%}	%>
			
			<%if (workDto.getCoating().equals("작업중")) {%>
			<td>-</td>
			<%} else {%>
			<td><%=workDto.getCoating()%></td>
			<%}	%>
			
			<%if (workDto.getStick().equals("작업중")) {%>
			<td>-</td>
			<%} else {%>
			<td><%=workDto.getStick()%></td>
			<%}	%>
			
			<%if (workDto.getBond().equals("작업중")) {%>
			<td>-</td>
			<%} else {%>
			<td><%=workDto.getBond()%></td>
			<%}	%>
			
			<%if (workDto.getPacking().equals("작업중")) {%>
			<td>-</td>
			<%} else {%>
			<td><%=workDto.getPacking()%></td>
			<%}	%>

			<%
			StringBuffer buffer = new StringBuffer(workDto.getFdate());
			buffer.insert(4, "-");
			buffer.insert(7, "-");

			StringBuffer buffer2 = new StringBuffer(workDto.getFtime());
			buffer2.insert(2, ":");
			%>

			<td><%=buffer.toString()%></td>
			<td><%=buffer2.toString()%></td>
		</tr>
		<%
		}
		%>
	</table>
	<%@include file="../footer.jsp"%>
</body>
</html>