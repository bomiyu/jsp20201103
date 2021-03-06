<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.io.IOException, java.io.FileReader" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>소스보기</title>
</head>
<body>
<%
FileReader reader=null;
try{
    String path= "/chap12/use_out_tag.jsp";
    reader=new FileReader(application.getRealPath(path));
    %>
    
    <pre>
    소스코드 = <%=path %>
    <c:out value="<%=reader %>" escapeXml="true"> </c:out>
    
    </pre>
    
    <%
}catch(IOException ex){
    %>
    에러:<%= ex.getMessage() %>
    
    <%
    }finally{ 
        
        if(reader != null)
        try{
        reader.close();
        } catch(IOException ex){}
    }

%>
</body>
</html>