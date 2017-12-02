<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
<title>Write</title>
</head>
<body>
	<div class="container">
		<h1 class="display-3">Write</h1>
		
	<form action="write_ok" id="write_form" method="post">
		<div class="form-group">
			<label for="ControlTitle">Title</label>
			<input type="text" class="form-control" id="ControlTitle" placeholder="Title" name="title">
		</div>
		<div class="form-group">
			<label for="ControlName">Writer</label>
			<input type="text" class="form-control" id="ControlName" placeholder="Name" name="name">
		</div>
		<div class="form-group">
			<label for="ControlTextarea">Content</label>
			<textarea class="form-control" id="ControlTextarea" rows="3"></textarea>
		</div>
		<div class="text-right">
			<button type="button" id="submit" class="btn btn-warning">Submit</button>
			<button type="button" class="btn btn-secondary" onclick="location.href='/'">List</button>
		</div>
	</form>
	</div>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
	<script>
	$('#submit').click(function(){
		var board = {
			name : $('#ControlName').val(),
			title : $('#ControlTitle').val(),
			content : $('#ControlTextarea').val()
		};
		console.log(board);
		
		$.ajax({
			url: '/write_ok',
			method: 'POST',
			data: JSON.stringify(board),
			contentType: "application/json; charset=utf-8",
			success : function(res){
				location.href="/";
			}
		})
	});
	</script>
</body>
</html>