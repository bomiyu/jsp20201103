<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page buffer="1kb" autoFlush="true"%>
<!-- 임시저장공간 1kb 1kb먼저 보내고 다시 담았다가 2kb될때까지 기다렷다가~~ 보내고~ -->
<!--    autoFlush="false"설정하게되면 1kb이상이면 오류 -->
<%@ page import="java.util.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>

	<%
		for (int i = 0; i < 1000; i++) {
		out.print("lorem ipsum.");
	}
	%>


</body>
</html>