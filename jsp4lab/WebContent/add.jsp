<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
  <title>Add a New Book</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  </head>
<body>
<h1>새로운 책 추가하기</h1>
<form action="addbook.jsp" method="post" accept-charset="utf-8">
  <div class="form-horizontal">

    <div class="form-group row">
    <label class="col-form-label col-sm-2" for="name">Title</label>
    <div class="col-sm-8">
      <input class="form-control" type="text" name="name">
    </div>
</div>

<div class="form-group row">
    <label class="col-form-label col-sm-2" for="author">Author</label>
    <div class="col-sm-7">
      <input class="form-control" type="text" name="author">
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
        <input type="submit" value="Save" class="btn btn-default btn-success">
        <a href="index.jsp" class="btn btn-outline-dark cancel">Cancel</a>
      </div>
    </div>
  </div>
</form>


</body>

</html>

