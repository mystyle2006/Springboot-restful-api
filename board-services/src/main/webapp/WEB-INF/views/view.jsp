<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

<title>View</title>
</head>
<body>
<div class="container">
	<h1 class="display-3">View</h1>
	
	<c:set var="b" value="${board}" />
	
	<div class="card">
		<div class="card-body">
			<b>Title :</b> <c:out value="${b.title}" />
		</div>
	</div>
	<p />
	<div class="card">
		<div class="card-body">
			<b>Writer :</b> <c:out value="${b.name}" />
		</div>
	</div>
	<p />
	<div class="card">
		<div class="card-body">
			<b>Date :</b> <c:out value="${b.date}" />
		</div>
	</div>
	<p />
	<div class="card">
		<h4 class="card-header">Content</h4>
		
		<div class="card-body">
			<c:out value="${b.content}" />
		</div>
	</div>
	<p />
	<div class="text-right">
		<button type="button" class="btn btn-secondary" onclick="location.href='/edit/${b.id}'">Edit</button>
		<button type="button" class="btn btn-danger" onclick="location.href='/delete/${b.id}'">Delete</button>
		<button type="button" class="btn btn-secondary" onclick="location.href='/'">List</button>
	</div>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
</body>
</html>