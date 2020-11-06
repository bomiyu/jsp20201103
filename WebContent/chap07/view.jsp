<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>		
<% request.setCharacterEncoding("utf-8"); %>
<%
	String code= request.getParameter("code"); //코드라는 이름을 가지는 파라미터를 받아와서 아래 비교시작 
	String viewPageURI = null;
	
	if(code.equals("A")){
		viewPageURI = "viewModule/a.jsp";
	
	}else if(code.equals("B")){
		viewPageURI = "viewModule/b.jsp";
		
	}else if(code.equals("C")){
		viewPageURI = "viewModule/c.jsp";
		
	}
%>
<jsp:forward page="<%= viewPageURI%>"/>