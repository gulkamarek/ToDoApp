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
<!-- 
<link href="<c:url value="resources/bootstrap/css/bootstrap.css" />"
	rel="stylesheet" />
<script type="text/javascript"
	  src="<c:url value="resources/bootstrap/js/bootstrap.js" />"></script>
	
<link rel='stylesheet' href='webjars/bootstrap/4.2.1/css/bootstrap.min.css'>
 -->
<link rel='stylesheet'
	href="<c:url value='webjars/bootstrap/4.2.1/css/bootstrap.min.css'/>">
<link href="<c:url value="resources/styleToDo.css" />" rel="stylesheet" />
</head>
<body>
	<center>
		<h1>To Do</h1>
		<c:url var="action" value="/create" />
		
		<form:form method="post" action="${action}" modelAttribute="toDoItem">
		<div class="container-fluid">
			<div class="card">
				<div class="card-body">
					<h4 class="card-title">
						<form:input path="name" class="form-control" type="text" placeholder="Title"/>
					</h4>
					<p class="card-text">
						<form:input path="description" class="form-control" type="text" placeholder="Description" />
					</p>
					<button type="submit" class="btn btn-primary btn-lg"
							value="Add Task">Add Task</button>
				</div>
			</div>
		</div>
		</form:form>
		
		<c:if test="${!empty toDoItems}">
			<!--  BOOTSTRAP CARDS -->
			<div class="container-fluid">
				<c:forEach items="${toDoItems}" var="toDoItem">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">
								<c:out value="${toDoItem.name}" />
							</h4>
							<p class="card-text">
								<c:out value="${toDoItem.description}" />
							</p>
							<button type="button" class="btn btn-warning"
								onclick="callServlet('20');">
								<c:out value="${toDoItem.completed}" />
							</button>
							<button type="button" class="btn btn-warning"
								onclick="callServlet('${toDoItem.toDoItemId}');">JS</button>
							<a class="binIcone" onclick="location.href='/ToDoApp/delete/${toDoItem.toDoItemId}'">
								<img src="resources/images/bin.png" alt="Delete button">
							</a>
						</div>
					</div>
				</c:forEach>
			</div>

		</c:if>
	</center>

	<script type="text/javascript"
		src="<c:url value="webjars/jquery/3.3.1/jquery.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="webjars/bootstrap/4.2.1/js/bootstrap.min.js"/>"></script>

	<script type="text/javascript">
	function callServlet(somethingForConsole) 
	{
    	console.log("Clicked element id=" + somethingForConsole);
    }
	</script>

</body>

</html>