<?php
// Menyertakan konfigurasi
include('../config/config.php');

// Memulai sesi
session_start();

// Nama halaman
$page_name = 'Tentang';
?>

<?php startSection('css'); ?>
<style>
    .formula {
        background-color: #f8f9fa;
        padding: 10px;
        border-left: 5px solid #435ebe;
        font-family: 'Courier New', Courier, monospace;
        font-size: 1.1rem;
        margin-bottom: 20px;
    }

    html[data-bs-theme=dark] .formula {
        background-color: rgb(85, 85, 85);
        color: #fff;
    }
</style>
<?php endSection('css'); ?>

<?php startSection('content'); ?>
<section class="page-section" id="pageSection">
    <div class="container px-4">
        <div class="row justify-content-center mb-4" data-aos="zoom-in">
            <div class="col-12">
                <div class="d-flex justify-content-center align-items-center gap-2">
                    <h3 class="mb-0"><?= $page_name; ?></h3>
                </div>
            </div>
        </div>

        <div class="row g-4 justify-content-center" data-aos="fade-up">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <article class="content">
                            <div class="content-section mb-5">
                                <h5>🔍 Sistem Pakar Metode Certainty Factor (CF)</h5>
                                <p>
                                    Sistem pakar adalah sebuah sistem berbasis komputer yang dirancang untuk meniru proses pengambilan keputusan seorang pakar dalam suatu bidang tertentu.
                                    Dengan menggunakan metode <i>Certainty Factor</i>, sistem ini mampu mengukur tingkat kepastian dari sebuah diagnosis berdasarkan bukti yang tersedia.
                                    Hal ini memungkinkan sistem untuk memberikan rekomendasi yang lebih akurat sesuai dengan kondisi pengguna.
                                </p>
                            </div>

                            <div class="content-section mb-5">
                                <h5>🧮 Perhitungan CF</h5>
                                <p>Certainty Factor dihitung berdasarkan formula:</p>
                                <div class="formula">CF = MB - MD</div>
                                <p>Dimana:</p>
                                <ul>
                                    <li><strong>MB (Measure of Belief)</strong> → Seberapa yakin pakar bahwa gejala menunjukkan penyakit tertentu.</li>
                                    <li><strong>MD (Measure of Disbelief)</strong> → Seberapa yakin pakar bahwa gejala tidak menunjukkan penyakit tertentu.</li>
                                </ul>
                            </div>

                            <div class="content-section mb-5">
                                <h5>📚 Contoh Data di Basis Pengetahuan oleh Pakar</h5>
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Penyakit</th>
                                                <th>Gejala</th>
                                                <th>Nilai MB</th>
                                                <th>Nilai MD</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Penyakit A</td>
                                                <td>Gejala 1</td>
                                                <td>0.8</td>
                                                <td>0.2</td>
                                            </tr>
                                            <tr>
                                                <td>Penyakit A</td>
                                                <td>Gejala 2</td>
                                                <td>0.6</td>
                                                <td>0.3</td>
                                            </tr>
                                            <tr>
                                                <td>Penyakit B</td>
                                                <td>Gejala 1</td>
                                                <td>0.7</td>
                                                <td>0.2</td>
                                            </tr>
                                            <tr>
                                                <td>Penyakit B</td>
                                                <td>Gejala 2</td>
                                                <td>0.5</td>
                                                <td>0.4</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="content-section mb-5">
                                <h5>📚 Contoh Data Pilihan Kondisi oleh Pengguna</h5>
                                <p>Adapun terdapat 6 pilihan kondisi yang tersedia, yaitu <b>TIDAK</b>, <b>TIDAK TAHU</b>, <b>MUNGKIN</b>, <b>KEMUNGKINAN BESAR</b>, <b>PASTI</b>, dan <b>SANGAT PASTI</b>.</p>

                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Kondisi</th>
                                                <th>Keterangan</th>
                                                <th>Nilai</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Tidak</td>
                                                <td>Gejala tidak dialami sama sekali.</td>
                                                <td>0</td>
                                            </tr>
                                            <tr>
                                                <td>Tidak Tahu</td>
                                                <td>Tidak yakin apakah gejala tersebut ada atau tidak.</td>
                                                <td>0.2</td>
                                            </tr>
                                            <tr>
                                                <td>Mungkin</td>
                                                <td>Gejala bisa saja ada, tetapi tidak pasti.</td>
                                                <td>0.4</td>
                                            </tr>
                                            <tr>
                                                <td>Kemungkinan Besar</td>
                                                <td>Gejala sangat mungkin ada, namun belum dapat dipastikan.</td>
                                                <td>0.6</td>
                                            </tr>
                                            <tr>
                                                <td>Pasti</td>
                                                <td>Gejala pasti ada dan sangat jelas.</td>
                                                <td>0.8</td>
                                            </tr>
                                            <tr>
                                                <td>Sangat Pasti</td>
                                                <td>Gejala sangat jelas dan dipastikan ada dengan tingkat kepastian yang tinggi.</td>
                                                <td>1</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <p>Berikutnya, pengguna diminta untuk memilih kondisi yang sesuai dengan gejala yang dialami, sebagaimana tercantum dalam tabel berikut:</p>

                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Gejala Yang Dipilih</th>
                                                <th>Kondisi</th>
                                                <th>Nilai</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Gejala 1</td>
                                                <td>Pasti</td>
                                                <td>0.8</td>
                                            </tr>
                                            <tr>
                                                <td>Gejala 2</td>
                                                <td>Kemungkinan Besar</td>
                                                <td>0.6</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="content-section mb-5">
                                <h5>🧮 Perhitungan CF per Gejala</h5>
                                <p><strong>Untuk Penyakit A:</strong></p>
                                <div class="formula">Gejala 1: CF1 = (0.8 - 0.2) × 0.8 = 0.48</div>
                                <div class="formula">Gejala 2: CF2 = (0.6 - 0.3) × 0.6 = 0.18</div>
                                <p><strong>Untuk Penyakit B:</strong></p>
                                <div class="formula">Gejala 1: CF1 = (0.7 - 0.2) × 0.8 = 0.40</div>
                                <div class="formula">Gejala 2: CF2 = (0.5 - 0.4) × 0.6 = 0.06</div>
                            </div>

                            <div class="content-section mb-5">
                                <h5>🧮 Menggabungkan CF untuk Tiap Penyakit</h5>
                                <p>Formula penggabungan CF:</p>
                                <div class="formula">CF_kombinasi = CF1 + (CF2 × (1 - CF1))</div>
                                <p><strong>Untuk Penyakit A:</strong></p>
                                <div class="formula">CF = 0.48 + (0.18 × (1 - 0.48)) = 0.5736 ≈ 0.57</div>
                                <p><strong>Untuk Penyakit B:</strong></p>
                                <div class="formula">CF = 0.40 + (0.06 × (1 - 0.40)) = 0.436 ≈ 0.44</div>
                            </div>
                        </article>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<?php endSection('content'); ?>

<?php startSection('script'); ?>
<?php endSection('script'); ?>

<?php include('template.php') ?>