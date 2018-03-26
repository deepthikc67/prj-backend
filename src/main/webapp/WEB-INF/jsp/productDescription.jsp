

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>


<head>

<link href="<c:url value="/resources/css/bootstrap.min.css"  />"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="<c:url value="/resources/css/shop-homepage.css"  />"
	rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Description</title>
</head>
<body>

	<%@include file="header.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-xs-4 item-photo">
				<img style="max-width: 100%;"
					src="${pageContext.request.contextPath}/resources/images/${product.imgName}" />
			</div>
			<div class="col-xs-8" style="border: 0px solid gray">

				<h1 ${product.name}></h1>


				<h2 style="color: #337ab7">
					<a href="#">${product.name}</a>
				</h2>

				<!-- Precios -->
				<h4 class="title-price">
					<large>Price Of the Product</large>
				</h4>
				<h2 style="margin-top: 0px;">&#x20b9;${product.price}</h2>

				<!-- Detalles especificos del producto -->
				<div class="section">
					<h6 class="title-attr" style="margin-top: 15px;">
						<small></small>
					</h6>
					<div>
						<div class="attr" style="width: 25px; background: #5a5a5a;"></div>
						<div class="attr" style="width: 25px; background: white;"></div>
					</div>
				</div>
				<div class="section" style="padding-bottom: 5px;">
					<h6 class="title-attr">
						<small></small>
					</h6>

				</div>
				<div class="section" style="padding-bottom: 20px;">
					<h6 class="title-attr">
						<small></small>
					</h6>
					
				</div>

				<!-- Botones de compra -->
				<div class="section" style="padding-bottom: 20px;">
								
	 <form action="${pageContext.request.contextPath}/addToCart" method="post">
                                <input type="hidden" value="${product.id}" name="pId"/>
                                <input type="hidden" value="${product.price}" name="pPrice"/>
                                 <input type="hidden" value="${product.name}" name="name"/>
                             <input type="hidden" value="${product.imgName}" name="imgName"/>
                                
                                 <h3>Quantity:</h3>  <input type="number" class="form-control"  name="quant"  required/><br>
                                <input class="btn btn-primary btn-lg" type="submit" value="add to cart">
                            </form>
  				
					
					
					<!--  <h6><a href="#"><span class="glyphicon glyphicon-heart-empty" style="cursor:pointer;"></span> Agregar a lista de deseos</a></h6> -->
				</div>
			</div>
			

			<div class="col-xs-9">

				<div style="width: 100%; border-top: 1px solid silver">
					<p style="padding: 15px;">${product.description}<h3></h3>
					</p>

						<small> </small>
				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>
</body>
</html>