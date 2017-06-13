<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>

  <title>Tree View</title>
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
      /*#region Organizational Chart*/
.tree * {
    margin: 0; padding: 0;
}

.tree ul {
    padding-top: 20px; position: relative;

    -transition: all 0.5s;
    -webkit-transition: all 0.5s;
    -moz-transition: all 0.5s;
}

.tree li {
    float: left; text-align: center;
    list-style-type: none;
    position: relative;
    padding: 20px 5px 0 5px;

    -transition: all 0.5s;
    -webkit-transition: all 0.5s;
    -moz-transition: all 0.5s;
}

/*We will use ::before and ::after to draw the connectors*/

.tree li::before, .tree li::after{
    content: '';
    position: absolute; top: 0; right: 50%;
    border-top: 2px solid #696969;
    width: 50%; height: 20px;
}
.tree li::after{
    right: auto; left: 50%;
    border-left: 2px solid #696969;
}

/*We need to remove left-right connectors from elements without 
any siblings*/
.tree li:only-child::after, .tree li:only-child::before {
    display: none;
}

/*Remove space from the top of single children*/
.tree li:only-child{ padding-top: 0;}

/*Remove left connector from first child and 
right connector from last child*/
.tree li:first-child::before, .tree li:last-child::after{
    border: 0 none;
}
/*Adding back the vertical connector to the last nodes*/
.tree li:last-child::before{
    border-right: 2px solid #696969;
    border-radius: 0 5px 0 0;
    -webkit-border-radius: 0 5px 0 0;
    -moz-border-radius: 0 5px 0 0;
}
.tree li:first-child::after{
    border-radius: 5px 0 0 0;
    -webkit-border-radius: 5px 0 0 0;
    -moz-border-radius: 5px 0 0 0;
}

/*Time to add downward connectors from parents*/
.tree ul ul::before{
    content: '';
    position: absolute; top: 0; left: 50%;
    border-left: 2px solid #696969;
    width: 0; height: 20px;
}

.tree li a{
    height: 100px;
    width: 200px;
    padding: 5px 10px;
    text-decoration: none;
    background-color: aliceblue;
    color: #8b8b8b;
    font-family: arial, verdana, tahoma;
    font-size: 11px;
    display: inline-block;  
    box-shadow: 0 1px 2px rgba(0,0,0,0.1);

    -transition: all 0.5s;
    -webkit-transition: all 0.5s;
    -moz-transition: all 0.5s;
}

/*Time for some hover effects*/
/*We will apply the hover effect the the lineage of the element also*/
.tree li a:hover, .tree li a:hover+ul li a {
    background: #cbcbcb; color: #000;
}
/*Connector styles on hover*/
.tree li a:hover+ul li::after, 
.tree li a:hover+ul li::before, 
.tree li a:hover+ul::before, 
.tree li a:hover+ul ul::before{
    border-color:  #94a0b4;
}
/*#endregion*/
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
        <li><a href="#tree">TREE</a></li>
      </ul>
    </div>
  </div>
   
</nav>
    <div>
        <div class="jumbotron" id="tree1" style="padding-bottom: 10px;height: 140px">
        <h1 style="margin-left: 350px">Organization Chart</h1> 
    
    
