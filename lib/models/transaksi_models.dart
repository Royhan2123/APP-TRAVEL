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
  final String id;

  const TransaksiModels({
    required this.destination,
    this.amountTraveler = 0,
    this.seat = "",
    this.id = "",
    this.insurance = false,
    this.refundable = false,
    this.vat = 0,
    this.price = 0,
    this.grandTotal = 0,
  });

  factory TransaksiModels.fromJson(String id, Map<String, dynamic> json) =>
      TransaksiModels(
        destination: DestinationsModels.fromJson(
            json["destination"]["id"], json["destination"]),
        id: id,
        amountTraveler: json["amounTraveler"],
        seat: json["seat"],
        insurance: json["insurance"],
        refundable: json["refundable"],
        vat: json["vat"],
        price: json["price"],
        grandTotal: json["grandTotal"],
      );

  @override
  List<Object?> get props => [
        destination,
        amountTraveler,
        insurance,
        vat,
        refundable,
        price,
        grandTotal,
        seat,
      ];
}
