import 'dart:io';

List<Map> daftar_pesanan = [];

List<Map> daftar_paket = [
  {
    "kode": 1,
    "rute": "Banyuwangi - Wisata Using - Kawah ijen",
    "peserta": 6,
    "tarif": 600000
  },
  {
    "kode": 2,
    "rute": "Banyuwangi - Pantai Boom - Grand Watudodol",
    "peserta": 6,
    "tarif": 300000
  },
  {
    "kode": 3,
    "rute": "Banyuwangi - Grajagan - Pulau Merah",
    "peserta": 6,
    "tarif": 1200000
  }
];
List<Map> layanan_tambahan = [
  {"kode": 1, "fasilitas": "Penginapan", "tarif": 600000},
  {"kode": 2, "fasilitas": "Penjemputan", "tarif": 300000},
  {"kode": 3, "fasilitas": "Kuliner", "tarif": 300000}
];
void main() {
  String ulang = "y";
  do {
    input();

    stdout.write("input lagi ? (y/n):");
    ulang = stdin.readLineSync() as String;
  } while (ulang == "y");

  tampil();
}

void input() {
  Map pesanan = {};

  stdout.write("Masukkan Nama Anda: ");
  String nama = stdin.readLineSync() as String;
  stdout.write("Masukkan Kode Paket: ");
  int kode_paket = int.parse(stdin.readLineSync() as String);
  stdout.write("Masukkan Kode Layanan: ");
  int kode_layanan = int.parse(stdin.readLineSync() as String);
  pesanan['nama'] = nama;
  pesanan['kode_paket'] = kode_paket;

  daftar_paket.forEach((paket) {
    if (paket['kode'] == kode_paket) {
      pesanan['nama_paket'] = paket['rute'];
      pesanan['tarif_paket'] = paket['tarif'];
    }
  });
  layanan_tambahan.forEach((layanan) {
    if (layanan['kode'] == kode_layanan) {
      pesanan['nama_layanan'] = layanan['fasilitas'];
      pesanan['tarif_layanan'] = layanan['tarif'];
    }
  });

  pesanan['total'] = pesanan['tarif_paket'] + pesanan['tarif_layanan'];

  daftar_pesanan.add(pesanan);
}

void tampil() {
  clear();

  print("----- DAFTAR PESANAN -----");
  for (int i = 0; i < daftar_pesanan.length; i++) {
    print("No: ${i + 1}");
    print("Nama: ${daftar_pesanan[i]['nama']}");
    print("Kode: ${daftar_pesanan[i]['kode_paket']}");
    print("Nama Paket: ${daftar_pesanan[i]['nama_paket']}");
    print("Layanan: ${daftar_pesanan[i]['nama_layanan']}");
    print("Total: Rp. ${daftar_pesanan[i]['total']}");
    print("");
  }
}

void clear() {
  for (int i = 0; i < 10; i++) {
    print("\n");
  }
}
