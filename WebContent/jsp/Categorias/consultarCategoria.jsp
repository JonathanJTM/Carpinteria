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
      <a class="navbar-brand" href="#">Carpinteria La Providencia - Consulta de Categoria</a>
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
		
			<div class="panel panel-info ">
				<div class="panel-heading">
					<div class="panel-title">Listado General Categorias</div>
				</div>
				<div class="panel-body">
					<div class="form-group">
						<input type="text" name="filtro"
							placeholder="Busqueda por nombre de categoria"
							class="form-control">
					</div>
					<table class="table table-hover table-bordered">

						<tr>
							<th>Nombre</th>
							<th>Descripcion</th>
							<th>Ver Categoria</th>
							<th>Editar</th>
							<th>Eliminar</th>
						</tr>
						
					</table>
					<input type="button" value="Regresar" class="btn btn-info"
						onclick="">
				</div>
			</div>
		
		<div id="myModal" class="modal fade" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Eliminaci&oacute;n de Registros</h4>
					</div>
					<div class="modal-body">
						<p id="texto"></p>

					</div>
					<div class="modal-footer">
						<div id="boton"></div>
						<button type="button" class="btn btn-primary" data-dismiss="modal">Cancelar</button>
					</div>
				</div>

			</div>
		</div>

	</div>


</body>
</html>