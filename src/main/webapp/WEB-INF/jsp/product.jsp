<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@include file="header.jsp"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<title>Product</title>
</head>
<body>

	<div class="container">
		<f:form class="form-horizontal" role="form" method="post"
			modelAttribute="product" action="saveProduct">
			<h2>Product Details</h2>
			<div class="form-group">
				<label for="firstName" class="col-sm-3 control-label">Product
					Name</label>
				<div class="col-sm-9">
					<f:input path="name" placeholder="name"
						class="form-control" />
					<span class="help-block"> </span>
				</div>

			</div>
			<div class="form-group">
				<label for="ProductPrice" class="col-sm-3 control-label">Product
					Price</label>
				<div class="col-sm-3">
					<f:input path="price" id="price"
						placeholder="price" class="form-control" />
				</div>
			</div>
 <div class="form-group">
				<label for="firstName" class="col-sm-3 control-label">Product
					 Stock</label>
				<div class="col-sm-3">
					<f:input path="stock" placeholder="stock"
						class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="ProductDescription" class="col-sm-3 control-label">Product
					Description</label>
				<div class="col-sm-9">

					<f:textarea path="description" placeholder="description"
						class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-3 col-sm-offset-3">
					<button type="submit" class="btn btn-primary btn-block">Save</button>
				</div>
			</div>
		</f:form>
		<!-- /form -->
	</div>
	<!-- ./container -->
</body>
</html>