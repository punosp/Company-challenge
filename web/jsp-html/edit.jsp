<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>

  <title>Edit</title>
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
    <h1>Edit Employee</h1> 
    <hr>
</div>
    <!-- Container (About Section) -->
    <div id="edit" class="container-fluid" style="margin-left: 60px; margin-right: 60px;">
        <p style="text-align: left"><a href="UserController?page=home">Home</a> / <a href="UserController?page=table&prepage=com">Employees</a> / ${sshow.name}</p>
        <div class="page-header" style="margin-top: 0px">
    <div class="row">
         
         <h1 style="float: left"><b>${sshow.name}</b></h1><h3 style="white-space:pre"> [Employee]</pre></h3>
         
    </div>
     <div class="row" style="margin-top: 30px">
         
         <div class="container">
              <ul class="nav nav-tabs">
    <li><a href="UserController?page=show&ID=${sshow.id}">Show</a></li>
    <li  class="active"><a href="#">Edit</a></li>
    
  </ul>
             <br>
             <br>
  <form class="form-horizontal" role="form" action="UserController" method="Post" style="width: 70%;margin-left: 5%;">
      <br>
    <div class="form-group">
        <input type="hidden" name="page" value="table"/>
        <input type="hidden" name="prepage" value="edit"/>
        <input type="hidden" name="id" value="${sshow.id}"/>
        
      <label class="control-label col-sm-2" for="usr">Name:</label>
      <div class="col-sm-10">
          <input type="text" class="form-control" name="name" value="${sshow.name}" autofocus pattern="^[A-Za-z]([-']?[A-Za-z]+)*( [A-Za-z]([-']?[A-Za-z]+)*)*$" title="Enter valid name" id="usr" placeholder="Full Name ..." required="true">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="usr">Designation:</label>
      <div class="col-sm-10">
          <input type="text" class="form-control" name="designation" value="${sshow.designation}" pattern="^[A-Za-z&\(\)]+( [A-Za-z&\(\)]+)*$" title="only A-Z,a-z,&,(,),& allowed" id="usr" placeholder="Designation ..." required="true">
      </div>
    </div>
             <div class="form-group">
      <label class="control-label col-sm-2" for="sel1">Manager:</label>
      <div class="col-sm-10">
          <select name="manager" required="true" name="manager" id="sel1" class="form-control">
        <option value="${sshow.manager}">${sshow.manager}</option>
        <c:forEach items="${emp}" var="emp">
            <c:if test="${emp!=sshow.name && emp!=sshow.manager}">
            <option value="${emp}"><c:out value="${emp}"/></option>
            </c:if>
           
    </c:forEach>
        
        
           </select>
      </div>
    </div>
        
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-primary">Submit</button>
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
