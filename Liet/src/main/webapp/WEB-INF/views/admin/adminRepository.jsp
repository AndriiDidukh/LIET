<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
					<form:input path="name" class="form-control" placeholder="Імя" size="80%" />
				</div>
				<div>
					<form:textarea path="text" class="form-control" placeholder="Текст" rows="10" cols="100" width="100%" />
				</div>
				<button type="submit" class="btn btn-primary">Додати</button>
				<br> <br>
			</div>
		</form:form>
		<div class="row">
			<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
				<h3>
					<b>Імя Викладача</b>
				</h3>
			</div>

			<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
				<h3>
					<b>Видалити викладача</b>
				</h3>
			</div>
		</div>
		<c:forEach items="${repository}" var="nw">
			<div class="row">
				<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">${nw.name}</div>
				<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
					<a href="/admin/repository/delete/${nw.id}"><button class="btn btn-primary">Delete</button></a>
				</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>