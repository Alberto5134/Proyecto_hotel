<?php
	$conexion= mysqli_connect('localhost','root','','hotel');

	if(!$conexion){
		echo "Error al conectar";
	}
	else
	{
		echo "Conectado a la Base De Datos";
	}		
?>