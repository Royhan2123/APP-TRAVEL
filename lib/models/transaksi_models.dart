import 'package:equatable/equatable.dart';
import 'package:project/models/destinations_models.dart';

class TransaksiModels extends Equatable {
  final DestinationsModels destination;
  final int amountTraveler;
  final String seat;
  final bool insurance;
  final bool refundable;
  final double vat;
  final int price;
  final int grandTotal;

  const TransaksiModels({
    required this.destination,
    this.amountTraveler = 0,
    this.seat = "",
    this.insurance = false,
    this.refundable = false,
    this.vat = 0,
    this.price = 0,
    this.grandTotal = 0,
  });

  @override
  List<Object?> get props => [destination,amountTraveler,insurance,vat,refundable,price,grandTotal,seat,];
}
