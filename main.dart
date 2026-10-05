// Status pelanggan parkir
enum JenisPelanggan { langganan, biasa }

// Status tiket parkir
enum KondisiTiket { tersedia, hilang }

// Denda jika tiket parkir hilang
const int dendaHilang = 25000;

// Menghitung tarif parkir berdasarkan lama parkir
int tarifParkir(int lamaParkir) {
  int total;

  if (lamaParkir <= 1) {
    total = 3000;
  } else if (lamaParkir == 2) {
    total = 3000 + 1500;
  } else {
    total = 3000 + 1500 + ((lamaParkir - 2) * 2500);
  }

  return total;
}

// Menghitung total pembayaran parkir
int totalParkir(
  JenisPelanggan pelanggan,
  KondisiTiket kondisi,
  int lamaParkir,
) {
  int totalBayar;

  // Pelanggan langganan tidak membayar tarif parkir
  if (pelanggan == JenisPelanggan.langganan) {
    totalBayar = 0;
  } else {
    totalBayar = tarifParkir(lamaParkir);
  }

  // Tambahan denda jika tiket hilang
  if (kondisi == KondisiTiket.hilang) {
    totalBayar += dendaHilang;
  }

  return totalBayar;
}

void main() {
  print(
    'Langganan, tiket tersedia, 3 jam : Rp${totalParkir(JenisPelanggan.langganan, KondisiTiket.tersedia, 3)}',
  );

  print(
    'Langganan, tiket hilang, 4 jam   : Rp${totalParkir(JenisPelanggan.langganan, KondisiTiket.hilang, 4)}',
  );

  print(
    'Biasa, tiket tersedia, 2 jam     : Rp${totalParkir(JenisPelanggan.biasa, KondisiTiket.tersedia, 2)}',
  );

  print(
    'Biasa, tiket tersedia, 5 jam     : Rp${totalParkir(JenisPelanggan.biasa, KondisiTiket.tersedia, 5)}',
  );

  print(
    'Biasa, tiket hilang, 3 jam       : Rp${totalParkir(JenisPelanggan.biasa, KondisiTiket.hilang, 3)}',
  );
}