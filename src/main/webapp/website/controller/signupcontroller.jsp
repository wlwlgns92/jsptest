<%@page import="java.time.LocalDateTime"%>
<%@page import="java.sql.Time"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
	
	int no = Integer.parseInt( request.getParameter("no") );
	String material = request.getParameter("material");
	String printing = request.getParameter("printing");
	String coating = request.getParameter("coating");
	String stick = request.getParameter("stick");
	String bond = request.getParameter("bond");
	String packing = request.getParameter("packing");
	String fdate = request.getParameter("fdate");
	String ftime = request.getParameter("ftime");
	
	System.out.println( no );
	System.out.println( material );
	System.out.println( printing );
	System.out.println( coating );
	System.out.println( stick );
	System.out.println( bond );
	System.out.println( packing );
	System.out.println( fdate );
	System.out.println( ftime );
	
	

	WorkDto workDto = new WorkDto( no , material , printing , coating , stick , bond , packing , fdate , ftime  );
	
	
	boolean result = WorkDao.getWorkDao().worksignup(workDto);
	if(result) {
		out.print("<script>alert('등록 완료');</script>");
        out.println("<script>location.href='../view/index.jsp';</script>");
	}else {
		out.print("<script>alert('등록 실패');</script>");
        out.println("<script>location.href='../view/work/signup.jsp';</script>");
	}
	%>
</body>
</html>