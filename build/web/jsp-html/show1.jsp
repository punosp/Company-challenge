<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>

  <title>Show Details</title>
  <link rel="SHORTCUT ICON" HREF="jsp-html/images/logo.ico">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="/AcmeLtd/jsp-html/css/style.css">
  <style>
      .container-fluid {
      padding: 10px 50px;
  }
  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
           <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                     
      </button>
      <a class="navbar-brand" href="UserController?page=home"><img class="img-responsive" src="/AcmeLtd/jsp-html/images/logo2.png" alt="LOGO"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="UserController?page=home">HOME</a></li>
        <li><a href="UserController?page=table&prepage=com">TABLE</a></li>
        <li><a href="UserController?page=list">LIST</a></li>
        <li><a href="UserController?page=tree">TREE</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="jumbotron text-center" id="home">
    <h1>Show Employee</h1> 
    <hr>
</div>
    <!-- Container (About Section) -->
    <div id="show" class="container-fluid" style="margin-left: 60px; margin-right: 60px;margin-left: 60px">
        <p style="text-align: left"><a href="UserController?page=home">Home</a> / <a href="UserController?page=table&prepage=com">Employees</a> / ${sshow.name}</p> 
        <div class="page-header" style="margin-top: 0px">
    <div class="row">
         
        <h1 style="float: left"><b>${sshow.name}</b></h1><h3 style="white-space:pre"> [Employee]</pre></h3>
         
    </div>
            
     <div class="row" style="margin-top: 30px">
         
         <div class="container">
  <ul class="nav nav-tabs">
    <li class="active"><a href="#">Show</a></li>
    
    
  </ul>
  <br>
  <form class="form-horizontal" role="form" style="width: 70%;margin-left: 5%">
             <div class="form-group">
                 <br>
      <label class="control-label col-sm-2" for="usr">Name:</label>
      <div class="col-sm-10">
        <p class="form-control-static"><c:out value="${sshow.name}" /></p>
      </div>
      </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="usr">Designation:</label>
      <div class="col-sm-10">
        <p class="form-control-static"><c:out value="${sshow.designation}" /></p>
      </div>
      </div>
             <div class="form-group">
      <label class="control-label col-sm-2" for="usr">Manager:</label>
      <div class="col-sm-10">
        <p class="form-control-static"><c:out value="${sshow.manager}" /></p>
      </div>
      </div>
  </form>
</div>
       <br><br>  
         
</div>   
    </div>
</div>
    
       

    
    <footer class="container-fluid text-center">
        <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
            <p>Made By : Ashutosh Sonu</p>		
</footer>



</body>
</html>
