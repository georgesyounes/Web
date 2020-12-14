<?php
session_start();




if($_POST["name"] == "sonia" && $_POST["password"] == "rahbani")
{
   header("Location: tables.php");
}

else
{

header("Location: index.html");
}

?>