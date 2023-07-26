part of 'transaksi_cubit.dart';

abstract class TransaksiState extends Equatable {
  const TransaksiState();

  @override
  List<Object> get props => [];
}

class TransaksiInitial extends TransaksiState {}

class TransaksiLoading extends TransaksiState {}

class TransaksiSucces extends TransaksiState {
  final List<TransaksiModels> transaksis;

  const TransaksiSucces(this.transaksis);

  @override
  List<Object> get props => [transaksis];
}

class TransaksiFailed extends TransaksiState {
  final String error;
  const TransaksiFailed(this.error);
  @override
  List<Object> get props => [error];
}
