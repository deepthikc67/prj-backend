<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>

<%@include file="header.jsp"%>


<html>
   <head>
<%-- <link  href="<c:url value="/resources/css/bootstrap.min.css"></c:url>" rel="stylesheet"/>
 --%>
 
 	<link href="<c:url value="/resources/css/bootstrap.min.css"  />" rel="stylesheet">
	<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.2.1.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
  
      <title>Log In</title>
   </head>
   <body>
   <body style="background-color:powderblue;">
   <a  href="" class="btn-primary"> </a>
   
   
   

<div class="jumbotron container">
  <h2>Log In</h2>
  <%-- <f:form action="loginProcess" method="post" modelAttribute="login">
    <div class="form-group">
      <label for="email">Email:</label>
      <f:input path="EmailID" class="form-control" id="email" placeholder="Enter email" name="email"/>
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <f:input path="Password" class="form-control" id="pwd" placeholder="Enter password" name="pwd"/>
    </div>
    <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </f:form> --%>
  <h3 style="color: red;">${msg}</h3>
     <form action='<c:url value="/login" ></c:url>' class="form-signin" method="post">
                <span id="reauth-email" class="reauth-email"></span>
                <h4 class="input_title">Email</h4>
                <input type="text" id="inputEmail" name="username" class="login_box" placeholder="email" required autofocus>
                <h4 class="input_title">Password</h4>
                <input type="password" id="inputPassword" name="password" class="login_box" placeholder="******" required>
                <div id="remember" class="checkbox">
                    <label>
                        
                    </label>
                </div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <button class="btn btn-lg btn-primary" type="submit">Login</button>
            </form><!-- /form -->
</div>
   
   </body>
</html>