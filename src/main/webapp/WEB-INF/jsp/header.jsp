<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>SytleStreet</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<li class="active"><a class="navbar-brand"
					href="${pageContext.request.contextPath}/"></a>SytleStreet</li>
			</div>
			<ul class="nav navbar-nav">



				<%-- <c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
    
      <li class="active"><a href="${contextRoot}/home">Home</a></li>
      
        
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">List <span class="caret"></span></a>
        <ul class="dropdown-menu">
        <li>HHHH</li>
          <c:forEach var="catVal" items="${catList}">
                          <li><a href="${contextRoot}/productCustList?cid=${catVal.categoryID}">${catVal.categoryName}</a></li>
                     </c:forEach>
                    
        </ul>
     
			</li> --%>

				<li class="active"><a
					href="${pageContext.request.contextPath}/home"><span
						class="glyphicon glyphicon-home">&nbsp</span>Home</a></li>

				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">List <span class="caret"></span></a>
					<ul class="dropdown-menu">

						<c:forEach var="catVal" items="${catList}">
							<li><a
								href="${pageContext.request.contextPath}/productCustList?cid=${catVal. cid}">${catVal.name}</a></li>
						</c:forEach>
					</ul>
					<ul class="nav navbar-nav">
						<li class="active"><a href="home"><span
								class="glyphicon glyphicon-home"></span>Home</a></li>
						<li class="active"><a
							href="${pageContext.request.contextPath}/admin/product"><span
								class="glyphicon glyphicon-pencil"></span>Product</a></li>
						<li class="active"><a
							href="${pageContext.request.contextPath}/admin/category"><span
								class="glyphicon glyphicon-import"></span>Category</a></li>
						<li class="active"><a
							href="${pageContext.request.contextPath}/admin/supplier"><span
								class="glyphicon glyphicon-user"></span>Supplier</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<c:if test="${pageContext.request.userPrincipal.name!= null}">

							<li><a>Welcome:
									${pageContext.request.userPrincipal.name}</a></li>
						</c:if>
						<c:if test="${pageContext.request.userPrincipal.name== null}">

							<li><a href="register"><span
									class="glyphicon glyphicon-user"></span>Sign Up</a></li>
							<li><a href="login"><span
									class="glyphicon glyphicon-log-in"></span>Login</a></li>
						</c:if>
						<li><a href="about"><span
								class="glyphicon glyphicon-about"></span>About Us</a></li>
						<c:if test="${pageContext.request.userPrincipal.name!= null}">
							<li><a href="${pageContext.request.contextPath}/logout"><span
									class="glyphicon glyphicon-compressed"></span>Logout</a></li>
						</c:if>
					</ul>
		</div>
	</nav>
	<div class="container">
		<h3>Welcome to style World</h3>
		<p>Be Simple Look Beautiful</p>
	</div>
</body>
</html>
