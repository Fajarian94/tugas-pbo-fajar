<?php
// Informasi Toko Pegadaian Syariah
$tokoNama = "Toko Pegadaian Syariah";
$tokoAlamat = "Jl Keadilan No 16";
$tokoTelepon = "Telp. 72353459";

// Input besaran pinjaman, besar bunga (%), lama angsuran (bulan)
$besarPinjaman = 1000000; // Rp. 1.000.000
$besarBunga = 10; // 10%
$lamaAngsuran = 5; // 5 bulan

// Menghitung total pinjaman
$totalPinjaman = $besarPinjaman + ($besarPinjaman * ($besarBunga / 100));

// Menghitung besar angsuran per bulan
$besarAngsuran = $totalPinjaman / $lamaAngsuran;

// Menampilkan informasi toko
echo "$tokoNama\n" . "<br>";
echo "$tokoAlamat\n" . "<br>";
echo "$tokoTelepon\n\n" . "<br>";

// Menampilkan hasil perhitungan
echo "Program Penghitung Besaran Angsuran Hutang\n" . "<br>";
echo "Besaran Pinjaman :  Rp. " . number_format($besarPinjaman, 0, ',', '.') . "\n" . "<br>";
echo "Masukan Besar Bunga  (%): $besarBunga%\n" . "<br>";
echo "Total Pinjaman : Rp. " . number_format($totalPinjaman, 0, ',', '.') . "\n" . "<br>";
echo "Lama angsuran (bulan) : $lamaAngsuran\n" . "<br>";
echo "Besar angsuran per bulan : Rp. " . number_format($besarAngsuran, 0, ',', '.') . "\n" . "<br>";
?>