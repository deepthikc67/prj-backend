
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>



 

<link href="<c:url value="/resources/css/bootstrap.min.css"  />" rel="stylesheet"/>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.2.1.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>


</head>



<body>
            <jsp:include page="header.jsp"></jsp:include>
<div class="container">

	<div class="row">



		
        <div class="receipt-main col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            <div class="row">
    			<div class="receipt-header">
					<div class="col-xs-6 col-sm-6 col-md-6">
						<div class="receipt-left">
							<img class="img-responsive" alt="iamgurdeeposahan" src="./resources/images/smile1.jpg" style="width: 71px; border-radius: 43px;">
						</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6 text-right">
						<div class="receipt-right"><%-- 
							<h5>TechiTouch.</h5>
							<p>${user.mobileNO}<i class="fa fa-phone"></i></p>
							<p>Address<i class="fa fa-envelope-o"></i></p>
							<p>Australia <i class="fa fa-location-arrow"></i></p>
						</div> --%>
					</div>
				</div>
            </div>
			
			<div class="row">
				<div class="receipt-header receipt-header-mid">
					<div class="col-xs-8 col-sm-8 col-md-8 text-left">
						<div class="receipt-right">
						
							<h5>${user.name}</h5>
							<p><b>Mobile :</b>${user.phone}</p>
							<p><b>Email :</b>${user.email}</p>
							<p><b>Address :</b>${user.address}</p>
							
							
							
						</div>
					</div>
					<div class="col-xs-4 col-sm-4 col-md-4">
						<div class="receipt-left">
							<h1>Receipt</h1>
						</div>
					</div>
				</div>
            </div>
			
            <div>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                        
                            <th>Description</th>
                            <th>Quantity</th>
                            
                            <th>Amount</th>
        
                        </tr>
                    </thead>
                    <tbody>
                                                   <c:forEach items="${cart}"  var="cc">
                       
                        <tr>
                        
                            <td class="text-center">
                            
                            
                             <p><strong>${cc.cartProductName}</strong></p>
                            
                            
                          
                           
							</td>
                            
                            
                             <td>
                            <p>
                                <strong><i class="fa fa-inr"></i>${cc.cartQuantity}</strong>
                            </p>
                           
							</td>
                            
                            
                            <td>
                            
                            
                            <p>
                                <strong><i class="fa fa-inr"></i>${cc.cartPrice}</strong>
                            </p>
                           
							</td>
                        </tr>
                        
                          </c:forEach>
                        <tr>
                                 <c:set var="total" value="0"></c:set>
    <c:forEach var="cc" items="${cart}">
        <c:set var="total" value="${total + cc.cartPrice * cc.cartQuantity }"></c:set>   
                
              </c:forEach>  
                            <td class="text-right"><h2><strong>Total: </strong></h2></td>
                            <td class="text-left text-danger"><h2><strong><i class="fa fa-inr"></i>${total}</strong></h2></td>
                        </tr>
                    </tbody>
                </table>
            </div>
			<br><br>
			<div class="row">
				<div class="receipt-header receipt-header-mid receipt-footer">
					<div class="col-xs-8 col-sm-8 col-md-8 text-left">
						<div class="receipt-right">
							<p><b>Date :</b> <%= (new java.util.Date()).toLocaleString()%></p>
<!-- 							<h3 style="color: rgb(140, 140, 140);">Thank you for your Shopping.</h3>
 -->			
 
 <a  href="${pageContext.request.contextPath}/ackAction"  class="btn-primary">Ok</a>
 
 			</div>
					</div>
					<div class="col-xs-4 col-sm-4 col-md-4">
						<div class="receipt-left">
							<h1>Signature</h1>
						</div>
					</div>
				</div>
            </div>
			
        </div>    
	</div>
	</div>
	</div>
	            <jsp:include page="footer.jsp"></jsp:include>
	
		
</body>
</html>