</div>
        <div style="width: 3500px;width: max-content">
            <hr style="border-color: #cbcbcb"> 
    <!-- Container (About Section) -->
    <div id="tree" class="container-fluid" style="margin-top:0px;padding-top: 5px;">
       
  <p style="text-align: left"><a href="UserController?page=home">Home</a> / Tree View</p>
    <div class="row">
        
        <h1>All Employees</h1> 
    </div>
  <br>
  <hr>
  <div class="row" style="margin-top: 100px">
        <div class="col-md-12">
            <div class="tree">
                <ul>
                    <li>
                        <a href="UserController?page=show&ID=1">

                            <div class="container-fluid">
                                <div class="row" style="margin-top: 15px">
                                    Anchal
                                </div>
                                <div class="row" style="margin-top: 15px;">
                                    <i class="fa fa-exclamation-circle fa-2x"></i>
                                </div>
                                <div class="row">
                                    CEO
                                </div>
                            </div>

                        </a>
                        <ul>
                        
                            <c:forEach items="${emp}" var="emp">
         <c:if test="${emp.manager=='Anchal'}">
                            <li>
                                <a href="UserController?page=show&ID=${emp.id}">

                                    <div class="container-fluid">
                                        <div class="row" style="margin-top: 15px">
                                            <c:out value="${emp.name}"/>
                                        </div>
                                        <div class="row" style="margin-top: 15px;">
                                            <i class="fa fa-exclamation-circle fa-2x"></i>
                                        </div>
                                        <div class="row">
                                            <c:out value="${emp.designation}"/>
                                        </div>
                                    </div>

                                </a>
                                        <ul>
                            <c:forEach items="${emd}" var="emd">
         <c:if test="${emd.manager==emp.name}">
                            <li>
                                <a href="UserController?page=show&ID=${emd.id}">

                                    <div class="container-fluid">
                                        <div class="row" style="margin-top: 15px">
                                            <c:out value="${emd.name}"/>
                                        </div>
                                        <div class="row" style="margin-top: 15px;">
                                            <i class="fa fa-exclamation-circle fa-2x"></i>
                                        </div>
                                        <div class="row">
                                            <c:out value="${emd.designation}"/>
                                        </div>
                                    </div>

                                </a>
                                        <ul>
                            <c:forEach items="${eme}" var="eme">
         <c:if test="${eme.manager==emd.name}">
                            <li>
                                <a href="UserController?page=show&ID=${eme.id}">

                                    <div class="container-fluid">
                                        <div class="row" style="margin-top: 15px">
                                            <c:out value="${eme.name}"/>
                                        </div>
                                        <div class="row" style="margin-top: 15px">
                                            <i class="fa fa-exclamation-circle fa-2x"></i>
                                        </div>
                                        <div class="row">
                                            <c:out value="${eme.designation}"/>
                                        </div>
                                    </div>

                                </a>
                                        <ul>
                            <c:forEach items="${emf}" var="emf">
         <c:if test="${emf.manager==eme.name}">
                            <li>
                                <a href="UserController?page=show&ID=${emf.id}">

                                    <div class="container-fluid">
                                        <div class="row" style="margin-top: 15px">
                                            <c:out value="${emf.name}"/>
                                        </div>
                                        <div class="row" style="margin-top: 15px;">
                                            <i class="fa fa-exclamation-circle fa-2x"></i>
                                        </div>
                                        <div class="row">
                                            <c:out value="${emf.designation}"/>
                                        </div>
                                    </div>

                                </a>
                                         <ul>
                            <c:forEach items="${emg}" var="emg">
         <c:if test="${emg.manager==emf.name}">
                            <li>
                                <a href="UserController?page=show&ID=${emg.id}">

                                    <div class="container-fluid">
                                        <div class="row" style="margin-top: 15px">
                                            <c:out value="${emg.name}"/>
                                        </div>
                                        <div class="row" style="margin-top: 15px;">
                                            <i class="fa fa-exclamation-circle fa-2x"></i>
                                        </div>
                                        <div class="row">
                                            <c:out value="${emg.designation}"/>
                                        </div>
                                    </div>

                                </a>
                                         <ul>
                            <c:forEach items="${emh}" var="emh">
         <c:if test="${emh.manager==emg.name}">
                            <li>
                                <a href="UserController?page=show&ID=${emh.id}">

                                    <div class="container-fluid">
                                        <div class="row"  style="margin-top: 15px">
                                            <c:out value="${emh.name}"/>
                                        </div>
                                        <div class="row" style="margin-top: 15px;">
                                            <i class="fa fa-exclamation-circle fa-2x"></i>
                                        </div>
                                        <div class="row">
                                            <c:out value="${emh.designation}"/>
                                        </div>
                                    </div>

                                </a>
                             <ul>
                            <c:forEach items="${emi}" var="emi">
         <c:if test="${emi.manager==emh.name}">
                            <li>
                                <a href="UserController?page=show&ID=${emi.id}">

                                    <div class="container-fluid">
                                        <div class="row" style="margin-top: 15px">
                                            <c:out value="${emi.name}"/>
                                        </div>
                                        <div class="row" style="margin-top: 15px;">
                                            <i class="fa fa-exclamation-circle fa-2x"></i>
                                        </div>
                                        <div class="row">
                                            <c:out value="${emi.designation}"/>
                                        </div>
                                    </div>

                                </a>
                            
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
    </div>
  <br><br>
        <hr>
</div>

     
    <footer class="container-fluid  container-fluid-fixed-bottom" style="margin-left: 550px">
       
  <a href="#myPage" title="To Top">
      <span class="glyphicon glyphicon-chevron-up" style="margin-left: 70px"></span>
  </a>
  <p>Made By : Ashutosh Sonu</p>		
</footer>

</div>
    
</body>
</html>
