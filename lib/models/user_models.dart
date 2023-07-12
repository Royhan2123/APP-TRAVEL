import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String id;
  final String email;
  final String password;
  final String name;
  final String konfirmpassword;
  final int balance;
  
  const UserModel(
      {required this.id,
      required this.email,
      required this.name,
      required this.password,
      required this.konfirmpassword,
      this.balance = 0});

  @override
  List<Object?> get props => [id, email,name, balance,password,konfirmpassword];
}
