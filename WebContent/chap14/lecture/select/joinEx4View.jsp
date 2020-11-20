<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>		
<%@ page import="java.sql.*"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
String grade = request.getParameter("grade");
String sql = " select e.ename from employee e, salgrade s "
+"where e.salary between s.losal and s.hisal "
+"AND s.grade =?";

Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

Connection con = DriverManager.getConnection(url, id, pw);
PreparedStatement stmt = con.prepareStatement(sql);
stmt.setInt(1, Integer.valueOf(grade));

ResultSet rs = stmt.executeQuery();
List<String> list = new ArrayList<>();
while (rs.next()) {
  list.add(rs.getString(1));
}

stmt.close();
con.close();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<title>Insert title here</title> grade입력하여 이름 검색^_^
</head>
<body>
<h1><%= grade  %>등급의 목록</h1>
<%
for(String s: list){
%>
<li><%=s %></li> 

<%
}
%>
<br/>
</body>
</html>
