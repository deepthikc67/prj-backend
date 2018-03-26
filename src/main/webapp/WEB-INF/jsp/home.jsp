 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
     
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
  <%@include file="header.jsp"%> 
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 	<link href="<c:url value="/resources/css/bootstrap.min.css"  />" rel="stylesheet">

    <!-- Custom CSS -->
 	<link href="<c:url value="/resources/css/shop-homepage.css"  />" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Home</title> <style>
body
{
    background-image: url("file:///C:/workspaceproject/FrontEnd/src/main/webapp/resources/images/12.jpg");
    background-repeat: no-repeat;
	opacity:0.9;
    background-size: 100%; 
    padding-bottom: 75px;;
}</style>
   </head>
   <body>
   <body style="background-color:lightseagreen;">
   <a  href="" class="btn-primary"> </a>
   
   

</head>
<body> 
   

    <!-- Page Content -->
    <div class="container">
  

        <div class="row">

            <div class="col-md-3">
                <p class="lead">StyleStreet</p>
                 <div class="list-group">
                    <a href="#" class="list-group-item">Category 1</a>
                    <a href="#" class="list-group-item">Category 2</a>
                    <a href="#" class="list-group-item">Category 3</a>
                </div> 
            </div>

            <div class="col-md-9">

                <div class="row carousel-holder">

                    <div class="col-md-12">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="file:///C:/workspaceproject/FrontEnd/src/main/webapp/resources/images/1.jpg" style="max-width:100%;height:auto;">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="file:///C:/workspaceproject/FrontEnd/src/main/webapp/resources/images/2.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="file:///C:/workspaceproject/FrontEnd/src/main/webapp/resources/images/3.jpg" alt="">
                                </div>
                                <div c<div class="item">
                                    <img class="slide-image" src="file:///C:/workspaceproject/FrontEnd/src/main/webapp/resources/images/4.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="file:///C:/workspaceproject/FrontEnd/src/main/webapp/resources/images/5.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="file:///C:/workspaceproject/FrontEnd/src/main/webapp/resources/images/6.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="file:///C:/workspaceproject/FrontEnd/src/main/webapp/resources/images/7.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="file:///C:/workspaceproject/FrontEnd/src/main/webapp/resources/images/8.jpg" alt="">
                                </div>lass="item">
                                    <img class="slide-image" src="file:///C:/workspaceproject/FrontEnd/src/main/webapp/resources/images/9.jpg" alt="">
                                </div>
                                
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

                </div>

                <div class="row">

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="file:///C:/workspaceproject/FrontEnd/src/main/webapp/resources/images/1.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"><p> &#x20b9; 9500</p></h4>
                                 <h4><a href="#">Love to look beautiful ,why late ?select a sarees here</a>
                                </h4>
                                <p>Smooth,silky kind of sarees <a target="_blank" href="http://www.bootsnipp.com">Bootsnipp - http://bootsnipp.com</a>.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">15 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="file:///C:/workspaceproject/FrontEnd/src/main/webapp/resources/images/6.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"> &#x20b9;664.99</h4>
                                <h4><a href="#">Second Product</a>
                                </h4>
                                <p>This is a short description.cotton sarees/p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">12 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="file:///C:/workspaceproject/FrontEnd/src/main/webapp/resources/images/8.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"> &#x20b9;974.99</h4>
                                <h4><a href="#">Third Product</a>
                                </h4>
                                <p>This is a short description. fashion sarees</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">31 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                              <img src="file:///C:/workspaceproject/FrontEnd/src/main/webapp/resources/images/3.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"> &#x20b9;1084.99</h4>
                                <h4><a href="#">Fourth Product</a>
                                </h4>
                                <p>This is a short description.full worked sarees </p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">6 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="file:///C:/workspaceproject/FrontEnd/src/main/webapp/resources/images/7.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right"> &#x20b9;1094.99</h4>
                                <h4><a href="#">Fifth Product</a>
                                </h4>
                                <p>This is a short description.new collections</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">18 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <h4><a href="#">Like this template?</a>
                        </h4>
                        <p>If you like this template, then check out <a target="_blank" href="http://maxoffsky.com/code-blog/laravel-shop-tutorial-1-building-a-review-system/">this tutorial</a> on how to build a working review system for your online store!</p>
                        <a class="btn btn-primary" target="_blank" href="http://maxoffsky.com/code-blog/laravel-shop-tutorial-1-building-a-review-system/">View Tutorial</a>
                    </div>

                </div>

            </div>

        </div>

    </div>
    <!-- /.container -->

    <div class="container">

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2018</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
	<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.2.1.js"/>"></script>

    <!-- Bootstrap Core JavaScript -->
	<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>

</body>
</html>