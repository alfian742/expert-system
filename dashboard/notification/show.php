<?php
// Menyertakan konfigurasi
include('../../config/config.php');

// Memulai sesi
session_start();

// Cek login dan role
isAdmin($connection);

$page_name = 'Notifikasi';
?>

<?php startSection('css'); ?>
<link rel="stylesheet" href="https://zuramai.github.io/mazer/demo/assets/extensions/datatables.net-bs5/css/dataTables.bootstrap5.min.css">
<link rel="stylesheet" href="https://zuramai.github.io/mazer/demo/assets/compiled/css/table-datatable-jquery.css">
<?php endSection('css'); ?>

<?php startSection('content'); ?>
<div class="page-heading">
    <div class="row justify-content-center">
        <div class="col-12">
            <div class="d-flex justify-content-between align-items-center gap-2">
                <h3 class="mb-0"><?= $page_name; ?></h3>
                <a href="<?= base_url('dashboard/notification/action.php?clear-notifications=true'); ?>" class="btn btn-sm btn-primary">Bersihkan</a>
            </div>
        </div>
    </div>
</div>

<div class="page-content">
    <section class="row">
        <?php
        // Query untuk mengambil semua data
        $query_notification = $connection->query("SELECT * FROM notifications WHERE status = 'Belum Dilihat'");

        if ($query_notification->num_rows > 0):
        ?>
            <?php
            // Query untuk mengambil semua data
            $query_message = "SELECT messages.*, notifications.status, messages.status AS message_status
                                FROM messages
                                INNER JOIN notifications ON notifications.message_id = messages.id
                                WHERE notifications.status = 'Belum Dilihat'
                                ORDER BY messages.message_date DESC";
            $result_message = $connection->query($query_message);

            if ($result_message->num_rows > 0):
            ?>
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-center gap-2 mb-3">
                                <h5 class="card-title">Pesan Terbaru</h5>
                                <a href="<?= base_url('dashboard/message/show.php'); ?>" class="btn btn-sm btn-outline-primary">Lihat Semua</a>
                            </div>

                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>Waktu</th>
                                            <th>Email</th>
                                            <th>Nama</th>
                                            <th>Subject</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no = 1;
                                        while ($row_message = $result_message->fetch_assoc()) :
                                        ?>
                                            <tr>
                                                <td><?= $no++; ?></td>
                                                <td><?= format_indonesian_time(htmlspecialchars($row_message['message_date'])); ?></td>
                                                <td class="fst-italic"><?= htmlspecialchars($row_message['email']); ?></td>
                                                <td><?= htmlspecialchars($row_message['fullname']); ?></td>
                                                <td><?= htmlspecialchars($row_message['subject']); ?></td>
                                                <td>
                                                    <span class="badge <?= (htmlspecialchars($row_message['message_status']) === 'Dibaca') ? 'bg-success' : 'bg-warning'; ?>">
                                                        <?= htmlspecialchars($row_message['message_status']); ?>
                                                    </span>
                                                </td>
                                            </tr>
                                        <?php endwhile ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endif ?>

            <?php
            // Query utama sudah dioptimalkan untuk mengambil penyakit utama sekaligus
            $query_consultation = "SELECT consultations.id AS consultation_id, 
                                            consultations.consultation_date, 
                                            users.fullname, 
                                            users.email, 
                                            users.role, 
                                            diseases.disease_name, 
                                            notifications.status, 
                                            histories.accuracy
                                    FROM consultations
                                    INNER JOIN histories ON histories.consultation_id = consultations.id
                                    INNER JOIN users ON users.id = histories.user_id
                                    INNER JOIN diseases ON diseases.id = histories.disease_id
                                    INNER JOIN notifications ON notifications.consultation_id = consultations.id
                                    WHERE notifications.status = 'Belum Dilihat' 
                                            AND histories.accuracy = (SELECT MAX(h.accuracy) 
                                            FROM histories h 
                                            WHERE h.consultation_id = consultations.id)
                                    ORDER BY consultations.consultation_date DESC";

            $result_consultation = $connection->query($query_consultation);

            if ($result_consultation->num_rows > 0):
            ?>
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-center gap-2 mb-3">
                                <h5 class="card-title">Konsultasi Terbaru</h5>
                                <a href="<?= base_url('dashboard/consultation-history/show.php'); ?>" class="btn btn-sm btn-outline-primary">Lihat Semua</a>
                            </div>

                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>Waktu Konsultasi</th>
                                            <th>Nama</th>
                                            <th>Email</th>
                                            <th>Peran</th>
                                            <th>Penyakit</th>
                                            <th>Akurasi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no = 1;

                                        while ($row_consultation = $result_consultation->fetch_assoc()) :
                                            $consultation_id = $row_consultation['consultation_id'];
                                            $consultation_date = $row_consultation['consultation_date'];
                                            $fullname = $row_consultation['fullname'];
                                            $email = $row_consultation['email'];
                                            $role = $row_consultation['role'];
                                            $disease_name = $row_consultation['disease_name'] ?? '-';
                                            $accuracy = isset($row_consultation['accuracy']) ? format_percentage($row_consultation['accuracy']) : 'N/A';
                                        ?>
                                            <tr>
                                                <td><?= $no++; ?></td>
                                                <td><?= format_indonesian_time(htmlspecialchars($consultation_date)); ?></td>
                                                <td><?= htmlspecialchars($fullname); ?></td>
                                                <td class="fst-italic"><?= htmlspecialchars($email); ?></td>
                                                <td>
                                                    <?php
                                                    $role_color = 'bg-light-secondary';
                                                    if ($role === 'Admin') :
                                                        $role_color = 'bg-light-primary';
                                                    elseif ($role === 'Pakar') :
                                                        $role_color = 'bg-light-info';
                                                    endif;
                                                    ?>
                                                    <span class="badge <?= $role_color; ?>"><?= $role; ?></span>
                                                </td>
                                                <td><?= htmlspecialchars($disease_name); ?></td>
                                                <td><?= $accuracy; ?></td>
                                            </tr>
                                        <?php endwhile; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endif ?>

            <?php
            // Query untuk mengambil semua data
            $query_testimonial = "SELECT testimonials.*, 
                                            users.email, 
                                            users.fullname, 
                                            users.role, 
                                            notifications.status,  
                                            testimonials.id AS testimonial_id 
                                    FROM testimonials 
                                    INNER JOIN users ON users.id = testimonials.user_id 
                                    INNER JOIN notifications ON notifications.testimonial_id = testimonials.id 
                                    WHERE notifications.status = 'Belum Dilihat'
                                    ORDER BY testimonials.review_date DESC";

            $result_testimonial = $connection->query($query_testimonial);

            if ($result_testimonial->num_rows > 0):
            ?>
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-center gap-2 mb-3">
                                <h5 class="card-title">Testimoni Terbaru</h5>
                                <a href="<?= base_url('dashboard/testimonial/show.php'); ?>" class="btn btn-sm btn-outline-primary">Lihat Semua</a>
                            </div>

                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>Waktu</th>
                                            <th>Email</th>
                                            <th>Nama</th>
                                            <th>Peran</th>
                                            <th>Penilaian</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no = 1;
                                        while ($row_testimonial = $result_testimonial->fetch_assoc()) :
                                        ?>
                                            <tr>
                                                <td><?= $no++; ?></td>
                                                <td><?= format_indonesian_time(htmlspecialchars($row_testimonial['review_date'])); ?></td>
                                                <td class="fst-italic"><?= htmlspecialchars($row_testimonial['email']); ?></td>
                                                <td><?= htmlspecialchars($row_testimonial['fullname']); ?></td>
                                                <td>
                                                    <?php
                                                    $role = htmlspecialchars($row_testimonial['role']);
                                                    $role_color = '';
                                                    if ($role === 'Admin') :
                                                        $role_color = 'bg-light-primary';
                                                    elseif ($role === 'Pakar') :
                                                        $role_color = 'bg-light-info';
                                                    else:
                                                        $role_color = 'bg-light-secondary';
                                                    endif
                                                    ?>
                                                    <span class="badge <?= $role_color; ?>"><?= $role; ?></span>
                                                </td>
                                                <td>
                                                    <?php $rating = htmlspecialchars($row_testimonial['rating']); ?>
                                                    <?php for ($i = 1; $i <= 5; $i++) : ?>
                                                        <?php if ($i <= $rating) : ?>
                                                            <i class="bi bi-star-fill text-warning"></i>
                                                        <?php else: ?>
                                                            <i class="bi bi-star text-warning"></i>
                                                        <?php endif; ?>
                                                    <?php endfor; ?>
                                                </td>
                                            </tr>
                                        <?php endwhile ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endif ?>
        <?php else: ?>
            <div class="col-12">
                <img class="rounded-2 object-fit-cover mb-4 mx-auto d-block" src="<?= get_image_url(base_url('assets/img/static/notification.svg')); ?>" alt="Tidak ada notifikasi" height="250" width="250">
                <h6 class="text-center">Tidak ada notifikasi</h6>
            </div>
        <?php endif ?>
    </section>
