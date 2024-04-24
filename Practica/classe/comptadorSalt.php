<?php
include_once ("TComptador.php");
header("Content-Type: text/html;charset=utf-8");

include_once("capsalera.html");
if (!empty($_POST["maxim"]) and !empty($_POST["salt"]))
{
	$maxim = $_POST["maxim"];
	$salt = $_POST["salt"];
	$s = new TComptaSalt($maxim);
	$s->posar_salt($salt);

	while (!($s->fi()))
	{
		echo "s = " . $s->consulta() . "<br>";
		$s->incrementa();
	}
}
else
{
	echo ("ERROR: No s'han proporcionat els dos valors per al comptador amb salt<br>");
}
include_once("peu.html");


?>
