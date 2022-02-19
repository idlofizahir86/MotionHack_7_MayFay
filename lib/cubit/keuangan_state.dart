part of 'keuangan_cubit.dart';

abstract class KeuanganState extends Equatable {
  const KeuanganState();

  @override
  List<Object> get props => [];
}

class KeuanganInitial extends KeuanganState {}

class KeuanganLoading extends KeuanganState {}

class KeuanganSuccess extends KeuanganState {
  final List<KeuanganModel> keuangan;

  const KeuanganSuccess(this.keuangan);

  @override
  List<Object> get props => [keuangan];
}

class KeuanganFailed extends KeuanganState {
  final String error;

  const KeuanganFailed(this.error);

  @override
  List<Object> get props => [error];
}
