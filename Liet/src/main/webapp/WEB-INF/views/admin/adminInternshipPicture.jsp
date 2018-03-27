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
		<h1>Картинки Звітів Стажування</h1>
		<h5>Додати Картинку в звіт</h5>
		<form:form action="/admin/internshipPicture" method="post" class="form-inline" modelAttribute="form"
			enctype="multipart/form-data">
			<form:hidden path="id" />
			<div class="form-group">
				<label class="btn btn-default btn-file"> Завантажити картинку <input type="file" name="file"
					style="display: none;">
				</label><br>
				<h3>Виберіть звіт для картинки</h3>
				<form:select path="internship" items="${internships}" itemLabel="name" itemValue="id">
				</form:select>
				<br>
				<button type="submit" class="btn btn-primary">Додати</button>
				<br> <br>
			</div>
		</form:form>
		<div class="row">
			<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
				<h3>
					<b>Картинка</b>
				</h3>
			</div>
			<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
				<h3>
					<b>Заголовок звіту якій належить картинка</b>
				</h3>
			</div>

			<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
				<h3>
					<b>Видалити картинку</b>
				</h3>
			</div>
		</div>
		<c:forEach items="${pictures}" var="pc">
			<div class="row">
				<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
					<img src="/images/internship/${pc.id}${pc.path}?version=${pc.version}" width="70%">
				</div>
				<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
					<h2>${pc.internship.header}</h2>
				</div>
				<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
					<a href="/admin/internshipPicture/delete/${pc.id}"><button class="btn btn-primary">Delete</button></a>
				</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>