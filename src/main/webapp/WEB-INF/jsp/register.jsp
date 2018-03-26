<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@include file="header.jsp"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


 	<link href="<c:url value="/resources/css/bootstrap.min.css"  />" rel="stylesheet">
	<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.2.1.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
  


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container">
            <f:form class="form-horizontal" role="form" method="post" modelAttribute="u" action="saveRegister">
                <h2>Registration Form</h2>
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">User Name</label>
                    <div class="col-sm-9">
                        <f:input path="name"  placeholder="User Name" class="form-control" />
                        <span class="help-block"> </span>
                    </div>
                </div>
               
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-9">
                        <f:input  path="email" id="email" placeholder="Email" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Password</label>
                    <div class="col-sm-9">
                        <f:input type="password" path="password" id="password" placeholder="Password" class="form-control"/>
                    </div>
                </div>
                
                
                
                
                  <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">Phone No</label>
                    <div class="col-sm-9">
                        <f:input path="phone" placeholder="phone" class="form-control"/>
                    </div>
                </div>
               
               <!-- /.form-group -->
              <div class="form-group">
                                  <label for="address" class="col-sm-3 control-label">Address</label>
                                                      <div class="col-sm-9">
                                  
              <f:textarea path="address" class="form-control" placeholder="Address"/>
              </div>
              </div>
                <div class="form-group">
                    <div class="col-sm-3 col-sm-offset-3">
                        <button type="submit" class="btn btn-primary btn-block">Register</button>
                    </div>
                </div>
            </f:form> <!-- /form -->
        </div> <!-- ./container -->
</body>
</html>