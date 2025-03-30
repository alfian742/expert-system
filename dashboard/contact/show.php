<?php
// Menyertakan konfigurasi
include('../../config/config.php');

// Memulai sesi
session_start();

// Cek login dan role
isAdmin($connection);

$page_name = 'Kontak Situs';

// Ambil data
$query = $connection->query("SELECT * FROM site_contacts LIMIT 1");

// Pastikan query berhasil dan ada hasilnya
if ($query->num_rows == 0) {
    $_SESSION['popup-warning'] = "Data tidak ditemukan.";
    echo "<script>window.location.href = '" . base_url('dashboard/index.php') . "';</script>";
    exit();
} else {
    $result = $query->fetch_assoc();

    $contact_id = $result['id'];
    $owner      = $result['owner'];
    $email      = $result['email'];
    $phone      = substr($result['phone'], 3);
    $instagram  = $result['instagram'];
    $facebook   = $result['facebook'];
    $twitter    = $result['twitter'];
    $tiktok     = $result['tiktok'];
    $youtube    = $result['youtube'];
    $address    = $result['address'];
}
?>

<?php startSection('css'); ?>
<?php endSection('css'); ?>

<?php startSection('content'); ?>
<div class="page-heading">
    <div class="row justify-content-center">
        <div class="col-12 col-lg-6">
            <div class="d-flex justify-content-center align-items-center gap-2">
                <h3 class="mb-0"><?= $page_name; ?></h3>
            </div>
        </div>
    </div>
</div>

<div class="page-content">
    <section class="row justify-content-center">
        <div class="col-12 col-lg-6">
            <div class="card">
                <div class="card-body">
                    <?php include('../layout/alerts.php') ?>

                    <form method="post" action="<?= base_url('dashboard/contact/action.php?update-site-contact=' . $contact_id); ?>">
                        <div class="row g-4 mb-4">
                            <div class="col-md-12">
                                <label for="owner" class="form-label">Pemilik <span class="text-danger">*</span></label>
                                <input type="text" name="owner" class="form-control <?= isset($_SESSION['errors']['owner']) ? 'is-invalid' : '' ?>" id="owner" placeholder="Jhon Doe" value="<?= $owner; ?>">
                                <div class="invalid-feedback">
                                    <?= isset($_SESSION['errors']['owner']) ? $_SESSION['errors']['owner'] : '' ?>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <label for="email" class="form-label">Email <span class="text-danger">*</span></label>
                                <input type="email" name="email" class="form-control <?= isset($_SESSION['errors']['email']) ? 'is-invalid' : '' ?>" id="email" autofocus placeholder="email@example.com" value="<?= $email; ?>">
                                <div class="invalid-feedback">
                                    <?= isset($_SESSION['errors']['email']) ? $_SESSION['errors']['email'] : '' ?>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <label for="phone" class="form-label">Nomor HP <span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <span class="input-group-text" id="basic-addon1">+62</span>
                                    <input type="number" name="phone" class="form-control <?= isset($_SESSION['errors']['phone']) ? 'is-invalid' : '' ?>" id="phone" placeholder="81*********" value="<?= $phone; ?>">
                                    <div class="invalid-feedback">
                                        <?= isset($_SESSION['errors']['phone']) ? $_SESSION['errors']['phone'] : '' ?>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <label for="address" class="form-label">Alamat <span class="text-danger">*</span></label>
                                <textarea name="address" class="form-control <?= isset($_SESSION['errors']['address']) ? 'is-invalid' : '' ?>" id="address" placeholder="Jl. Merdeka, NO. 123, Jakarta" rows="3"><?= $address; ?></textarea>
                                <div class="invalid-feedback">
                                    <?= isset($_SESSION['errors']['address']) ? $_SESSION['errors']['address'] : ''; ?>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <label for="instagram" class="form-label">URL Instagram</label>
                                <input type="text" name="instagram" class="form-control <?= isset($_SESSION['errors']['instagram']) ? 'is-invalid' : '' ?>" id="instagram" placeholder="https://www.site.com" value="<?= $instagram; ?>">
                                <div class="invalid-feedback">
                                    <?= isset($_SESSION['errors']['instagram']) ? $_SESSION['errors']['instagram'] : ''; ?>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <label for="facebook" class="form-label">URL Facebook</label>
                                <input type="text" name="facebook" class="form-control <?= isset($_SESSION['errors']['facebook']) ? 'is-invalid' : '' ?>" id="facebook" placeholder="https://www.site.com" value="<?= $facebook; ?>">
                                <div class="invalid-feedback">
                                    <?= isset($_SESSION['errors']['facebook']) ? $_SESSION['errors']['facebook'] : ''; ?>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <label for="twitter" class="form-label">URL Twitter</label>
                                <input type="text" name="twitter" class="form-control <?= isset($_SESSION['errors']['twitter']) ? 'is-invalid' : '' ?>" id="twitter" placeholder="https://www.site.com" value="<?= $twitter; ?>">
                                <div class="invalid-feedback">
                                    <?= isset($_SESSION['errors']['twitter']) ? $_SESSION['errors']['twitter'] : ''; ?>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <label for="tiktok" class="form-label">URL TikTok</label>
                                <input type="text" name="tiktok" class="form-control <?= isset($_SESSION['errors']['tiktok']) ? 'is-invalid' : '' ?>" id="tiktok" placeholder="https://www.site.com" value="<?= $tiktok; ?>">
                                <div class="invalid-feedback">
                                    <?= isset($_SESSION['errors']['tiktok']) ? $_SESSION['errors']['tiktok'] : ''; ?>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <label for="youtube" class="form-label">URL YouTube</label>
                                <input type="text" name="youtube" class="form-control <?= isset($_SESSION['errors']['youtube']) ? 'is-invalid' : '' ?>" id="youtube" placeholder="https://www.site.com" value="<?= $youtube; ?>">
                                <div class="invalid-feedback">
                                    <?= isset($_SESSION['errors']['youtube']) ? $_SESSION['errors']['youtube'] : ''; ?>
                                </div>
                            </div>
                        </div>

                        <button type="submit" class="btn btn-primary text-white px-3">Simpan</button>
                    </form>

                    <?php unset($_SESSION['errors']); ?>
                </div>
            </div>
        </div>
    </section>
</div>
<?php endSection('content'); ?>

<?php startSection('script'); ?>
<?php endSection('script'); ?>

<?php include('../template.php') ?>