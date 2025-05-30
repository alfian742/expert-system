<?php
// Menyertakan konfigurasi
include('../config/config.php');

// Memulai sesi
session_start();

// Nama halaman
$page_name = 'Beranda';

// Ambil total pengguna dan jumlah berdasarkan role dari database
$user_data = $connection->query("
    SELECT 
        COUNT(*) AS total_users, 
        COALESCE(SUM(CASE WHEN role = 'Pakar' THEN 1 ELSE 0 END), 0) AS total_experts,
        COALESCE(SUM(CASE WHEN role = 'Pengguna' THEN 1 ELSE 0 END), 0) AS total_regular_users
    FROM users
    WHERE role IN ('Pakar', 'Pengguna')  -- Hanya hitung Pakar dan Pengguna
")->fetch_assoc();

$total_experts          = $user_data['total_experts'] ?? 0;
$total_regular_users    = $user_data['total_regular_users'] ?? 0;
$total_users            = $total_experts + $total_regular_users;  // Total pengguna hanya Pakar dan Pengguna

// Format tampilan
$display_user_1         = ($total_users > 10) ? "10+" : $total_users;
$display_user_2         = ($total_users > 100) ? "100+" : $total_users;
$display_expert         = number_format($total_experts);
$display_regular_user   = number_format($total_regular_users);
$display_all_user       = number_format($total_users);
?>

<?php startSection('css'); ?>
<!-- Swiper CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<?php endSection('css'); ?>

<?php startSection('content'); ?>
<!-- Hero Section -->
<section class="hero" id="hero">
    <div class="container p-4 pt-0" data-aos="fade-up" data-aos-delay="100">
        <div class="row align-items-center">
            <div class="col-lg-6">
                <div class="hero-content" data-aos="fade-up" data-aos-delay="200">
                    <h1 class="mb-4">
                        Sistem Pakar <br>
                        Metode <br>
                        <span class="accent-text">Certainty Factor</span>
                    </h1>

                    <p class="mb-4 mb-md-5">
                        Solusi cerdas dalam pengambilan keputusan berbasis pengetahuan, dengan tingkat kepastian yang dapat diukur.
                    </p>

                    <div class="hero-buttons">
                        <a href="<?= base_url('user/consultation.php'); ?>" class="btn btn-primary me-0 me-sm-2 mx-1">Konsultasi</a>
                        <a href="#about" class="btn btn-link mt-2 mt-sm-0 glightbox">
                            <i class="bi bi-rocket-takeoff-fill me-1"></i>
                            Pelajari Lebih Lanjut
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="hero-image" data-aos="zoom-out" data-aos-delay="300">
                    <img src="<?= get_image_url(base_url('assets/img/static/hero-image.webp')); ?>" alt="Hero Image" class="img-fluid">

                    <div class="customers-badge">
                        <div class="customer-avatars">
                            <?php for ($i = 1; $i <= 5; $i++) : ?>
                                <img src="<?= get_image_url(base_url("assets/img/static/avatars/avatar-{$i}.webp")); ?>" alt="Customer 2" class="avatar">
                            <?php endfor ?>
                            <span class="avatar more"><?= $display_user_1; ?></span>
                        </div>
                        <p class="mb-0 mt-2"><?= $display_user_2; ?> pengguna telah bergabung</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /Hero Section -->

<!-- Stats Section -->
<section id="stats" class="stats card rounded-0 mb-0">
    <div class="card-body container px-4 py-5" data-aos="fade-up" data-aos-delay="100">
        <div class="row gy-4 justify-content-center">
            <div class="col-lg-3 col-md-6" data-aos="zoom-in" data-aos-delay="100">
                <div class="stats-item text-center w-100 h-100">
                    <span data-purecounter-start="0" data-purecounter-end="<?= $display_all_user; ?>" data-purecounter-duration="2" class="purecounter">0</span>
                    <p>Seluruh Pengguna</p>
                </div>
            </div>

            <div class="col-lg-3 col-md-6" data-aos="zoom-in" data-aos-delay="150">
                <div class="stats-item text-center w-100 h-100">
                    <span data-purecounter-start="0" data-purecounter-end="<?= $display_expert; ?>" data-purecounter-duration="2" class="purecounter">0</span>
                    <p>Pakar</p>
                </div>
            </div>

            <div class="col-lg-3 col-md-6" data-aos="zoom-in" data-aos-delay="200">
                <div class="stats-item text-center w-100 h-100">
                    <span data-purecounter-start="0" data-purecounter-end="<?= $display_regular_user; ?>" data-purecounter-duration="2" class="purecounter">0</span>
                    <p>Pengguna Umum</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /Stats Section -->

<!-- About Section -->
<section id="about" class="about">
    <div class="container px-4 py-5" data-aos="fade-up" data-aos-delay="100">
        <div class="row gy-4 align-items-center justify-content-between">

            <div class="col-xl-5" data-aos="fade-up" data-aos-delay="200">
                <h2 class="about-title">Sistem Pakar <br> Metode Certainty Factor</h2>
                <p class="about-description">
                    Sistem pakar adalah sebuah sistem berbasis komputer yang dirancang untuk meniru proses pengambilan keputusan seorang pakar dalam suatu bidang tertentu.
                    Dengan menggunakan metode <i>Certainty Factor</i>, sistem ini mampu mengukur tingkat kepastian dari sebuah diagnosis berdasarkan bukti yang tersedia.
                    Hal ini memungkinkan sistem untuk memberikan rekomendasi yang lebih akurat sesuai dengan kondisi pengguna.
                </p>

                <div class="row feature-list-wrapper">
                    <div class="col-md-6">
                        <ul class="feature-list">
                            <li><i class="bi bi-check-circle-fill"></i> Meniru cara berpikir pakar</li>
                            <li><i class="bi bi-check-circle-fill"></i> Menggunakan metode Certainty Factor</li>
                            <li><i class="bi bi-check-circle-fill"></i> Memberikan hasil diagnosis yang akurat</li>
                        </ul>
                    </div>
                    <div class="col-md-6">
                        <ul class="feature-list">
                            <li><i class="bi bi-check-circle-fill"></i> Mengolah data gejala pengguna</li>
                            <li><i class="bi bi-check-circle-fill"></i> Digunakan dalam berbagai bidang</li>
                            <li><i class="bi bi-check-circle-fill"></i> Membantu pengambilan keputusan</li>
                        </ul>
                    </div>
                </div>

                <div class="info-wrapper mt-4">
                    <div class="profile d-flex align-items-center gap-3">
                        <img src="<?= get_image_url(base_url('assets/img/static/avatars/avatar-1.webp')); ?>" alt="CEO Profile" class="profile-image">
                        <div>
                            <h4 class="profile-name">JC Giarratano</h4>
                            <p class="profile-position">Pakar AI & Sistem Pakar</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-6" data-aos="fade-up" data-aos-delay="300">
                <div class="image-wrapper">
                    <div class="images position-relative" data-aos="zoom-out" data-aos-delay="400">
                        <img src="<?= get_image_url(base_url('assets/img/static/about-image-1.webp')); ?>" alt="Sistem Pakar" class="img-fluid main-image rounded-4">
                        <img src="<?= get_image_url(base_url('assets/img/static/about-image-2.webp')); ?>" alt="Proses Analisis" class="img-fluid small-image rounded-4">
                    </div>
                    <div class="experience-badge floating">
                        <h3>10+ <span>Tahun</span></h3>
                        <p>Pengalaman dalam pengembangan sistem pakar</p>
                    </div>
                </div>

                <div class="d-flex justify-content-center mt-5">
                    <a href="<?= base_url('user/about.php'); ?>" class="btn btn-lg btn-outline-primary rounded-pill">Lihat Selengkapnya <i class="bi bi-arrow-right ms-2"></i></a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /About Section -->

<!-- Testimonials Section -->
<section id="testimonials" class="testimonials card rounded-0 mb-0">
    <div class="card-body py-5">
        <div class="container px-4 mb-4 text-center" data-aos="zoom-in">
            <h2>Testimoni Pengguna</h2>
            <p>Pengalaman pengguna dalam menggunakan sistem pakar berbasis certainty factor</p>
        </div>

        <div class="container px-4" data-aos="fade-up" data-aos-delay="100">
            <div class="row g-5">
                <div class="col-12">
                    <div class="swiper init-swiper">
                        <div class="swiper-wrapper align-items-center">
                            <?php
                            // Query untuk mengambil semua data
                            $query_testimonial = "SELECT testimonials.*, users.*, testimonials.id AS testimonial_id 
                                            FROM testimonials 
                                            INNER JOIN users ON users.id = testimonials.user_id 
                                            WHERE rating = 5
                                            ORDER BY testimonials.review_date DESC LIMIT 10";

                            $result_testimonial = $connection->query($query_testimonial);

                            while ($testimonial = $result_testimonial->fetch_assoc()) :
                            ?>
                                <div class="swiper-slide">
                                    <div class="testimonial-item">
                                        <img src="https://avatar.iran.liara.run/username?username=<?= urlencode($testimonial['fullname']); ?>" class="testimonial-img" alt="<?= $testimonial['fullname']; ?>" loading="lazy">
                                        <h3><?= $testimonial['fullname']; ?></h3>
                                        <h4><?= format_indonesian_time(htmlspecialchars($testimonial['review_date'])); ?></h4>
                                        <div class="stars">
                                            <?php $rating = htmlspecialchars($testimonial['rating']); ?>
                                            <?php for ($i = 1; $i <= 5; $i++) : ?>
                                                <?php if ($i <= $rating) : ?>
                                                    <i class="bi bi-star-fill text-warning"></i>
                                                <?php else: ?>
                                                    <i class="bi bi-star text-warning"></i>
                                                <?php endif; ?>
                                            <?php endfor; ?>
                                        </div>
                                        <p>
                                            <i class="bi bi-quote quote-icon-left"></i>
                                            <span><?= $testimonial['review']; ?></span>
                                            <i class="bi bi-quote quote-icon-right"></i>
                                        </p>
                                    </div>
                                </div>
                            <?php endwhile ?>
                        </div>
                        <div class="swiper-pagination position-relative mt-4"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /Testimonials Section -->

<!-- Contact Section -->
<section id="contact" class="contact py-5">
    <div class="container px-4 mb-4 text-center" data-aos="zoom-in">
        <h2>Hubungi Kami</h2>
        <p>Hubungi kami untuk informasi lebih lanjut atau pertanyaan apapun.</p>
    </div>

    <div class="container px-4 mb-4" data-aos="fade-up" data-aos-delay="100">
        <div class="row justify-content-center">
            <div class="col-12">
                <div class="contact-form">
                    <div class="row g-5 align-items-center">
                        <div class="col-lg-5 contact-info-divider">
                            <?php
                            $contact_info = $connection->query("SELECT email, phone, address FROM site_contacts LIMIT 1");
                            $result_contact_info = $contact_info->fetch_assoc();
                            ?>
                            <div class="row justify-content-center g-3 mb-4">
                                <div class="col-sm-12 col-md-6 col-lg-12" data-aos="fade-up" data-aos-delay="200">
                                    <a class="d-flex align-items-center gap-3" target="_blank" href="mailto:<?= $result_contact_info['email']; ?>">
                                        <div class="contact-info-container text-bg-primary rounded-circle shadow-sm">
                                            <i class="contact-info-icon bi bi-envelope"></i>
                                        </div>
                                        <div class="d-flex flex-column gap-1">
                                            <div class="mb-0">Email</div>
                                            <h6 class="mb-0"><?= $result_contact_info['email']; ?></h6>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-sm-12 col-md-6 col-lg-12" data-aos="fade-up" data-aos-delay="250">
                                    <a class="d-flex align-items-center gap-3" target="_blank" href="https://wa.me/<?= $result_contact_info['phone']; ?>">
                                        <div class="contact-info-container text-bg-primary rounded-circle shadow-sm">
                                            <i class="contact-info-icon bi bi-whatsapp"></i>
                                        </div>
                                        <div class="d-flex flex-column gap-1">
                                            <div class="mb-0">Whatasapp</div>
                                            <h6 class="mb-0"><?= $result_contact_info['phone']; ?></h6>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="ratio ratio-4x3" data-aos="fade-up" data-aos-delay="300">
                                <iframe src="https://maps.google.com/maps?q=<?= urlencode($result_contact_info['address']); ?>&hl=id&m=h&output=embed"
                                    style="border:0;" class="rounded-4 shadow-sm" allowfullscreen="" loading="lazy"></iframe>
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <?php
                            // Cek apakah ada session email dan fullname
                            $email_session      = isset($_SESSION['email']) ? htmlspecialchars($_SESSION['email']) : '';
                            $fullname_session   = isset($_SESSION['fullname']) ? htmlspecialchars($_SESSION['fullname']) : '';

                            // Value Form dari session (jika ada error)
                            $email      = isset($_SESSION['form_data']['email']) ? htmlspecialchars($_SESSION['form_data']['email']) : $email_session;
                            $fullname   = isset($_SESSION['form_data']['fullname']) ? htmlspecialchars($_SESSION['form_data']['fullname']) : $fullname_session;
                            $subject    = isset($_SESSION['form_data']['subject']) ? htmlspecialchars($_SESSION['form_data']['subject']) : '';
                            $message    = isset($_SESSION['form_data']['message']) ? htmlspecialchars($_SESSION['form_data']['message']) : '';
                            ?>

                            <form action="<?= base_url('user/action.php'); ?>" method="post" class="php-email-form" data-aos="fade-up" data-aos-delay="350">
                                <div class="row gy-4">
                                    <div class="col-md-6 ">
                                        <input type="email" class="form-control <?= isset($_SESSION['errors']['email']) ? 'is-invalid' : '' ?>" name="email" value="<?= $email; ?>" required placeholder="Email Anda">
                                        <div class="invalid-feedback">
                                            <?= isset($_SESSION['errors']['email']) ? $_SESSION['errors']['email'] : '' ?>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <input type="text" name="fullname" class="form-control <?= isset($_SESSION['errors']['fullname']) ? 'is-invalid' : '' ?>" value="<?= $fullname; ?>" required placeholder="Nama Anda">
                                        <div class="invalid-feedback">
                                            <?= isset($_SESSION['errors']['fullname']) ? $_SESSION['errors']['fullname'] : '' ?>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <input type="text" class="form-control <?= isset($_SESSION['errors']['subject']) ? 'is-invalid' : '' ?>" name="subject" value="<?= $subject; ?>" required placeholder="Subjek">
                                        <div class="invalid-feedback">
                                            <?= isset($_SESSION['errors']['subject']) ? $_SESSION['errors']['subject'] : '' ?>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <textarea class="form-control <?= isset($_SESSION['errors']['message']) ? 'is-invalid' : '' ?>" name="message" rows="6" required placeholder="Pesan"><?= $message; ?></textarea>
                                        <div class="invalid-feedback">
                                            <?= isset($_SESSION['errors']['message']) ? $_SESSION['errors']['message'] : '' ?>
                                        </div>
                                    </div>

                                    <div class="col-12 text-center">
                                        <button type="submit" class="btn" name="send-message">Kirim Pesan</button>
                                    </div>
                                </div>
                            </form>

                            <?php
                            unset($_SESSION['errors']);
                            unset($_SESSION['form_data']);
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /Contact Section -->
<?php endSection('content'); ?>

<?php startSection('script'); ?>
<!-- Swiper JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script type="application/json" class="swiper-config">
    {
        "loop": true,
        "speed": 600,
        "autoplay": {
            "delay": 5000
        },
        "slidesPerView": "auto",
        "pagination": {
            "el": ".swiper-pagination",
            "type": "bullets",
            "clickable": true,
            "dynamicBullets": true
        },
        "breakpoints": {
            "320": {
                "slidesPerView": 1,
                "spaceBetween": 40
            },
            "480": {
                "slidesPerView": 1,
                "spaceBetween": 40
            },
            "640": {
                "slidesPerView": 1,
                "spaceBetween": 40
            },
            "992": {
                "slidesPerView": 2,
                "spaceBetween": 60
            }
        }
    }
</script>

<script>
    // Smooth scroll for anchor links
    document.addEventListener("DOMContentLoaded", function() {
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener("click", function(e) {
                e.preventDefault();

                const targetId = this.getAttribute("href");
                const targetElement = document.querySelector(targetId);
                const offset = 80;

                if (targetElement) {
                    const targetPosition = targetElement.getBoundingClientRect().top + window.scrollY - offset;
                    smoothScrollTo(targetPosition, 600);
                }
            });
        });
    });

    // Initialize Swiper with dynamic configuration
    document.addEventListener("DOMContentLoaded", function() {
        const swiperConfig = document.querySelector('.swiper-config');
        const config = JSON.parse(swiperConfig.innerHTML);

        const swiper = new Swiper(".init-swiper", {
            ...config,
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
        });
    });

    // Animate counters on page load
    document.addEventListener("DOMContentLoaded", function() {
        // Function to animate counter from start to end value
        function animateCounter(element, start, end, duration) {
            let startTime = null;

            function step(timestamp) {
                if (!startTime) startTime = timestamp;
                let progress = timestamp - startTime;
                let currentValue = Math.min(
                    Math.floor(start + (end - start) * (progress / duration)),
                    end
                );

                element.textContent = currentValue;

                if (progress < duration) {
                    requestAnimationFrame(step);
                } else {
                    element.textContent = end;
                }
            }

            requestAnimationFrame(step);
        }

        // Start animating all counters
        function startCounters() {
            document.querySelectorAll(".purecounter").forEach((counter) => {
                let start = parseInt(counter.getAttribute("data-purecounter-start")) || 0;
                let end = parseInt(counter.getAttribute("data-purecounter-end")) || 0;
                let duration = (parseFloat(counter.getAttribute("data-purecounter-duration")) || 1) * 1000;

                animateCounter(counter, start, end, duration);
            });
        }

        startCounters();
    });
</script>
<?php endSection('script'); ?>

<?php include('template.php') ?>