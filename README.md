HW2 - Langganan Parkir

Program ini dibuat untuk menghitung biaya parkir berdasarkan jenis pelanggan, lama parkir, dan kondisi tiket.

Yang digunakan

- Enum untuk jenis pelanggan
- Enum untuk kondisi tiket
- Function untuk menghitung tarif parkir
- Function untuk menghitung total biaya
- Denda jika tiket parkir hilang

Aturan Parkir

Untuk pelanggan biasa:

- 1 jam = Rp3.000
- 2 jam = Rp4.500
- Jam berikutnya = tambah Rp2.500 per jam

Untuk pelanggan langganan, biaya parkirnya Rp0.

Kalau tiket hilang, akan ditambah denda Rp25.000.

Contoh Output

Langganan, tiket tersedia, 3 jam : Rp0
Langganan, tiket hilang, 4 jam   : Rp25000
Biasa, tiket tersedia, 2 jam     : Rp4500
Biasa, tiket tersedia, 5 jam     : Rp12000
Biasa, tiket hilang, 3 jam       : Rp32500

Cara Menjalankan

Program dibuat menggunakan bahasa Dart.

Jalankan file program melalui DartPad atau VS Code yang sudah terpasang Dart.

Program akan menampilkan hasil perhitungan biaya parkir di terminal.
