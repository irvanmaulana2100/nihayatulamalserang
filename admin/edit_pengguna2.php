<?php
include '../koneksi.php';

if (isset($_GET['success']) && $_GET['success'] === 'true') {
    echo "<script>alert('Edit data pengguna berhasil!');</script>";
    echo "<script>window.location = 'pengguna.php'</script>";
}
