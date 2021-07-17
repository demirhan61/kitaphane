<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
<script>
$(document).ready( function () {
    $('#table_id').DataTable();
} );
</script>
<?php
include "baglanti.php";
echo "Demirhanın Kütüphanesine Hoşgeldiniz <br>";
$kitaplar = $db->selectAll('kitaplar', ['id', 'DESC']);
echo '<table id="table_id" class="display">';
echo "<thead>";
echo "<tr>";
    echo "<th>ID</th>";
    echo "<th>Kitap Adı</th>";
    echo "<th>Yazarlar</th>";
    echo "<th>Yayınevi</th>";
    echo "<th>Yayın Tarihi</th>";
    echo "<th>Cilt BölümBaskı</th>";
    echo "<th>Sayfa Sayısı</th>";
    echo "<th>Dil</th>";
    echo "<th>Kitap Türü</th>";
    echo "<th>Rafta</th>";
    echo "<th>Açiklama</th>";
echo "</tr>";
echo "</thead>";
echo "<tbody>";
foreach ($kitaplar as $kitap){
    echo "<tr>";
    extract($kitap);
    echo "<td>".$id."</td>";
    echo "<td>".$kitabin_adi."</td>";
    echo "<td>".$yazarlar."</td>";
    echo "<td>".$yayinevi."</td>";
    echo "<td>".$yayin_tarihi."</td>";
    echo "<td>".$cilt_bolumbaskı."</td>";
    echo "<td>".$sayfa_sayisi."</td>";
    echo "<td>".$dil."</td>";
    echo "<td>".$kitap_turu."</td>";
    echo "<td>".$rafta."</td>";
    echo "<td> ".$aciklama."</td>";
    echo "</tr>";   
}
echo "</tbody>";
echo "</table>";
?>