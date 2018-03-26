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
            <f:form class="form-horizontal" role="form" method="post" modelAttribute="usupplier" action="${pageContext.request.contextPath}/admin/saveUSupplier">
                <h2>Supplier Details</h2>
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">Supplier Name</label>
                    <div class="col-sm-9">
                        <f:input path="supplierName"  placeholder="SupplierName" class="form-control" />
                        <f:hidden path="sid"/>
                        <span class="help-block"> </span>
                    </div>
                
                </div>
                <div class="form-group">
                    <label for="supplierMobileNO" class="col-sm-3 control-label">Supplier Mobile NO</label>
                    <div class="col-sm-9">
                        <f:input path="supplierMobileNO" id="SupplierMobileNO" placeholder="SupplierMobileNO" class="form-control"/>
                    </div>
                </div>
                
              <!-- /.form-group -->
              <div class="form-group">
                                  <label for="supplierAddress" class="col-sm-3 control-label">Address</label>
                                                      <div class="col-sm-9">
                                  
              <f:textarea path="supplierAddress" class="form-control" placeholder="Supplier Address"/>
              </div>
              </div>
                <div class="form-group">
                    <div class="col-sm-3 col-sm-offset-3">
                        <button type="submit" class="btn btn-primary btn-block">Update</button>
                         
                    </div>
                </div>
            </f:form> <!-- /form -->
        </div> <!-- ./container -->
</body>
</html>