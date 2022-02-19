import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mayfay_hackaton/model/keuangan_model.dart';
import 'package:mayfay_hackaton/services/keuangan_service.dart';

part 'keuangan_state.dart';

class KeuanganCubit extends Cubit<KeuanganState> {
  KeuanganCubit() : super(KeuanganInitial());

  void fetchKeuangan() async {
    try {
      emit(KeuanganLoading());
      List<KeuanganModel> keuangan = await KeuanganService().fetchKeuangan();

      emit(KeuanganSuccess(keuangan));
    } catch (e) {
      emit(KeuanganFailed(e.toString()));
    }
  }
}
