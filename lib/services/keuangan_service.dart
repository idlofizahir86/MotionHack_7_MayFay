import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mayfay_hackaton/model/keuangan_model.dart';

class KeuanganService {
  final CollectionReference _keuanganRef =
      FirebaseFirestore.instance.collection('keuangan');

  Future<List<KeuanganModel>> fetchKeuangan() async {
    try {
      QuerySnapshot result = await _keuanganRef.get();

      List<KeuanganModel> keuangan = result.docs.map(
        (e) {
          return KeuanganModel.fromJson(e.id, e.data() as Map<String, dynamic>);
        },
      ).toList();

      return keuangan;
    } catch (e) {
      // ignore: use_rethrow_when_possible
      throw e;
    }
  }
}
