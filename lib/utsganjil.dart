import 'dart:io';

List<Map> daftar_pesanan = [];

List<Map> daftar_paket = [{
"kode" : 1,
"rute" : "Banyuwangi - Wisata Using - Kawah Ijen",
"peserta" : 6,
"tarif" : 600000
},
{
"kode" : 2,
"rute" : "Banyuwangi - Pantai Boom - GWD",
"peserta" : 6,
"tarif" : 300000
},
{
"kode" : 3,
"rute" : "Banyuwangi - Grajagan - Pulau Merah",
"peserta" : 6,
"tarif" : 1200000
}
];

List<Map> daftar_layanan = [
  {"kode" : 1, "fasilitas" : "penginapan", "tarif":60000},
  {"kode" : 2, "fasilitas" : "penjemputan", "tarif":300000},
  {"kode" : 3, "fasilitas" : "kuliner", "tarif":300000},
];
void main() {

String ulang = "y";

do{
input; 
stdout.write("input lagi? : (y/t): ");
ulang = stdin.readLineSync() as String;
}while (ulang == "y"); {
  
}

  
  tampil();
}
void input(String nama, int kode_paket, int kode_layanan){
Map pesanan = {};
stdout.write("masukkan nama anda : ");
String nama = stdin.readLineSync() as String;
stdout.write("masukkan kode paket : ");
int kode_paket = int.parse(stdin.readLineSync() as String); stdin.readLineSync();
stdout.write("masukkan kode layanan: ");
int kode_layanan = int.parse(stdin.readLineSync() as String);
pesanan['nama'] = nama;
pesanan['kode_paket'] = kode_paket;

daftar_paket.forEach((paket) {
if (paket['kode'] == kode_paket){
pesanan['nama_paket'] = paket['rute'];
pesanan['tarif_paket'] = paket['tarif'];
}
 });
 daftar_layanan.forEach((layanan) {
  if (layanan['kode'] == kode_layanan){
    pesanan['nama_layanan'] = layanan['fasilitas'];
    pesanan['tarif_layanan'] = layanan['tarif'];
  }
 });
 pesanan['total'] = pesanan['tarif_paket'] + pesanan['tarif_layanan'];

 daftar_pesanan.add(pesanan);

}
void tampil(){
 clear();

 print("======= Daftar Pesanan ======");
 for (int i = 0; i < daftar_pesanan.length; i++){
  print("No: ${i + 1}");
  print("Nama: ${daftar_pesanan[i]['nama']}");
  print("kode: ${daftar_pesanan[i]['nama_paket']}");
  print("layanan: ${daftar_pesanan[i]['layanan']}");
  print("total: ${daftar_pesanan[i]['total']}");
  
 }
}

 void clear(){
    for (int i = 0; i < 10; i++){
      
    }
  }