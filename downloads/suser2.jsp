<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.util.*" %>
<%!
boolean isSessionOn(String str)
{
	if( (str == null) || str.equals("")) return false;
	return true;
}
%>
<!DOCTYPE html>  <!--   suser1.jsp   -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=uft-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>회원 페이지</title>
</head>
<body>
<%
if(!isSessionOn((String)session.getAttribute("sid")) ||
	!isSessionOn((String)session.getAttribute("spasswd")))
{
	out.println("<p> 로그인되지 않았습니다.</p>");
	out.println("<p> <a href=\"slogin.html\">로그인하기</a></p>");
}	else {
	out.println("<p> 두번째 페이지입니다. " +
	(String)session.getAttribute("sid")+ "님 - <a href=\"slogout.jsp\">로그아웃</p>");
	out.println("<p> 첫번째 페이지로이동. " +
	(String)session.getAttribute("sid")+ "님 - <a href=\"suser1.jsp\">첫번째 페이지</a></p>");
}
%>
</body>
</html>