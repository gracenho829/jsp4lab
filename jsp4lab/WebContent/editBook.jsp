<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Book</title>
</head>
<body>

<%@page import="com.book.BookDAO"%>  
<jsp:useBean id="u" class="com.book.Book"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<% 
System.out.println("****");
System.out.println(u.getStatus());
int i=BookDAO.update(u);  
response.sendRedirect("index.jsp");  
%>  
</body>
</html>