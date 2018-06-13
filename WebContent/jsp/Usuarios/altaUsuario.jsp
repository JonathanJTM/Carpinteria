<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CARPINTERIA LA PROVIDENCIA</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
      <a class="navbar-brand" href="#">Carpinteria La Providencia - Alta de Producto</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
      
       <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Catalogo<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Todo</a></li>
            <li><a href="#">Cocina</a></li>
            <li><a href="#">Recamaras</a></li>
            <li><a href="#">Puertas</a></li>
            <li><a href="#">Sala</a></li>
          </ul>
        </li>
      <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Categorias<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Ver categorias</a></li>
            <li><a href="#">Agregar categoria</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Productos<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Ver productos</a></li>
            <li><a href="#">Alta Productos</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Pedidos<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Ver Pedidos</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Usuarios<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Ver Usuarios</a></li>
            <li><a href="#">Alta Usuarios</a></li>
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
	<div class="panel-heading"><div class="panel-title">Registro de Usuario</div></div>
	<div class="panel-body">
	<form class="form-group">
	<label>Nombre de usuario:</label>
	
	<input type="text" name="nombre" placeholder="Nombre de Usuario" required="required" class="form-control">
	<br>
	<label>Contrase&ntilde;a</label>
	<input type="password" name="pwd" placeholder="Contraseña" required="required" class="form-control" oninput="verPwdChange();">
	<p id="pwd"></p>
	<label class="checkbox-nline"><input type="checkbox" id="verpwd" class="checbox-inline" onclick="mostrarPwd();"> Ver contraseña</label>
	<br>
	<label>Email:</label>
	<input type="email" name="email" placeholder="Email" required="required" class="form-control">
	<br>
	<label>Tipo de usuario:</label><select name="tipo" class="form-control">
		<option value="E">Cliente</option>
		<option value="A">Empleado</option>
		<option value="P">Dueño</option>
	</select>
	<br>
	<!--<input type="submit" value="Guardar" class="btn btn-info">-->
	<input type="button" value="Guardar" class="btn btn-info" onclick="reenviar('Usuarios?op=pr');"/>
	<input type="button" value="Cancelar" class="btn btn-info" onclick="reenviar('Usuarios?op=in');"/>
	</form>
	</div>
	</div>
	</div>
</div>


</body>
</html>