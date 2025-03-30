## ⚠️ Disclaimer  

Proyek ini dibuat hanya untuk **tujuan pembelajaran** dan sebagai sarana eksplorasi konsep **Sistem Pakar dengan Metode Certainty Factor (CF)**. Saya berusaha memberikan informasi dan implementasi yang akurat, namun **tidak menjamin sepenuhnya keakuratan teori maupun sistem** yang digunakan. Jika Anda menemukan kesalahan baik dalam **teori, perhitungan, maupun implementasi sistem**, saya sangat menghargai masukan dan koreksi dari Anda. 🙏 Gunakan proyek ini dengan bijak dan sesuaikan dengan kebutuhan Anda. 🚀  

Terima kasih atas pengertian dan dukungannya, Jangan ragu untuk menghubungi saya melalui [![Gmail](https://img.shields.io/badge/Gmail-D14836?style=flat&logo=gmail&logoColor=white)](mailto:alfianh274@gmail.com) atau [![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=flat&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/alfian-hidayat-8337b2174).

---
<br>

# 🔍 Sistem Pakar Metode Certainty Factor (CF)

Sistem pakar adalah sebuah sistem berbasis komputer yang dirancang untuk meniru proses pengambilan keputusan seorang pakar dalam suatu bidang tertentu.
Dengan menggunakan metode *Certainty Factor* (CF), sistem ini mampu mengukur tingkat kepastian dari sebuah diagnosis berdasarkan bukti yang tersedia.
Hal ini memungkinkan sistem untuk memberikan rekomendasi yang lebih akurat sesuai dengan kondisi pengguna.

## 🧮 Perhitungan CF

Certainty Factor dihitung berdasarkan formula berikut:

```math
CF = MB - MD
```

Dimana:

- **MB (Measure of Belief)** → Seberapa yakin pakar bahwa gejala menunjukkan penyakit tertentu.
- **MD (Measure of Disbelief)** → Seberapa yakin pakar bahwa gejala tidak menunjukkan penyakit tertentu.

## 📚 Contoh Data di Basis Pengetahuan oleh Pakar

| Penyakit   | Gejala   | Nilai MB | Nilai MD |
| ---------- | -------- | -------- | -------- |
| Penyakit A | Gejala 1 | 0.8      | 0.2      |
| Penyakit A | Gejala 2 | 0.6      | 0.3      |
| Penyakit B | Gejala 1 | 0.7      | 0.2      |
| Penyakit B | Gejala 2 | 0.5      | 0.4      |

## 📚 Contoh Data Pilihan Kondisi oleh Pengguna

Terdapat 6 pilihan kondisi yang tersedia:

| Kondisi           | Keterangan                                                                   | Nilai |
| ----------------- | ---------------------------------------------------------------------------- | ----- |
| Tidak             | Gejala tidak dialami sama sekali.                                            | 0     |
| Tidak Tahu        | Tidak yakin apakah gejala tersebut ada atau tidak.                           | 0.2   |
| Mungkin           | Gejala bisa saja ada, tetapi tidak pasti.                                    | 0.4   |
| Kemungkinan Besar | Gejala sangat mungkin ada, namun belum dapat dipastikan.                     | 0.6   |
| Pasti             | Gejala pasti ada dan sangat jelas.                                           | 0.8   |
| Sangat Pasti      | Gejala sangat jelas dan dipastikan ada dengan tingkat kepastian yang tinggi. | 1.0   |

Berikut contoh pilihan gejala yang dipilih oleh pengguna:

| Gejala Yang Dipilih | Kondisi           | Nilai |
| ------------------- | ----------------- | ----- |
| Gejala 1            | Pasti             | 0.8   |
| Gejala 2            | Kemungkinan Besar | 0.6   |

## 🧮 Perhitungan CF per Gejala

### Untuk Penyakit A:

```math
CF_1 = (0.8 - 0.2) \times 0.8 = 0.48
```

```math
CF_2 = (0.6 - 0.3) \times 0.6 = 0.18
```

### Untuk Penyakit B:

```math
CF_1 = (0.7 - 0.2) \times 0.8 = 0.40
```

```math
CF_2 = (0.5 - 0.4) \times 0.6 = 0.06
```

## 🧮 Menggabungkan CF untuk Tiap Penyakit

### Formula penggabungan CF:

```math
CF_{combine} = CF_1 + (CF_2 \times (1 - CF_1))
```

### Untuk Penyakit A:

```math
CF = 0.48 + (0.18 \times (1 - 0.48)) = 0.5736 \approx 0.57
```

### Untuk Penyakit B:

```math
CF = 0.40 + (0.06 \times (1 - 0.40)) = 0.436 \approx 0.44
```

Dengan metode Certainty Factor, sistem dapat membantu dalam menentukan kemungkinan suatu penyakit berdasarkan gejala yang dialami oleh pengguna dengan mempertimbangkan tingkat keyakinan pakar dan pengguna.\
\
Untuk informasi lebih lanjut, silakan akses jurnal terkait melalui tautan berikut: [Jurnal Certainty Factor](https://j-ptiik.ub.ac.id/index.php/j-ptiik/article/download/11161/4935/77883).

---

<br>

## 🖥️ Tampilan Aplikasi

### 1. **Landing Page:**
![Login](assets/img/screenshot/Screenshot%202025-03-30%20131334.png)

### 2. **Konsultasi:**
![Konsultasi](assets/img/screenshot/Screenshot%202025-03-30%20131511.png)

### 3. **Hasil Konsultasi:**
![Hasil Konsultasi](assets/img/screenshot/Screenshot%202025-03-30%20131706.png)

### 4. **Dashboard:**
![Dashboard](assets/img/screenshot/Screenshot%202025-03-30%20131804.png)

---

<br>

## 🛠 Cara Instalasi dan Konfigurasi

1. **Clone Repository**
   ```sh
   git clone https://github.com/alfian742/expert-system.git
   ```
2. **Masuk ke Direktori Project**
   ```sh
   cd expert-system
   ```
3. **Konfigurasi**
   - Konfigurasi Base URL di file `config/config.php` dan `.htaccess`
     ```php
     define('BASE_URL', 'http://localhost/expert-system/');
     ```
     ```sh
     ErrorDocument 403 http:/localhost/expert-system/error/403.php
     ```
   - Buat database di MySQL dengan nama `expert_system`
   - Import file SQL yang tersedia dalam folder `database/expert_system.sql`
   - Konfigurasi koneksi database di `config/config.php`:
     ```php
     define('DB_HOST', 'localhost');
     define('DB_USER', 'root');
     define('DB_PASS', '');
     define('DB_NAME', 'expert_system');
     ```
4. **Jalankan Aplikasi**
    - Pastikan server web lokal seperti Apache atau Nginx aktif. Contoh perangkat lunak yang dapat digunakan adalah Laragon, XAMPP, atau MAMP.
    - Akses aplikasi melalui browser dengan membuka `http://localhost/expert-system`.

---

<br>

## 📖 Panduan Penggunaan

1. **Login ke Aplikasi**:
    - Gunakan kredensial berikut untuk login ke aplikasi:
      - **Admin**:
        - **Email**: `admin@gmail.com`
        - **Kata Sandi**: `admin`
    
      - **User**:
        - **Email**: `user@gmail.com`
        - **Kata Sandi**: `user1234`

2. **Jelajahi Menu**:
    - Setelah login, Anda akan dapat mengakses berbagai menu untuk mengelola data sesuai dengan peran Anda (Admin atau User).

3. **Demo Aplikasi**:
    - Silakan akses demo aplikasi yang telah dideploy melalui tautan berikut: [Sistem Pakar Certainty Factor](http://my-public-project.infinityfreeapp.com/expert-system/).

---
<br>

## 🎉 Terima Kasih!  

Terima kasih telah mengunjungi repositori ini! Saya sangat menghargai waktu dan perhatian Anda dalam menjelajahi proyek ini. Jika proyek ini bermanfaat bagi Anda, jangan lupa untuk **memberikan ⭐ Star pada repositori ini** agar lebih banyak orang dapat menemukannya dan mendapatkan manfaat yang sama. 
