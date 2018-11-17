<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>


		<h1>ToDo List</h1>
		<h2>Add new task</h2>

		<c:url var="action" value="/create" />

		<form:form method="post" action="${action}" modelAttribute="toDoItem">
			<table>
				<tr>
					<td><form:label path="name">Name</form:label></td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td><form:label path="description">Description</form:label></td>
					<td><form:input path="description" /></td>
				</tr>
				<!-- 
				<tr>
					<td><form:label path="completed">Completed</form:label></td>
					<td><form:input path="completed" /></td>
				</tr>
				 -->
				<tr>
					<td colspan="2"><input type="submit" value="Add Task"></td>
				</tr>
			</table>
		</form:form>
		<h2>Tasks</h2>
		<c:if test="${!empty toDoItems}">
			<table>
				<tr>
					<th>Name</th>
					<th>Description</th>
					<th>Status</th>
					<th>Settings</th>
				</tr>
				<c:forEach items="${toDoItems}" var="toDoItem">
					<tr>
						<td><c:out value="${toDoItem.name}" /></td>
						<td><c:out value="${toDoItem.description}" /></td>
						<td><c:out value="${toDoItem.completed}" /></td>
						<td>
							<!-- location.href supports only get method, here should be post -->
							<button type="button"
								onclick="location.href='<c:url value='/delete/${toDoItem.toDoItemId}'/>'">Delete</button>
							<button type="button" onclick="javascript:callServlet">JS</button>
						</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</center>
</body>

<script type="text/javascript">
	function callServlet() {
    	console.log("js runnned!!!!");
    }
</script>

</html>