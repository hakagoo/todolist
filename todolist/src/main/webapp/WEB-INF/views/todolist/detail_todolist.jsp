<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>You know why doing this</title>
<style type="text/css">
html {
	background-color: #21324a;
}

body {
	font-family: "Poppins", sans-serif;
	height: 50vh;
}

a {
	color: #92badd;
	display: inline-block;
	text-decoration: none;
	font-weight: 400;
}

h2 {
	text-align: center;
	font-size: 16px;
	font-weight: 600;
	display: inline-block;
	margin: 40px 8px 10px 8px;
	color: #cccccc;
}

/* STRUCTURE */
.wrapper {
	display: flex;
	align-items: center;
	flex-direction: column;
	justify-content: center;
	width: 100%;
	min-height: 100%;
	padding: 20px;
}

#formContent {
	-webkit-border-radius: 10px 10px 10px 10px;
	border-radius: 10px 10px 10px 10px;
	background: #fff;
	padding: 30px;
	width: 90%;
	max-width: 450px;
	position: relative;
	padding: 0px;
	-webkit-box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.3);
	box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.3);
}

#content, #reason{
	background: #fff;
	width: 80%;
	max-width: 450px;
	position: relative;
	padding: 10px;
}



.formFooter {
	background-color: #f6f6f6;
	border-top: 1px solid #dce8f1;
	padding: 10px;
	text-align: center;
	-webkit-border-radius: 0 0 10px 10px;
	border-radius: 0 0 10px 10px;
}

#formHeader {
	border-top: 1px solid #dce8f1;
	padding: 10px;
	text-align: center;
	-webkit-border-radius: 10px 10px 0 0;
	border-radius: 10px 10px 0px 0px;
}

/* TABS */
h2.inactive {
	color: #cccccc;
}

h2.active {
	color: #0d0d0d;
	border-bottom: 2px solid #5fbae9;
}

/* ANIMATIONS */

/* Simple CSS3 Fade-in-down Animation */
.fadeInDown {
  -webkit-animation-name: fadeInDown;
  animation-name: fadeInDown;
  -webkit-animation-duration: 1s;
  animation-duration: 1s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
}

@-webkit-keyframes fadeInDown {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
  100% {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

@keyframes fadeInDown {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
  100% {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

/* Simple CSS3 Fade-in Animation */
@-webkit-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@-moz-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@keyframes fadeIn { from { opacity:0; } to { opacity:1; } }

.fadeIn {
  opacity:0;
  -webkit-animation:fadeIn ease-in 1;
  -moz-animation:fadeIn ease-in 1;
  animation:fadeIn ease-in 1;

  -webkit-animation-fill-mode:forwards;
  -moz-animation-fill-mode:forwards;
  animation-fill-mode:forwards;

  -webkit-animation-duration:1s;
  -moz-animation-duration:1s;
  animation-duration:1s;
}

.fadeIn.first {
  -webkit-animation-delay: 0.4s;
  -moz-animation-delay: 0.4s;
  animation-delay: 0.4s;
}

.fadeIn.second {
  -webkit-animation-delay: 0.6s;
  -moz-animation-delay: 0.6s;
  animation-delay: 0.6s;
}

.fadeIn.third {
  -webkit-animation-delay: 0.8s;
  -moz-animation-delay: 0.8s;
  animation-delay: 0.8s;
}

.fadeIn.fourth {
  -webkit-animation-delay: 1s;
  -moz-animation-delay: 1s;
  animation-delay: 1s;
}

/* Simple CSS3 Fade-in Animation */
.underlineHover:after {
  display: block;
  left: 0;
  bottom: -10px;
  width: 0;
  height: 2px;
  background-color: #56baed;
  content: "";
  transition: width 0.2s;
}

.underlineHover:hover {
  color: #0d0d0d;
}

.underlineHover:hover:after{
  width: 100%;
}



/* OTHERS */

*:focus {
    outline: none;
} 

#icon {
  width:60%;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="../resources/js/bootstrap.js"></script>
<link rel="stylesheet" href="../resources/css/bootstrap.css">
<%--  <c:set var="now" value="<%=new java.util.Date()%>" />
<fmt:formatDate value="${now}" pattern="yyyy/MM/dd hh:mm:ss" />
 --%>
</head>
<body>

<c:choose>
	<c:when test="${todo.priority == 1 && todo.is_done == 0}">
		<c:set var="color" value="#e67368" />
	</c:when>
	<c:when test="${todo.priority == 2 && todo.is_done == 0}">
		<c:set var="color" value="#efd673" />
	</c:when>
	<c:when test="${todo.priority == 3 && todo.is_done == 0}">
		<c:set var="color" value="#1abc9c" />
	</c:when>
	<c:when test="${todo.is_done == 1 }">
		<c:set var="color" value="#e0e0e0" />
	</c:when>
</c:choose>
<hr>
	<div class="wrapper fadeInDown">
		<div id="formContent">
		
			<div id="formHeader" style="background-color: ${color}">
				<h3>${todo.due_date}</h3>
			</div>
			<div id="content">
				<h4>${todo.todo }</h4>		
			</div>
			
			<div id="reason">
				<em><h4>${todo.reason }</h4></em>
			</div>
			
			<div class="formFooter">
				<a href="edit_todolist?task_id=${todo.task_id}">Edit To-do list</a>
			</div>
			<div class="formFooter">	
				<a href="send_achieve?task_id=${todo.task_id}">Send to Achieve</a>
			</div>

			<div class="formFooter">
				<a href="view_todolist?user_id=${user.user_id}">Back to Main</a>
			</div>

		</div>
	</div>






	<%-- 	<div class="container">
		<div class="row" style="width: 100%;">
			<div style="width: 25%; float: none; margin: 0 auto">
				<h3>To do : ${todo.todo }</h3>
				<h4>Reason : ${todo.reason }</h4>
				<h4>Due date : ${todo.due_date }</h4>
				<h4>Priority : ${todo.priority }</h4>
				<hr>
				<a href="edit_todolist?task_id=${todo.task_id}">Edit To-do list</a><br>
				<a href="send_achieve?task_id=${todo.task_id}">Send to Achieve</a><br>
				<a href="view_todolist?user_id=${user.user_id}">Back to Main</a>
			</div>
		</div>
	</div> --%>

</body>
</html>