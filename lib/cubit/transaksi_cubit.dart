import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project/models/transaksi_models.dart';
import 'package:project/services/transaksi_services.dart';

part 'transaksi_state.dart';

class TransaksiCubit extends Cubit<TransaksiState> {
  TransaksiCubit() : super(TransaksiInitial());

  void fetchTransaksi(TransaksiModels transaksi) async {
    try {
      emit(TransaksiLoading());
      await TransaksiServices().fetchTransaksi(transaksi);
      emit(const TransaksiSucces([]));
    } catch (e) {
      emit(TransaksiFailed(e.toString()));
    }
  }

  void transaksis() async {
    try {
      emit(TransaksiLoading());
      List<TransaksiModels> transaksi = await TransaksiServices().transaksis();
      emit(TransaksiSucces(transaksi));
    } catch (e) {
      emit(TransaksiFailed(e.toString()));
    }
  }
}
