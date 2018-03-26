
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@include file="header.jsp"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>




<meta name="viewport" content="width=device-width, initial-scale=1">




 	<link href="<c:url value="/resources/css/bootstrap.min.css"  />" rel="stylesheet">
	<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.2.1.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
  


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Enter Product Details</title>
</head>
<body>

<div class="container">
            <form class="form-horizontal" role="form" method="post"  action="saveProduct"  enctype="multipart/form-data">
                <h2>Product Details</h2>
                <div class="form-group">
                    <label for="ProductName" class="col-sm-3 control-label">Product Name</label>
                    <div class="col-sm-9">
                        <input name="name"  placeholder="Product Name" class="form-control" />
                        <span class="help-block"> </span>
                    </div>
                
                </div>
                <div class="form-group">
                    <label for="ProductPrice" class="col-sm-3 control-label">Product Price</label>
                    <div class="col-sm-3">
                        <input name="price" id="ProductPrice" placeholder="ProductPrice" class="form-control"/>
                    </div>
                </div>
                
                
                
                
                
                
                               <div class="form-group">
                                   <label for="ProductPrice" class="col-sm-3 control-label">Category List</label>
               
             
				<div class="col-sm-3">
				<select name="category"  class="form-control">
					  <option value="NONE" label="--- Select ---" />
					  						<c:forEach items="${clist}" var="c">
					  
					  <option  value="${c.cid}" >${c.name}</option>
					  </c:forEach>
				       </select>
                                </div>
			
                </div>
                
                
                
                
                
                
                
                               <div class="form-group">
                                   <label for="ProductPrice" class="col-sm-3 control-label">Supplier List</label>
               
             
				<div class="col-sm-3">
				<select name="supplier"  class="form-control">
					  <option value="NONE" >---------select------------</option>
					  <c:forEach items="${slist}" var="s">
					  <option  value="${s.sid}" >${s.supplierName}</option>
					  
					  </c:forEach>
				       </select>
                                </div>
			
                </div>
                
                
                
                
                
                
                  <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">Product In Stock</label>
                    <div class="col-sm-3">
                        <input name="stock" placeholder="Product In Stock" class="form-control"/>
                    </div>
                </div>
               
              
          
                    
               
              <div class="form-group">
                <label for="ProductDesc" class="col-sm-3 control-label">Product Description</label>
                 <div class="col-sm-9">
                                  
              <textarea name="description"  placeholder="Product Desc" class="form-control"></textarea>
              </div>
              </div>
              
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">IMG</label>
                    <div class="col-sm-3">
              <input class="form-control" type="file" name="file" accept="images/*"/>                   
               </div>
                </div>
              
                <div class="form-group">
                    <div class="col-sm-3 col-sm-offset-3">
                        <button type="submit" class="btn btn-primary btn-block">Save</button>
                    </div>
                </div>
                </form>
           <!-- /form -->
        </div> <!-- ./container -->
</body>
</html>






<%-- 





















<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@include file="header.jsp"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>




<meta name="viewport" content="width=device-width, initial-scale=1">




 	<link href="<c:url value="/resources/css/bootstrap.min.css"  />" rel="stylesheet">
	<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.2.1.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
  


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Product</title>
</head>
<body>

<div class="container">
            <f:form class="form-horizontal" role="form" method="post" modelAttribute="product" action="saveProduct">
                <h2>Product Details</h2>
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">Product Name</label>
                    <div class="col-sm-9">
                        <f:input path="ProductName"  placeholder="Product Name" class="form-control" />
                        <span class="help-block"> </span>
                    </div>
                
                </div>
                <div class="form-group">
                    <label for="ProductPrice" class="col-sm-3 control-label">Product Price</label>
                    <div class="col-sm-3">
                        <f:input path="ProductPrice" id="ProductPrice" placeholder="ProductPrice" class="form-control"/>
                    </div>
                </div>
                
                
                
                
                
                
                               <div class="form-group">
                                   <label for="ProductPrice" class="col-sm-3 control-label">Category List</label>
               
          
                
                
                
                
                  <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">Product In Stock</label>
                    <div class="col-sm-3">
                        <f:input path="ProductInStock" placeholder="Product In Stock" class="form-control"/>
                    </div>
                </div>
               
              
          
                    
               
              <div class="form-group">
                <label for="ProductDesc" class="col-sm-3 control-label">Product Description</label>
                 <div class="col-sm-9">
                                  
              <f:textarea path="ProductDesc"  placeholder="ProductDesc" class="form-control"/>
              </div>
              </div>
                <div class="form-group">
                    <div class="col-sm-3 col-sm-offset-3">
                        <button type="submit" class="btn btn-primary btn-block">Save</button>
                    </div>
                </div>
            </f:form> <!-- /form -->
        </div> <!-- ./container -->
</body>
</html> --%>