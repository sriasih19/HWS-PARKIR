Sistem Langganan Parkir

1. Problem Statement

Sistem parkir digunakan untuk menghitung biaya yang perlu dibayar oleh pelanggan berdasarkan jenis pelanggan, lama kendaraan berada di tempat parkir, dan kondisi tiket.

Pelanggan yang terdaftar sebagai pelanggan langganan tidak dikenakan biaya parkir. Sedangkan pelanggan biasa akan membayar sesuai dengan lama parkir menggunakan tarif yang sudah ditentukan. Apabila tiket parkir hilang, pelanggan akan mendapatkan tambahan biaya denda.

2. Actor

Aktor| Peran
Petugas Parkir| Memasukkan data pelanggan, kondisi tiket, dan lama parkir serta melihat jumlah pembayaran.
Pelanggan| Menggunakan layanan parkir dan melakukan pembayaran sesuai biaya yang diperoleh dari sistem.

3. Input dan Output

Jenis| Data
Input| Jenis pelanggan (langganan / biasa)
Input| Kondisi tiket (tersedia / hilang)
Input| Lama parkir dalam jam
Output| Jumlah biaya parkir yang harus dibayar

4. Functional Requirement

Kode| Functional Requirement
FR-01| Sistem dapat menerima jenis pelanggan dan kondisi tiket.
FR-02| Sistem dapat menerima lama kendaraan parkir.
FR-03| Sistem dapat memberikan biaya Rp0 untuk pelanggan langganan.
FR-04| Sistem dapat menghitung tarif parkir pelanggan biasa berdasarkan lama parkir.
FR-05| Sistem dapat memberikan denda apabila tiket dinyatakan hilang.
FR-06| Sistem dapat menampilkan total biaya parkir.

5. Business Rules

Kode| Rules
BR-01| Pelanggan langganan tidak dikenakan biaya parkir.
BR-02| Pelanggan biasa membayar Rp3.000 untuk 1 jam pertama.
BR-03| Jika parkir selama 2 jam, total tarif menjadi Rp4.500.
BR-04| Setelah 2 jam, setiap tambahan jam dikenakan Rp2.500.
BR-05| Tiket yang hilang dikenakan denda sebesar Rp25.000.
BR-06| Denda tiket hilang tetap berlaku untuk pelanggan langganan maupun pelanggan biasa.

6. Decomposition

Masalah dibagi menjadi beberapa bagian supaya lebih mudah dikerjakan:

1. Menentukan jenis pelanggan.
2. Memasukkan kondisi tiket dan lama parkir.
3. Mengecek jenis pelanggan.
   - Jika langganan, biaya parkir = Rp0.
   - Jika biasa, biaya dihitung berdasarkan lama parkir.
4. Mengecek kondisi tiket.
   - Jika tiket tersedia, tidak ada tambahan biaya.
   - Jika tiket hilang, tambahkan denda Rp25.000.
5. Menampilkan total biaya parkir.

7. Pattern Recognition

1. Jenis pelanggan mempunyai dua kondisi, yaitu langganan dan biasa.
2. Kondisi tiket juga dibagi menjadi tersedia dan hilang.
3. Tarif pelanggan biasa berubah sesuai dengan lama parkir.
4. Total pembayaran didapat dari biaya parkir ditambah denda jika tiket hilang.

8. Flowchart

                    ┌──────────────┐
                    │    MULAI     │
                    └──────┬───────┘
                           ↓
              ┌────────────────────────┐
              │ Masukkan jenis pelanggan│
              │ tiket dan lama parkir   │
              └───────────┬────────────┘
                          ↓
                 ┌─────────────────┐
                 │ Pelanggan       │
                 │ langganan?      │
                 └───────┬─────────┘
                    Ya ↓     ↓ Tidak
                 ┌───────┐  ┌─────────────────┐
                 │ biaya │  │ Hitung tarif    │
                 │  = 0  │  │ berdasarkan jam │
                 └───┬───┘  └────────┬────────┘
                     │                ↓
                     │       ┌────────────────┐
                     │       │ Lama parkir    │
                     │       │ menentukan     │
                     │       │ tarif           │
                     │       └───────┬────────┘
                     │               ↓
                     └───────────────┘
                             ↓
                    ┌─────────────────┐
                    │ Tiket hilang?   │
                    └────────┬────────┘
                       Ya ↓       ↓ Tidak
                  ┌─────────────┐    │
                  │ Tambahkan   │    │
                  │ Rp25.000    │    │
                  └──────┬──────┘    │
                         └─────┬──────┘
                               ↓
                    ┌─────────────────┐
                    │ Tampilkan total │
                    │ biaya parkir    │
                    └────────┬────────┘
                             ↓
                    ┌──────────────┐
                    │    SELESAI   │
                    └──────────────┘
