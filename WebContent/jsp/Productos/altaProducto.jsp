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
	<label>Nombre de Producto:</label>
	<input type="text" name="nombre" placeholder="Nombre de Producto" required="required" class="form-control" value="Cabecero" id="nombre">
	<br>
	<label>Descripcion:</label>
	<input type="text" name="desc" placeholder="Descripcion" required="required" class="form-control" value="Cabecero de gran tamaño." id="desc">
	<br>
	<label>Precio de Venta:</label>
	<input type="number" name="pventa" placeholder="Precio de Venta" required="required" class="form-control" value="3500" id="pventa">
	<br>
	<label>Estatus:</label>
	<input type="text" name="estatus" placeholder="Estatus" required="required" class="form-control" value="Disponible" id="estatus">
	<br>
	<label>Categoria:</label>
	<select name="categ" class="form-control">
		<option value="A">Armarios</option>
		<option value="C">Cabeceros</option>
		<option value="CO">Cocinas</option>
	</select>
	<br>
	<label>Existencia:</label>
	<input type="number" name="exist" placeholder="Existencia" required="required" class="form-control" value="4" id="exist">
	<br>
	<label>Imagen:</label>
	<input type="text" name="imgen" placeholder="Subir imagen" required="required" class="form-control" value="" id="imagen">
	<br>
	<input type="submit" value="Guardar" class="btn btn-info">
	<input type="button" value="Cancelar" class="btn btn-info">
</div>


</body>
</html>