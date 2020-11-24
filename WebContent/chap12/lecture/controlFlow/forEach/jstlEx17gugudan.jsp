<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="i" begin="2" end="9">
 <hr/><h3>${i }단</h3><hr/>
<c:forEach var="j" begin="1" end="9" step="2"> <!-- step은 1 3 5 7 9 즉 시작지점부터 2건너뜀 -->
<h3>${i }&times; ${j } &equals; ${ i *j}</h3>

</c:forEach>
</c:forEach>
</body>
</html>