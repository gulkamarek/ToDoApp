<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>To Do</title>
</head>
<body>

	<h1>ToDos</h1>

	<spring:url value="/addTask/" var="addTask" />
	<a href="${addTask}">Add task</a>

	<c:if test="${!empty toDoItems}">
		<table>
			<tr>
				<th>Name</th>
				<th>Description</th>
				<th>Completed</th>
				<th>Settings</th>
			</tr>
			<c:forEach items="${toDoItems}" var="toDoItem">
				<tr>
					<td><c:out value="${toDoItem.name}" /></td>
					<td><c:out value="${toDoItem.description}" /></td>
					<td><c:out value="${toDoItem.completed}" /></td>
					<td><a>Edit</a> <a>Details</a> <a>Delete</a></td>

				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>