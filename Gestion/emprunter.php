<?php
mysql_connect("localhost","root","");
mysql_select_db("gestion");
$cin=$_POST["T1"];
$num=$_POST["T2"];


    $req1="insert into livre values('$cin','$num')";
    $res1=mysql_query($res1);
    if ($req1==Null) {
       echo("echec d ajout");
    }
    else {
        echo("ajout avec success");
    }

?>