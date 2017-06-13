<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>

  <title>Table View</title>
  <link rel="SHORTCUT ICON" HREF="jsp-html/images/logo.ico">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="/AcmeLtd/jsp-html/css/style.css">
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
        <li><a href="#table">TABLE</a></li>
        <li><a href="UserController?page=list">LIST</a></li>
        <li><a href="UserController?page=tree">TREE</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="jumbotron text-center" id="home">
    <h1>Organization Table</h1>  
    <hr>
</div>
    
    <div id="table" class="container-fluid" style="margin-left: 60px; margin-right: 60px;">
        <p style="text-align: left"><a href="UserController?page=home">Home</a> / Table View</p>
    <div class="row">
        <h1>All Employees<a href="UserController?page=add" style="float: right" >
    <button type="button" class="btn btn-primary btn-md">+ Add New</button>
                </a></h1> 
        
    </div>
        <br>
        <hr>
    <div class="row" style="margin-top: 100px">
        <table class="table table-striped : table table-bordered">
    <thead>
      <tr>
        <th>E.ID</th>
        <th>Name</th>
        <th>Designation</th>
        <th>Manager</th>
        <th>View</th>
      </tr>
    </thead>
    <tbody>
     <c:forEach items="${emp}" var="emp">
        <tr>
            <td><c:out value="${emp.id}" /></td>
            <td><c:out value="${emp.name}"/></td>
            <td><c:out value="${emp.designation}" /></td>
            <td><c:out value="${emp.manager}" /></td>
            <td><a href="UserController?page=show&ID=${emp.id}">View</a></td>
            
        </tr>
    </c:forEach>


    </tbody>
  </table>
        
         
        
    </div>
</div>


<footer class="container-fluid text-center">
    <br><br>
    <hr>
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>Made By : Ashutosh Sonu</p>		
</footer>



</body>
</html>
