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
.todo {
	margin: 5px;
	padding: 10px;
	width: 350px;
	height: 80px;
	border-radius: 5px;
}

.todo:hover {
	opacity: 0.6;
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
			  |   To-do List</h2>
		<a href="../user/logout">로그아웃</a>
	</div>
	<hr>

	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3 style="display: inline-block;">To-do</h3>
				<a href="add_todolist?user_id=${user.user_id}"> <span
					class="glyphicon glyphicon-plus"> </span>
				</a>
				<c:forEach var="todo" items="${todolist }">
					<c:choose>
						<c:when test="${todo.priority == 1 }">
							<c:set var="color" value="#e67368" />
						</c:when>
						<c:when test="${todo.priority == 2 }">
							<c:set var="color" value="#efd673" />
						</c:when>
						<c:when test="${todo.priority == 3 }">
							<c:set var="color" value="#1abc9c" />
						</c:when>
					</c:choose>
					<div class="todo" style="background-color: ${color}"
						onclick="location.href='detail_todolist?task_id=${todo.task_id }'">
						<div class="card_name">${todo.todo }</div>
						Due date : <span class="card_due">${todo.due_date }</span> <a
							href="send_done?task_id=${todo.task_id }"> <span
							class="glyphicon glyphicon-menu-right"> </span>
						</a>
					</div>
				</c:forEach>
			</div>
			<div class="col-md-6">
				<h3 style="display: inline-block;">Done</h3>
				<c:forEach var="done" items="${donelist }">
					<div class="done" style="background-color: #e0e0e0"
						onclick="location.href='detail_todolist?task_id=${done.task_id }'">
						<div class="card_name">${done.todo }</div>
						Due date : <span class="card_due">${done.due_date }</span> <a
							href="send_todo?task_id=${done.task_id }"> <span
							class="glyphicon glyphicon-menu-left"> </span>
						</a>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<hr>

	<div class="row text-center" style="width: 100%">
		<div style="float: right; margin-right: 20px;">
			<button class="btn btn btn-danger btn-round" style="width: 100%; background-color: #21324a; border-color: #21324a"
				onclick="location.href='achieve_todolist?user_id=${user.user_id}'">Go
				to Achieve</button>
		</div>
	</div>

<hr>

</body>
</html>

