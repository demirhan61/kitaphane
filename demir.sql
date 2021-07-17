-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 17 Tem 2021, 21:30:36
-- Sunucu sürümü: 10.4.10-MariaDB
-- PHP Sürümü: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `demir`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitaplar`
--

CREATE TABLE `kitaplar` (
  `id` int(11) NOT NULL,
  `kitabin_adi` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `yazarlar` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `yayinevi` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yayin_tarihi` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `cilt_bolumbaskı` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `sayfa_sayisi` int(11) DEFAULT NULL,
  `dil` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kitap_turu` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `rafta` int(11) NOT NULL DEFAULT 0,
  `aciklama` varchar(200) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kitaplar`
--

INSERT INTO `kitaplar` (`id`, `kitabin_adi`, `yazarlar`, `yayinevi`, `yayin_tarihi`, `cilt_bolumbaskı`, `sayfa_sayisi`, `dil`, `kitap_turu`, `rafta`, `aciklama`) VALUES
(1, 'Sefiller', 'Victor Hugo', 'Elma', '1998', '3', 380, 'Türkçe', 'Roman', 0, ''),
(2, 'Kürk Mantolu Madonna', 'Sabahattin Ali', 'YapıKredi', '1993', '5', 500, 'İngilizce', 'Roman', 0, ''),
(3, 'Pırtık Tekir', 'Alex Scheffler', 'Kültür', '2005', '2', 80, 'Almanca', 'Öykü', 0, ''),
(4, 'Şeker Portakalı', 'Vasconcelos', 'CanÇocuk', '2000', '6', 425, 'Fransızca', 'Roman', 0, ''),
(5, 'Suç Ve Ceza', 'Dostovyeski', 'Kültür', '1960', '8', 600, 'Rusça', 'Roman', 1, ''),
(6, 'Serenad', 'Zülfü Livaneli', 'DoğanKitap', '2010', '3', 250, 'Türkçe', 'Bilim Kurgu', 1, ''),
(7, 'Simyacı', 'Paulo Coelho', 'Can', '1990', '1', 125, 'İspanyolca', 'Aksiyon', 1, ''),
(8, 'Satranç', 'Stefan Zweıg', 'Portakal', '1980', '9', 500, 'Almanca', 'Eğitici', 0, ''),
(9, 'Don Kişot', 'Cervantes', 'Armut', '1986', '2', 228, 'Flemenkçe', 'Macera', 0, ''),
(10, 'Gurur ve Önyargı', 'Jane Austen', 'Araba', '2010', '3', 300, 'Türkçe', 'Roman', 0, ''),
(11, 'Tutunamayanlar', 'Oğuz Altay', 'İletişim', '1981', '9', 560, 'Türkçe', 'Roman', 0, ''),
(12, 'Gün Olur Asra Bedel', 'Cengiz Aytmatov', 'Ötüken Neşriyat', '2020', '1', 330, 'İngilizce', 'Romantik', 1, ''),
(13, 'Yaban', 'Yakup Kadri Karaosmanoğlu', 'Araba', '2001', '4', 220, 'Almanca', 'Macera', 0, ''),
(14, 'Şu Çılgın Türkler', 'Turgut Özakman', 'Bilgi', '2007', '3', 660, 'Türkçe', 'Tarihi', 1, ''),
(15, 'Da Vinci Şifresi', 'Dan Brown', 'Altın Kitaplar', '1994', '5', 700, 'İtalyanca', 'Aksiyon', 0, ''),
(16, 'Devlet Ana', 'Kemal Tahir', 'İthaki', '1978', '3', 350, 'Türkçe', 'SosyoTarih', 0, ''),
(17, 'Kiralık Konak', 'Yakup Kadri Karaosmanoğlu', 'İletişim', '1965', '9', 386, 'Fransızca', 'Roman', 1, ''),
(18, 'Fareler ve İnsanlar', 'Jon Steinback', 'Sel', '1976', '5', 275, 'Japonca', 'Eğitsel', 0, ''),
(19, 'Fahrenheit 451', 'Ray Bradbury', 'İthaki', '2006', '4', 150, 'İsviçre Almancası', 'Bilim Kurgu', 0, ''),
(20, 'Martı', 'Jonathan Livingston', 'Epsilon', '1988', '5', 180, 'Portekizce', 'Postmodern', 1, '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `id` int(11) NOT NULL,
  `kullanici_adi` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `parola` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_tam_ad` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `eposta` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `telefon` varchar(20) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `adres` varchar(200) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `dogum_tarihi` date DEFAULT NULL,
  `bolum` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_turu` varchar(10) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`id`, `kullanici_adi`, `parola`, `kullanici_tam_ad`, `eposta`, `telefon`, `adres`, `dogum_tarihi`, `bolum`, `kullanici_turu`) VALUES
(1, 'ali', 'c4ca4238a0b923820dcc509a6f75849b', 'Ali Demir Dülger', 'alidemir@gmail.com', '04542132785', 'UzunSokak No:7 Trabzon', '2001-04-05', 'Kütüphane', 'gorevli'),
(2, 'serengul2005', 'c4ca4238a0b923820dcc509a6f75849b', 'SerenGül Yılmaz', 'serengül28@hotmail.com', '02123267828', 'Halı Saha Karşısı No:10 Giresun', '2000-07-20', 'Kütüphane', 'gorevli'),
(3, '150454321562', 'c4ca4238a0b923820dcc509a6f75849b', 'AskımGül Güven', 'AskımGulguven23@gmail.com', '031245583214', 'Yeşil Sokak No:21 İzmir', '2006-07-04', 'Bilgisayar Mühendisliği', 'ogrenci'),
(4, '178834521348', 'c4ca4238a0b923820dcc509a6f75849b', 'Serkan Sefer', 'Sersef1278@outlook.com', '04541658973', 'Yılmaz Sokak No:25 Samsun', '2007-07-18', 'İnşaat Mühendisliği', 'ogrenci'),
(5, '145623589726', 'c4ca4238a0b923820dcc509a6f75849b', 'Berika Çetin', 'BerikÇet32@hotmail.com', '05328589326', 'Uzun Evler No:98 Antalya', '1998-07-22', 'Endüstri Mühendisliği', 'ogrenci'),
(6, '150321567831', 'c4ca4238a0b923820dcc509a6f75849b', 'Sanem Arslan', 'snmarslan29@gmail.com', '04623665780', 'Trafik Caddesi No:50 Ankara', '2003-05-19', 'Elektrik Mühendisliği', 'ogrenci');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `odunc`
--

CREATE TABLE `odunc` (
  `id` int(11) NOT NULL,
  `odunc_verilme_tarihi` date NOT NULL,
  `vade_tarihi` date NOT NULL,
  `kullanici_adi` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kitap_id` int(11) NOT NULL,
  `geri_getirme` int(11) NOT NULL DEFAULT 0,
  `aciklama` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `odunc`
--

INSERT INTO `odunc` (`id`, `odunc_verilme_tarihi`, `vade_tarihi`, `kullanici_adi`, `kitap_id`, `geri_getirme`, `aciklama`) VALUES
(1, '2021-07-10', '2021-08-10', '15045432156', 1, 0, NULL),
(2, '2021-06-12', '2021-06-15', '145623589726', 3, 0, NULL),
(3, '2021-05-22', '2021-05-26', '178834521348', 8, 0, NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kitaplar`
--
ALTER TABLE `kitaplar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `odunc`
--
ALTER TABLE `odunc`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kitaplar`
--
ALTER TABLE `kitaplar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `odunc`
--
ALTER TABLE `odunc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
