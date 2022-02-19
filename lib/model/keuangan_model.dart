import 'package:equatable/equatable.dart';

class KeuanganModel extends Equatable {
  final String id;
  final String kategori;
  final int nominal;
  final String tanggal;
  final String keterangan;
  final String deskripsi;
  final bool pemasukkan;

  const KeuanganModel({
    required this.id,
    this.kategori = '',
    this.nominal = 0,
    this.tanggal = '',
    this.keterangan = '',
    this.deskripsi = '',
    this.pemasukkan =true,
  });

  factory KeuanganModel.fromJson(String id, Map<String, dynamic> json) =>
      KeuanganModel(
        id: id,
        kategori: json['kategori'],
        nominal: json['nominal'],
        tanggal: json['tanggal'],
        keterangan: json['keterangan'],
        deskripsi: json['deskripsi'],
        pemasukkan: json['pemasukkan'],
      );

  @override
  List<Object?> get props => throw [
        id,
        kategori,
        nominal,
        tanggal,
        keterangan,
        deskripsi,
      ];
}
