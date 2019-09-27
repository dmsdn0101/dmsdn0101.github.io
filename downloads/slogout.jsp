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
<title>login</title>
</head>
<body>
<% session.invalidate(); %>
<p>로그아숫 되었습니다.</p>
<p><a href="slogin.html">로그인</a></p>
</body>
</html>