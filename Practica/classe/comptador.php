<?php
include_once ("TComptador.php");
header("Content-Type: text/html;charset=utf-8");

include_once("capsalera.html");
if (!empty($_POST["maxim"]))
{
	$maxim = $_POST["maxim"];
	$i = new TComptador($maxim);
	while (!($i->fi()))
	{
		echo "i = " . $i->consulta() . "<br>";
		$i->incrementa();
	}
}
else
{
	echo ("ERROR: No s'ha proporcionat un màxim per a comptar<br>");
}
include_once("peu.html");

/*
$s = new TComptaSalt(10);
$s->posar_salt(3);
while (!($s->fi()))
{
	echo "s = " . $s->consulta() . "<br>";
	$s->incrementa();
}
*/

?>
