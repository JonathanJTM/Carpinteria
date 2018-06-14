<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CARPINTERIA LA PROVIDENCIA</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <meta http-equiv="refresh"
	content="<%=session.getMaxInactiveInterval()%>; URL=/Carpinteria/timeout.html" />

</head>
<body>


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
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
           
       <li class="dropdown">
          <a  class="dropdown-toggle" data-toggle="dropdown" href="#">Catalogo<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li ><a href="#">Todo</a></li>
            <li><a href="#">Cocina</a></li>
            <li><a href="#">Recamaras</a></li>
            <li><a href="#">Puertas</a></li>
            <li><a href="#">Sala</a></li>
          </ul>
        </li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container">

<div class="mainbox col-md-6 col-md-offset-2">
	<div class="panel panel-info ">
	<div class="panel-heading"><div class="panel-title">Login</div></div>
	<div class="panel-body">
	
	<form class="form-group" method="post" action="Acceso?op=p">
	
		
		<label>Usuario:</label>
		<input type="text" name="user" placeholder="Usuario" required="required" class="form-control" id="user">
		<br>
		<label>Contrase&ntilde;a</label>
		<input type="password" name="pwd" placeholder="Contraseña" required="required" class="form-control" oninput="verPwdChange();" >
		<p id="pwd"></p>
		<label class="checkbox-nline"><input type="checkbox" id="verpwd" class="checbox-inline" onclick=""> Ver contraseña</label>
		<br>
		<input type="submit" value="Iniciar Sesion" class="btn btn-info">
		<input type="button" value="Cancelar" class="btn btn-info">
	
	</form>
	</div>
	</div>
	</div>

</div>


</body>
</html>