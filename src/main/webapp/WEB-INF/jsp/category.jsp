<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="<c:url value="/resources/css/bootstrap.min.css"  />"
	rel="stylesheet">
<script type="text/javascript"
	src="<c:url value="/resources/js/jquery-3.2.1.js"/>"></script>

<script type="text/javascript"
	src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category</title>
</head>
<body>
<div class="container">
		<f:form class="form-horizontal" role="form" method="post"
			modelAttribute="category" action="saveCategory">
			<h2>Category</h2>
			<div class="form-group">
				<label for="firstName" class="col-sm-3 control-label">
					Name</label>
				<div class="col-sm-9">
					<f:input path="name" placeholder="name"
						class="form-control" />
					<span class="help-block"> </span>
				</div>
				</div>
				<div class="form-group">
				<label for="firstName" class="col-sm-3 control-label">
					Category description</label>
				<div class="col-sm-9">
					<f:input path="description" placeholder="description"
						class="form-control" />
					<span class="help-block"> </span>
				</div>
				</div>
			<!-- /.form-group -->
			<div class="form-group">
				<div class="col-sm-3 col-sm-offset-3">
					<button type="submit" class="btn btn-primary btn-block">Save</button>
				</div>
			</div>
			</f:form>
		<!-- /form -->
	</div>
	<!-- ./container -->
	<%@include file="footer.jsp"%>
</body>
</html>