</div>
<?php endSection('content'); ?>

<?php startSection('script'); ?>
<script src="https://zuramai.github.io/mazer/demo/assets/extensions/jquery/jquery.min.js"></script>
<script src="https://zuramai.github.io/mazer/demo/assets/extensions/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="https://zuramai.github.io/mazer/demo/assets/extensions/datatables.net-bs5/js/dataTables.bootstrap5.min.js"></script>
<script>
    let customized_datatable = $(".table").DataTable({
        responsive: true,
        dom: "<'row'<'col-3'l><'col-9'f>>" +
            "<'row dt-row'<'col-sm-12'tr>>" +
            "<'row'<'col-4'i><'col-8'p>>",
        "language": {
            "info": "Halaman _PAGE_ dari _PAGES_",
            "lengthMenu": "Tampilkan _MENU_ data per halaman",
            "search": "",
            "searchPlaceholder": "Cari...",
            "infoEmpty": "Tidak ada data yang tersedia",
            "infoFiltered": "(disaring dari total _MAX_ data)",
            "zeroRecords": "Tidak ditemukan data yang sesuai",
            "paginate": {
                "first": "Awal",
                "last": "Akhir",
                "next": "Berikutnya",
                "previous": "Sebelumnya"
            },
            "loadingRecords": "Sedang memuat...",
            "processing": "Sedang memproses...",
            "emptyTable": "Tidak ada data dalam tabel"
        }
    });

    const setTableColor = () => {
        document.querySelectorAll('.dataTables_paginate .pagination').forEach(dt => {
            dt.classList.add('pagination-primary')
        })
    }

    setTableColor()
</script>
<?php endSection('script'); ?>

<?php include('../template.php') ?>