<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.smhrd.model.AllDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="slmanager" class="kr.smhrd.model.SlManagerVO" scope="page"/>
<jsp:setProperty name="slmanager" property="slmanager_id"/>
<jsp:setProperty name="slmanager" property="slmanager_pw"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv= "Content-type" content="text/html; charset=UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
	AllDAO dao = new AllDAO();
	int result = dao.SlManagerlogin(slmanager.getSlmanager_id(), slmanager.getSlmanager_pw());
		if(result == 1){
		PrintWriter script = response.getWriter();
		session.setAttribute("slmanager_id", slmanager.getSlmanager_id());
		script.println("<script>");
		String ID = (String)session.getAttribute("slmanager_id");
		if(ID.equals("admin")){
		script.println("location.href = 'AllList.do'");
		}else{
		script.println("location.href = 'SectionList.do'");
		}
		script.println("</script>");
		
	}
	else if(result ==0){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호가 틀립니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
	else if(result == -1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('존재하지 않는 아이디입니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
	else if(result == -2){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('데이터베이스 오류가 발생했습니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
	%>
</body>
</html>