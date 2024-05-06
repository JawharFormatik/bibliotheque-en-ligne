<?php
mysql_connect("localhost","root","");
mysql_select_db("gestion");
$num=$_POST["T1"];
$typ=$_POST["D1"];
$tit=$_POST["T2"];
$nd=$_POST["T3"];
$req="select NumL from livre where NumL='$num'";
$res=mysql_query($req);
if (mysql_num_rows($res)!=0) {
    echo("livre existe");
}
else {
    $req1="insert into livre values('$num','$typ','$tit','$nd')";
    $res1=mysql_query($res1);
    if ($req1==Null) {
       echo("echec d ajout");
    }
    else {
        echo("ajout avec success");
    }
}



?>