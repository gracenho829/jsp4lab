<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Book</title>
</head>
<body>
	<%@page import="com.book.BookDAO,com.book.Book"%>  
	 
	<%  
	String id=request.getParameter("id");  
	Book u=BookDAO.getRecordById(Integer.parseInt(id));  
	%>  
 

<h1>기록 편집하기</h1>
	
	<form action="editBook.jsp" method="post" accept-charset="utf-8">
	    <div class="form_horizontal">
	      <div class="form-group row">
	      	<input type="hidden" name = "id" value = "<%= u.getId()%>">
			    <label class="col-form-label col-sm-2" for="name">Name</label>
			    <div class="col-sm-8">
			      <input class="form-control" name="name" type="text" value="<%= u.getName()%>">
			    </div>
			</div>
			
		   <div class="form-group row">
			    <label class="col-form-label col-sm-2" for="author">Author</label>
			    <div class="col-sm-7">
			      <input class="form-control"  type="text" name="author" value="<%= u.getAuthor()%>">
			    </div>
			</div>
			
			<div class="form-group row">
			    <label class="col-form-label col-sm-2" for="status">Status</label>
			    <div class="col-sm-10">
			    	 <input type="radio" name="status" value="Plan to Read"/>Plan to Read 
					 <input type="radio" name="status" value="Reading"/>Reading
					 <input type="radio" name="status" value="Finished"/>Finished
					 <input type="radio" name="status" value="Dropped"/>Dropped
					
			    </div>
			</div>
			 <div class="form-group row">
			 <label class="col-form-label col-sm-2"></label>
			  <div class="col-sm-10">
			  <input type="submit" name="" value="Edit Book" class="btn btn-default btn-warning">
			  <a class="btn btn-outline-dark cancel" href="index.jsp">Cancel</a>
	        </div>
	      </div>
    </div>
	</form>  
</body>
</html>