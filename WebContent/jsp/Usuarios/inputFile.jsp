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
        <li><a href="acceso?op=cn"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container">

<div class="mainbox col-md-6 col-md-offset-2">
	<div class="panel panel-info ">
	<div class="panel-heading"><div class="panel-title">AltaProducto</div></div>
	<div class="panel-body">

					<form class="form-group" method="Post" action="Producto?op=i">


					<label>Selecionar imagen</label> 
					<input type="file"  id="file" name="file"> 
					<input type="submit" value="Guardar" class="btn btn-info">
					<input type="button" value="Cancelar" class="btn btn-info" onclick="reenviar('acceso?op=index');">

					</form>
	</div>
	</div>
	</div>

</div>


</body>
</html>