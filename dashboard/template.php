<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Dashboard <?= ($page_name !== 'Dashboard') ? ('| ' . $page_name) : ''; ?></title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="<?= get_image_url(base_url('assets/img/static/logo-dark-theme.png')); ?>" type="image/png">
    <link rel="apple-touch-icon" href="<?= get_image_url(base_url('assets/img/static/logo-dark-theme.png')); ?>">

    <!-- Main CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/zuramai/mazer@docs/demo/assets/compiled/css/app.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/zuramai/mazer@docs/demo/assets/compiled/css/app-dark.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.5/dist/sweetalert2.min.css">
    <link rel="stylesheet" href="<?= base_url('assets/css/dashboard.css'); ?>">

    <!-- Another CSS -->
    <?php yieldSection('css'); ?>
</head>

<body>
    <!-- Init theme -->
    <script src="https://cdn.jsdelivr.net/gh/zuramai/mazer@docs/demo/assets/static/js/initTheme.js"></script>
    <script>
        // Fungsi untuk mengganti logo berdasarkan tema
        function updateThemeLogo() {
            const themeLogoElements = document.querySelectorAll('.theme-logo'); // Ambil semua elemen logo
            const currentTheme = document.documentElement.getAttribute('data-bs-theme');

            themeLogoElements.forEach(logo => {
                if (currentTheme === 'dark') {
                    logo.src = "<?= get_image_url(base_url('assets/img/static/logo-dark-theme.png')); ?>";
                } else {
                    logo.src = "<?= get_image_url(base_url('assets/img/static/logo-light-theme.png')); ?>";
                }
            });
        }

        // Jalankan fungsi saat halaman dimuat
        document.addEventListener("DOMContentLoaded", updateThemeLogo);

        // Event listener jika tema berubah
        const observer = new MutationObserver(updateThemeLogo);
        observer.observe(document.documentElement, {
            attributes: true,
            attributeFilter: ['data-bs-theme']
        });
    </script>
    <!-- End of init theme -->

    <!-- Content -->
    <div id="app">
        <!-- Sidebar -->
        <?php include('layout/sidebar.php') ?>
        <!-- End of sidebar -->

        <div id="main">
            <!-- Navbar -->
            <?php include('layout/header.php') ?>
            <!-- End of navbar -->

            <!-- Main content -->
            <?php yieldSection('content'); ?>
            <!-- End of content -->

            <!-- Footer -->
            <?php include('layout/footer.php') ?>
            <!-- End of footer -->
        </div>
    </div>
    <!-- End of content -->

    <!-- Main JS -->
    <script src="https://cdn.jsdelivr.net/gh/zuramai/mazer@docs/demo/assets/static/js/components/dark.js"></script>
    <script src="https://cdn.jsdelivr.net/gh/zuramai/mazer@docs/demo/assets/extensions/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="https://cdn.jsdelivr.net/gh/zuramai/mazer@docs/demo/assets/compiled/js/app.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.5/dist/sweetalert2.all.min.js"></script>
    <script>
        // Logout button
        document.addEventListener('DOMContentLoaded', function() {
            const logoutButton = document.getElementById('btn-logout');

            if (logoutButton) {
                logoutButton.addEventListener('click', function(e) {
                    e.preventDefault();

                    Swal.fire({
                        title: 'Akhiri Sesi',
                        text: 'Apakah Anda yakin ingin keluar?',
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#435ebe',
                        cancelButtonColor: '#6c757d',
                        confirmButtonText: 'Ya, keluar!',
                        cancelButtonText: 'Batal'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            // Redirect ke URL logout
                            window.location.href = "<?= base_url('auth/logout.php'); ?>";
                        }
                    });
                });
            }
        });

        window.onload = function() {
            <?php if (isset($_SESSION['popup-success'])) : ?>
                Swal.fire({
                    title: "Sukses!",
                    text: "<?= $_SESSION['popup-success']; ?>",
                    icon: "success",
                });
            <?php
                unset($_SESSION['popup-success']);
            endif; ?>

            <?php if (isset($_SESSION['popup-warning'])) : ?>
                Swal.fire({
                    title: "Peringatan!",
                    text: "<?= $_SESSION['popup-warning']; ?>",
                    icon: "warning",
                });
            <?php
                unset($_SESSION['popup-warning']);
            endif; ?>

            <?php if (isset($_SESSION['popup-error'])) : ?>
                Swal.fire({
                    title: "Error!",
                    text: "<?= $_SESSION['popup-error']; ?>",
                    icon: "error",
                });
            <?php
                unset($_SESSION['popup-error']);
            endif; ?>
        }
    </script>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            function fetchNotifications() {
                fetch('<?= base_url('dashboard/notification/get-notification-count.php'); ?>')
                    .then(response => response.json())
                    .then(data => {
                        const notification = document.querySelector(".notification");

                        if (data.result_count > 0) {
                            // Menampilkan span dengan mengganti kelas dari d-none ke d-flex
                            notification.classList.remove("d-none");
                            notification.classList.add("d-flex");

                            if (data.result_count > 99) {
                                notification.textContent = "99+";
                            } else {
                                notification.textContent = data.result_count;
                            }
                        } else {
                            // Menyembunyikan span jika result_count 0 atau tidak ada notifikasi
                            notification.classList.remove("d-flex");
                            notification.classList.add("d-none");
                        }
                    })
                    .catch(error => console.error("Fetch error:", error));
            }

            // Jalankan pertama kali
            fetchNotifications();

            // Update setiap 10 detik
            setInterval(fetchNotifications, 10000);
        });
    </script>

    <!-- Another JS -->
    <?php yieldSection('script'); ?>
</body>

</html>