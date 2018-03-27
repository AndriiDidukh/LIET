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
		<h1>Документи репозиторія Подій</h1>
		<h5>Додати Документ в Репозиторій</h5>
		<form:form action="/admin/repositoryPDF" method="post" class="form-inline" modelAttribute="form"
			enctype="multipart/form-data">
			<form:hidden path="id" />
			<div class="form-group">
				<form:input path="name" plaseholder="Ім'я документа" />
				<br>
				<br>
				<form:select path="repository" items="${repository}" itemLabel="name" itemValue="id">
				</form:select>
				<br> <label class="btn btn-default btn-file"> Browse <input type="file" name="file"
					style="display: none;">
				</label><br>
				<button type="submit" class="btn btn-primary">Додати</button>
				<br> <br>
			</div>
		</form:form>

		<%-- 		<c:forEach items="${news}" var="groupe"> --%>
		<%-- 			<div>${groupe.header}</div> --%>
		<%-- 			<div>${groupe.text}</div> --%>
		<%-- 		</c:forEach> --%>
	</div>
</body>
</html>