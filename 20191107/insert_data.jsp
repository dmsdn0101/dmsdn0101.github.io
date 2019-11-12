<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>  <!--  insert_data.jsp  -->
<html><head>
<meta http-equipv="Content-Type" content="text/html; charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>JDBC insert_data 실습</title>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection
("jdbc:mysql://localhost:3306/hdbwork","hstud","gkrtod123A!");
Statement stmt = conn.createStatement();
int rec_no = stmt.executeUpdate("INSERT into s20151671 (stud_id,stud_passwd,stud_name,stud_email,stud_gender)
values ('new','1234','newname','new@naver.com','male');");
ResultSet rs = stmt.executeQuery("SELECT * FROM s20151671 where stud_id='new';");
while(re.next()) {
	out.println(rs.getString("stud_id"));
	out.println(rs.getString("stud_passwd"));
}
rs.close();
stmt.close();
conn.close();
%>
</body>
</html>