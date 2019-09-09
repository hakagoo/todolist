<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>You know why doing this</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="../resources/js/bootstrap.js"></script>
<link rel="stylesheet" href="../resources/css/bootstrap.css">

<style type="text/css">
html {
	background-color: #21324a;
}
.done {
	margin: 5px;
	padding: 10px;
	width: 350px;
	height: 80px;
	border-radius: 5px;
}

.done:hover {
	opacity: 0.6;
}

.card_name {
	font-weight: bold;
	font-size: 20px;
}

.card_due {
	font-size: 15px;
}
</style>
</head>
<body>
<hr>
	<div class="header">
		<h2 style="padding: 10px; display: inline-block; margin-left: 20px;">${user.user_id }
			  |   Achieve</h2>
	</div>
	<hr>

	<div class="row text-center" style="width: 100%">
		<div style="float: left; margin-left: 30px;">
			<button class="btn btn btn-danger btn-round" style="width: 100%; background-color: #21324a; border-color: #21324a"
				onclick="location.href='view_todolist?user_id=${user.user_id}'">Back
				to Main</button>
		</div>
	</div>

<div class="container">
	<div class="row" style="width: 100%;">
		<div style="width: 25%; float: none; margin: 0 auto">
			<h3 style="text-align: center">What you've done</h3>
			<c:forEach var="achieve" items="${achievelist }">
				<div class="done" style="background-color: #e0e0e0"
					onclick="location.href='detail_achieve?task_id=${achieve.task_id }'">
					<div class="card_name">${achieve.todo }</div>
					<span class="card_due">${achieve.due_date }</span> 
					<a
						href="delete_todolist?task_id=${achieve.task_id}"> <span
						class="glyphicon glyphicon-remove"> </span>
					</a>
					<a
						href="back_done?task_id=${achieve.task_id}"> <span
						class="glyphicon glyphicon-repeat"> </span>
					</a>
				</div>
			</c:forEach>
		</div>
	</div>
</div>

<hr>
</body>
</html>