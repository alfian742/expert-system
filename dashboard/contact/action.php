<?php
// Menyertakan konfigurasi
include('../../config/config.php');

// Memulai sesi
session_start();

// Cek login dan role
isAdmin($connection);

// Update 
if (isset($_GET['update-site-contact'])) {
    $errors = [];

    $contact_id     = htmlspecialchars($_GET['update-site-contact']);
    $owner          = htmlspecialchars($_POST['owner']);
    $email          = htmlspecialchars($_POST['email']);
    $phone          = htmlspecialchars($_POST['phone']);
    $instagram      = mysqli_escape_string($connection, $_POST['instagram']);
    $facebook       = mysqli_escape_string($connection, $_POST['facebook']);
    $twitter        = mysqli_escape_string($connection, $_POST['twitter']);
    $tiktok         = mysqli_escape_string($connection, $_POST['tiktok']);
    $youtube        = mysqli_escape_string($connection, $_POST['youtube']);
    $address        = htmlspecialchars($_POST['address']);

    // Validasi pemilik
    if (empty($owner)) {
        $errors['owner'] = 'Pemilik wajib diisi.';
    }

    // Validasi email
    if (empty($email)) {
        $errors['email'] = 'Email wajib diisi.';
    }

    // Validasi nomor HP
    if (empty($phone)) {
        $errors['phone'] = 'Nomor HP wajib diisi.';
    } elseif (!empty($phone) && !is_numeric($phone)) {
        $errors['phone'] = 'Nomor HP harus berupa angka.';
    }

    // Validasi alamat
    if (empty($address)) {
        $errors['address'] = 'Alamat wajib diisi.';
    }


    // Jika tidak ada error, lakukan update
    if (empty($errors)) {
        // Set value untuk nomor HP
        if (!empty($phone) && is_numeric($phone)) {
            $format_phone = '+62' . $phone;
        }

        // Update
        $query = "
                    UPDATE site_contacts 
                    SET 
                        owner = '$owner',
                        email = '$email',
                        phone = '$format_phone',
                        instagram = '$instagram',
                        facebook = '$facebook',
                        twitter = '$twitter',
                        tiktok = '$tiktok',
                        youtube = '$youtube',
                        address = '$address'
                    WHERE id = '$contact_id'
                ";

        $update = $connection->query($query);

        if ($update) {
            $_SESSION['success'] = "Kontak situs berhasil diperbarui.";
        } else {
            $_SESSION['error'] = "Kontak situs gagal diperbarui." . $connection->error;
        }

        // Redirect pengguna
        echo "<script>window.location.href = '" . base_url('dashboard/contact/show.php') . "';</script>";
        exit();
    } else {
        $_SESSION['errors'] = $errors;

        // Redirect berdasarkan role pengguna
        echo "<script>window.location.href = '" . base_url('dashboard/contact/show.php') . "';</script>";
        exit();
    }
}
