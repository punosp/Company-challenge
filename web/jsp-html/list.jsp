<%@page import="com.acme.model.User"%>
<%@page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>

  <title>List View</title>
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
        <li><a href="UserController?page=table&prepage=com">TABLE</a></li>
        <li><a href="#list">LIST</a></li>
        <li><a href="UserController?page=tree">TREE</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="jumbotron text-center" id="home">
    <h1>Organization Hierarchy</h1> 
    <hr>
</div>
    <!-- Container (About Section) -->
    <div id="list" class="container-fluid" style="margin-left: 60px; margin-right: 60px;">
        <p style="text-align: left"><a href="UserController?page=home">Home</a> / List View</p>
    <div class="row">
        <h1>All Employees</h1> 
    </div>
        <hr>
    
           <div class="row" style="margin-top: 50px">
               <ul>
                   <li><a href="UserController?page=show&ID=1">Anchal</a>&nbsp;&nbsp;CEO
                       <ul>
     <c:forEach items="${emp}" var="emp">
         <c:if test="${emp.manager=='Anchal'}">
             
                 <li>
                     <a href="UserController?page=show&ID=${emp.id}"><c:out value="${emp.name}"/></a>&nbsp;&nbsp;<c:out value="${emp.designation}"/>
             <ul>
                 
     <c:forEach items="${emd}" var="emd">
         <c:if test="${emd.manager==emp.name}">
             
                 <li>
                     <a href="UserController?page=show&ID=${emd.id}"><c:out value="${emd.name}"/></a>&nbsp;&nbsp;<c:out value="${emd.designation}"/>
             <ul>
                 
     <c:forEach items="${eme}" var="eme">
         <c:if test="${eme.manager==emd.name}">
             
                 <li>
             <a href="UserController?page=show&ID=${eme.id}"><c:out value="${eme.name}"/></a>&nbsp;&nbsp;<c:out value="${eme.designation}"/>
             <ul>
                 
     <c:forEach items="${emf}" var="emf">
         <c:if test="${emf.manager==eme.name}">
             
                 <li>
             <a href="UserController?page=show&ID=${emf.id}"><c:out value="${emf.name}"/></a>&nbsp;&nbsp;<c:out value="${emf.designation}"/>
             <ul>
                 
     <c:forEach items="${emg}" var="emg">
         <c:if test="${emg.manager==emf.name}">
             
                 <li>
             <a href="UserController?page=show&ID=${emg.id}"><c:out value="${emg.name}"/></a>&nbsp;&nbsp;<c:out value="${emg.designation}"/>
             <ul>
                 
     <c:forEach items="${emh}" var="emh">
         <c:if test="${emh.manager==emg.name}">
             
                 <li>
             <a href="UserController?page=show&ID=${emh.id}"><c:out value="${emh.name}"/></a>&nbsp;&nbsp;<c:out value="${emh.designation}"/>
              <ul>
                 
     <c:forEach items="${emi}" var="emi">
         <c:if test="${emi.manager==emh.name}">
             
                 <li>
             <a href="UserController?page=show&ID=${emi.id}"><c:out value="${emi.name}"/></a>&nbsp;&nbsp;<c:out value="${emi.designation}"/>
             
                 </li>
         </c:if>
    </c:forEach>
               </ul>
                 </li>
         </c:if>
    </c:forEach>
               </ul>
                 </li>
         </c:if>
    </c:forEach>
               </ul>
             
                 </li>
         </c:if>
    </c:forEach>
               </ul>
             
                 </li>
         </c:if>
    </c:forEach>
               </ul>
             
                 </li>
         </c:if>
    </c:forEach>
               </ul>
                 </li>
         </c:if>
    </c:forEach>
               </ul>
                   </li>
               </ul>
       


    
        
         
        
    </div>
                
            
        
         
        
    
</div>


<footer class="container-fluid text-center">
    <br>
    <hr>
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>Made By : Ashutosh Sonu</p>		
</footer>



</body>
</html>
