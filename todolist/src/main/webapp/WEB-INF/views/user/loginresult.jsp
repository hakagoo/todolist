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
<link href="https://fonts.googleapis.com/css?family=Noto+Serif+KR:600&display=swap" rel="stylesheet">
<style type="text/css">
 html {
	background-color: #21324a;
}
 
 p{
 font-family: 'Noto Serif KR', serif;
 
 }
</style>

</head>
<body>
<hr>
		<div class="header">
		<h2 style="padding: 10px; margin-left: 20px;">Welcome! ${user.user_id }</h2>	
		</div>
		<hr>
	<div class="container bg-3">
		<h3><button type="button" class="btn btn-primary" style="background-color: #21324a; border-color: #21324a"
					onclick="location.href='../todolist/view_todolist?user_id=${user.user_id }'">
					View my To-do List</button></h3>
		<h3 style="display: inline-block;">You know why doing this</h3>
		<hr>
		<div class="row">
			<div class="col-md-4" style="width: 300px; height: 340px; padding: 30px; font-size: 15px;">
				<p><strong>우리는 가끔 해야할 일을 알면서도 미루곤 한다. </strong></p>
				<p>
				스케줄러에, 메모장에, 우선순위를 매겨가며 해야 할 일들을 잊지 않으려하고 실행에 옮기려 부단히 애쓴다.
				</p>
				<p>
				그렇게 기록하다보면 어느새 빼곡히 쌓인 일들에 피로를 느끼고 해야한다는 의무감에 압도당하곤 한다.</p>
				<hr>
				<img src="../resources/bar.png" alt="Image">
			</div>
			<div class="col-md-4" style="width: 300px; height: 340px; padding: 30px; font-size: 15px;">
				<p>가엽게도 우리는 해야한다. 미루는 것은 답이 아니다. 시도라도 해야한다.</p>
				 <p>할 일을 기록하는 것으로 시작했지만 이는 시작에 불과하다. 우리가 필요로 하는 것은 일을 끝내버리는 것임을 잊지 말아야 한다.</p>
				 <p><strong> 우리는 종종 해야할 일을 알면서도 미루곤 한다. </strong></p> 
				<hr>
				<img src="../resources/bar.png" alt="Image"><br>
				
			</div>
			<div class="col-md-4" style="width: 300px; height: 340px; padding: 30px; font-size: 15px;">
				
				<p>이곳은 이것을 위한 공간이다.</p>
				<p>이곳에 이유를 남기자. 이유는 제각각이지만 목표는 하나다. 끝을 보는 것이다.
				우리가 할 일을 상기시키면서 왜 해야 하는지는 생각해 보도록 하자. 
				우리의 추진력을 이곳에서 만들자.</p><p><strong><em> 자, 우리는 왜 해야하는지 알고 있다.</em></strong></p>
				<hr>
				<img src="../resources/bar.png" alt="Image">
			</div>
		</div>
		<hr>
		
	</div>



</body>
</html>