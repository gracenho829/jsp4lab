<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.book.BookDAO"%>  
<jsp:useBean id="u" class="com.book.Book"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
System.out.println(u.getName());
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