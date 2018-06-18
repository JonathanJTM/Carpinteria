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
      <a class="navbar-brand" href="">Carpinteria La Providencia</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
           
       <li class="dropdown">
          <a  class="dropdown-toggle" data-toggle="dropdown" href="#">Catalogo<span class="caret"></span></a>
          <ul class="dropdown-menu" id="cats"></ul>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Pedidos<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Ver Pedidos</a></li>
          </ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
       <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Usuario:${usuario.user}<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Editar Perfil</a></li>
            <li><a href="#">SignOut</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container">
	<div style="text-align:center" >
		<h3>Bienvenido al Sistema de Pedidos de Carpinteria la Providencia</h3>
		<br>
		<img src="/Carpinteria/imagenes/LogoCarpPro.png" >
	</div> 
	
	</div> 
</div>


</body>
</html>