<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.book.BookDAO"%> 
<%
    request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 
<jsp:useBean id="u" class="com.book.Book"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  

 System.out.println("")
<%  
System.out.println(u.getName());
 System.out.println("안뇽!");
BookDAO BOOKDAO = new BookDAO();
int i=BookDAO.save(u);  
if(i>0){  
response.sendRedirect("index.jsp");  
}else{  
response.sendRedirect("addbook-error.jsp");  
}  
%>  
</body>
</html>