<hr>
<?php
/*
echo "Kullanıcı adı: " . $_POST["kul_adi"];
echo "<br>";
echo "Parola:"         .$_POST["parola"];
*/

include "baglanti.php";
$sql = "SELECT * FROM kullanicilar WHERE kullanici_adi = \"" . $_POST["kul_adi"] . "\" AND parola = MD5(\"" . $_POST["parola"] ."\");";

//echo $sql;
$result = $db->query($sql); 
//echo "<br> null durumu: " . $result->RowCount();
//$giris = count($result);
if($result){
    //extract($result);
    echo "Giriş Başarılı, Merhaba " . $result[0]['kullanici_tam_ad'] . "<br>";
    echo $result[0]['kullanici_turu'] . " olarak giriş yaptınız." . "<br>";
    include "kitap_listele.php";
}
else{
    echo "Giriş Başarısız <br>";
    echo '<a href="giris.php">Yeniden Dene</a>';
}
/*
echo count($result) . "<br>";
extract($result);
echo $result[0];
foreach ($result as $row){
    extract($row);
    if()
}
*/
?>