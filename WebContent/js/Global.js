/////////carga de categorias con ajax/////////
function crearCategorias(){
	var xhttp=new XMLHttpRequest();
	xhttp.onreadystatechange=function(){
		if(this.readyState==4 && this.status==200){
			mostrarCategorias(this.responseText);
		}
	};
	xhttp.open("POST","CargaInicio?op=cc", true);
	xhttp.send();
}
function mostrarCategorias(respuesta){
	var datos=eval(respuesta);
	if(datos.length==0){
		return;
	}
	var lista='<li>';
	lista+='<a href="CategoriaProductos?op=c&id='+datos[0].id+'">'+datos[0].Nombre+'</td>';
	lista+='</li>';
	
	for(var i=1;i<datos.length;i++){
		lista+='<li>';
		lista+='<a href="CategoriaProductos?op=c&id='+datos[i].id+'">'+datos[i].Nombre+'</td>';
		lista+='</li>';
	}
	document.getElementById("cats").innerHTML=lista;
}
/////////carga de categorias con ajax/////////



function verPwdChange(){
	var chb=document.getElementById("verpwd");
	if(chb.checked){
		document.getElementById("pwd1").innerHTML=
			document.getElementsByName("pwd")[0].value;
	}
	else{
		document.getElementById("pwd").innerHTML="";
	}
}


function reenviar(url){
	location.href=url;
}
/////////carga de categorias con sus productos/////////
function mostrarCategoriaProd(id){
	crearCategorias();
	var xhttp=new XMLHttpRequest();
	xhttp.onreadystatechange=function(){
		if(this.readyState==4 && this.status==200){
			mostrarProductos(this.responseText);
		}
	};
	xhttp.open("POST","CategoriaProductos?op=cp&id="+id, true);
	xhttp.send();
}
function mostrarProductos(respuesta){
	var datos=eval(respuesta);
	if(datos.length==0){
		return;
	}
	var jsp='<h1><span>'+datos[0].nomCat+'</span></h1>';
	    jsp+='<h2><span>'+datos[0].desCat+'</span></h2>';
					jsp+='<div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12">';
					jsp+='<a href="#">';
					jsp+='<img src="data:image/png;base64,${'+datos[0].ima+'}" />';//height="60" width="60"
					jsp+='<h3>'+datos[0].nom+'</h3>';
					jsp+='<p>Precio: $'+datos[0].precio+'</p>';
					jsp+='</a>';
					jsp+='</div>';
					
	for(var i=1;i<datos.length;i++){
		jsp+='<div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12">';
		jsp+='<a href="#">';
		jsp+='<img src="data:image/png;base64,${'+datos[i].ima+'}" />';//height="60" width="60"
		jsp+='<h3>'+datos[i].nom+'</h3>';
		jsp+='<p>Precio: $'+datos[i].precio+'</p>';
		jsp+='</a>';
		jsp+='</div>';
	}
	document.getElementById("cargarProd").innerHTML=jsp;
}
/////////carga de categorias con sus productos/////////







function eliminarOpcion(id,nombre){
	$("#textoMostrar").html('¿Estas seguro de eliminar a la opcion '+nombre+'?');
	$("#boton").html("<input type=\"button\" value=\"Aceptar\" class=\"btn btn-primary\" data-dismiss=\"modal\" " +
	"onclick=\"borrarOpcion('"+id+"');\">");
}
function eliminar(id,nombre,tipo){
	document.getElementById("texto").innerHTML="¿Estas seguro de eliminar al "+tipo+":"+nombre+" ?";
	document.getElementById("boton").innerHTML="<input type=\"button\" value=\"Aceptar\" class=\"btn btn-primary\" data-dismiss=\"modal\" " +
			"onclick=\"borrar('"+id+"');\">";
			
}






function consultaAulas(){
	var xhttp=new XMLHttpRequest();
	xhttp.onreadystatechange=function(){
		if(this.readyState==4 && this.status==200){
			generarTablaAulas(this.responseText);
		}
	};
	xhttp.open("post", "aulas?op=cg", true);
	xhttp.send();
}
function generarTablaAulas(datos){
	if(datos.length==0){
		document.getElementById("datos").innerHTML="No hay Registros";
	}
	else{
		var table='<table class="table table-hover table-bordered">';
		table+='<th>ID</th>';
		table+='<th>NOMBRE</th>';
		table+='<th>UBICACION</th>';
		var arr=eval(datos);
		for(var i=0;i<arr.length;i++){
			table+='<tr>';
			table+='<td>'+arr[i].id+'</td>';
			table+='<td>'+arr[i].nombre+'</td>';
			table+='<td>'+arr[i].ubicacion+'</td>';
			table+='</tr>'
		}
		table+='</table>';
		document.getElementById("datos").innerHTML=table;
	}
}

function mostrarAlumnos(){
	var select=document.getElementById("carrera");
	if(select.value!=0){
		document.getElementById("guardar").disabled=false;
		XMLHttpRequest
		ajax = new XMLHttpRequest();
		ajax.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				generarOpcionesAlumnos(this.responseText);
			}
		};
		ajax.open("get", "Actos?op=cac&idCarrera="+select.value, true);
		ajax.send();
	}
	else{
		document.getElementById("guardar").disabled=true;
	}
}
function generarOpcionesAlumnos(datos){
	borrarAlumnos();
	var array=eval(datos);
	var select=document.getElementById("alumno");
	for(var i=0;i<array.length;i++){
		var option=document.createElement("option");
		var texto=document.createTextNode(array[i].nombre);
		option.setAttribute("value", array[i].nc);
		option.appendChild(texto);
		select.appendChild(option);
	}
}
function borrarAlumnos(){
	var select=document.getElementById("alumno");
	for(var i=select.options.length-1;i>0;i--){
		select.removeChild(select.options[i]);
	}
}
function filtrar(){
	var value = $("#filtrar").val().toLowerCase();
    $("#datos tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
}
function insertarAula(){	
	$.ajax({
		url:'aulas?op=i',
		async:true,
		data:{"nombre":$("#nombre").val(),"ubicacion":$("#ubicacion").val()},
		type:'get',
		dataType:'JSON',
		success:function(data){
			var json=eval(data);
			$("#notificaciones").html(json.msg);
			if(json.tipo=='ok')
				$("#notificaciones").css("class","alert alert-success");
		}
		});
}






