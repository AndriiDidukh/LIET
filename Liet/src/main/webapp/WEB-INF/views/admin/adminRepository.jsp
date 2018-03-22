<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>Репозиторій</h1>
		<h5>Додати Викладача</h5>
		<form:form action="/admin/repository" method="post" class="form-inline" modelAttribute="form">
			<form:hidden path="id" />
			<div class="form-group">
				<div>
					<form:input path="name" class="form-control" placeholder="Імя" />
				</div>
				<div>
					<form:input path="text" class="form-control" placeholder="Текст" size="50%" />
				</div>		
				<button type="submit" class="btn btn-primary">Додати</button>
				<br> <br>
			</div>
		</form:form>
	</div>
</body>
</html>