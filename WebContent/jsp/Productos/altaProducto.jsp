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
<body onload="verComboCats();">


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="acceso?op=indexA">Carpinteria La Providencia</a>
    </div>

  </div>
</nav>
  
<div class="container">
<form method="Post" action="Producto?op=altaProducto">
	<label>Nombre de Producto:</label>
	<input type="text" name="nombre" placeholder="Nombre de Producto" required="required" class="form-control" id="nombre">
	<br>
	<label>Descripcion:</label>
	<input type="text" name="desc" placeholder="Descripcion" required="required" class="form-control" id="desc">
	<br>
	<label>Precio de Venta:</label>
	<input type="number" name="pventa" placeholder="Precio de Venta" required="required" class="form-control" id="pventa">
	<br>
	<label>Categoria:</label>
	<select name="categ" class="form-control" id="combo"></select>
	<br>
	<label>Imagen:</label><input type="file"  id="file" name="file" class="btn btn-info"> <br>
	<input type="submit" value="Guardar" class="btn btn-info">
	<input type="button" value="Cancelar" class="btn btn-info" onclick="reenviar('acceso?op=indexA')">
	</form>
</div>


</body>
</html>