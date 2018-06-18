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
      <a class="navbar-brand" href="acceso?op=index">Carpinteria La Providencia</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      
      <ul class="nav navbar-nav navbar-right">
        <li><a href="acceso?op=l"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container">
	<div class="mainbox col-md-6 col-md-offset-2">
	<div class="panel panel-info ">
	<div class="panel-heading"><div class="panel-title">Registro de Usuario</div></div>
	<div class="panel-body">
	<form class="form-group" method="post" action="Usuario?op=nu">
	
		<label>Nombre:</label>
		<input type="text" name="nombre" placeholder="Nombre" required="required" class="form-control" id="nombre">
		<br>
		<label>Apellidos:</label>
		<input type="text" name="apellidos" placeholder="Apellidos" required="required" class="form-control" id="apellidos">
		<br>
		<label>Email:</label>
		<input type="email" name="email" placeholder="Email" required="required" class="form-control" id="email">
		<br>
		<label>Telefono:</label>
		<input type="text" name="tel" placeholder="Telefono" required="required" class="form-control" id="tel">
		<br>
		<label>Direccion:</label>
		<input type="text" name="dir" placeholder="Direccion" required="required" class="form-control" id="dir">
		<br>
		<label>Usuario:</label>
		<input type="text" name="user" placeholder="Usuario" required="required" class="form-control" id="user">
		<br>
		<label>Contrase&ntilde;a</label>
		<input type="password" name="pwd" id="pwd" placeholder="Contraseña" required="required" class="form-control" oninput="verPwdChange();" >
		<p id="pwd1"></p>
		<label class="checkbox-nline"><input type="checkbox" id="verpwd" class="checbox-inline" onclick=""> Ver contraseña</label>
		
		<br>
		<input type="submit" value="Submit" class="btn btn-info">
		<input type="button" value="Cancelar" class="btn btn-info" onclick="reenviar('acceso?op=index');">
	
	</form>
	</div>
	</div>
	</div>
</div>


</body>
</html>