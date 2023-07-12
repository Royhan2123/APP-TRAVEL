import 'package:equatable/equatable.dart';

class DestinationsModels extends Equatable {
  final String id;
  final String name;
  final String city;
  final String imageUrl;
  final String about;
  final double rating;
  final int price;

  const DestinationsModels({
    required this.id,
    this.name = "",
    this.city = '',
    this.about = "",
    this.imageUrl = "",
    this.rating = 0.0,
    this.price = 0,
  });

  factory DestinationsModels.fromJson(String id, Map<String, dynamic> json) =>
      DestinationsModels(
        id: id,
        name: json["name"],
        city: json["city"],
        about: json["about"],
        imageUrl: json["imageUrl"].toString(),
        rating: json["rating"].toDouble(),
        price: json["price"],
      );

  @override
  List<Object?> get props => [id, name, city, imageUrl, rating, price, about];
}
