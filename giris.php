<html>
<head>
    <title>Demirhanın Kütüphanesi Giriş Ekranı</title>
</head>
<body>
    <form action="giris_kontrol.php" method="post">
        <!-- 2 sütun 3 satır tablo -->
        <table border="1">
            <tr>
               <td>Kullanıcı Adı:</td>
               <td>
                   <input type="text" name="kul_adi">
                </td>
            </tr>
            <tr>
                <td>Parola:</td>
                <td>
                    <input type="password" name="parola">                    
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" name="gonder" value="Giriş Yap">                    
                </td>
            </tr>
        </table>
    </form>
</body>
</html>