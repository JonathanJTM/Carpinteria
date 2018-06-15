<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CARPINTERIA LA PROVIDENCIA</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="/Carpinteria/js/Global.js"></script>
  <meta http-equiv="refresh"
	content="<%=session.getMaxInactiveInterval()%>; URL=/Carpinteria/timeout.html" />
</head>
<body onload="crearCategorias()">


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Carpinteria La Providencia</a>
    </div>
    <div class="collapse navbar-collapse">
    
      <ul class="nav navbar-nav">
       <li class="dropdown">
          <a  class="dropdown-toggle" data-toggle="dropdown" href="#">Catalogo<span class="caret"></span></a>
            <ul class="dropdown-menu" id="cats" name="cats"></ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="acceso?op=l"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container">
  
</div>


</body>
</html>