<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.book.BookDAO,com.book.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>2021 BookList</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<%  
List<Book> list=BookDAO.getAllRecords();  
request.setAttribute("list",list);  
%>  
  

<div class="container">
<!-- <img src="./img/geometric.jpg"/> -->
<h1>2021 Book List</h1>


<div class="table-responsive-sm">
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Title</th>
        <th>Author</th>
        <th>Status</th>
        <th class="d-print-none">
          <a class="btn btn-sm btn-success" href="add.jsp">Add</a>
        </th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${list}" var="u">  
      <tr>
      	<td>${u.getName()}</td>
      	<td>${u.getAuthor()}</td>  
		<td>${u.getStatus()}</td> 
		 <td class="d-print-none">
				<a class="btn btn-sm btn-warning" href="edit.jsp?id=${u.getId()}">Edit</a>
				<a class= "btn btn-sm btn-danger" href="deleteBook.jsp?id=${u.getId()}">Delete</a>
		</td>  
		</tr>
	</c:forEach> 
    </tbody>
  </table>
</div>



    <footer>
      <p>© 2020 - 노은솔</p>
    </footer>

  </div>


</body>
</html>