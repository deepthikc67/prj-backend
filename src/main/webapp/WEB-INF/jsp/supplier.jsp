<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


 	<link href="<c:url value="/resources/css/bootstrap.min.css"  />" rel="stylesheet">
	<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.2.1.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
  


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier</title>
</head>
<body>

<div class="container">
            <f:form class="form-horizontal" role="form" method="post" modelAttribute="supplier" action="saveSupplier">
                <h2>Supplier Details</h2>
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">Supplier Name</label>
                    <div class="col-sm-9">
                        <f:input path="SupplierName"  placeholder="SupplierName" class="form-control" />
                        <span class="help-block"> </span>
                    </div>
                
                </div>
              <div class="form-group">
                    <label for="SupplierMobileNO" class="col-sm-3 control-label">Supplier Mobile NO</label>
                    <div class="col-sm-9">
                        <f:input path="SupplierMobileNO" id="SupplierMobileNO" placeholder="SupplierMobileNO" class="form-control"/>
                    </div>
</div>
<!-- /.form-group -->
              <div class="form-group">
                                  <label for="SupplierAddress" class="col-sm-3 control-label">Address</label>
                                                      <div class="col-sm-9">
                                  
              <f:textarea path="SupplierAddress" class="form-control" placeholder="Supplier Address"/>
              </div>
</div>
                <div class="form-group">
                    <div class="col-sm-3 col-sm-offset-3">
                        <button type="submit" class="btn btn-primary btn-block">Save</button>
                         
                    </div>
                </div>
            </f:form> <!-- /form -->
        </div> <!-- ./container -->
        <%@include file="footer.jsp"%>
</body>
</html>