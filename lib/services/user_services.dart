import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/models/user_models.dart';

class UserServices {
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection("users");

  Future<void> dataUser(UserModel user) async {
    try {
      //collectionrefence.doc ialah collection nya membaca documen yang dimana documen nya,user.id yang sudah
      //di buat di dalam usermodel,dan sudah di buat dalam usercredintial di authservices
      collectionReference.doc(user.id).set({
        'email': user.email,
        'name': user.name,
        'password': user.password,
        'konfirmpassword': user.konfirmpassword,
      });
    } catch (e) {
      throw e.toString();
    }
  }

  Future<UserModel> dataId(String id) async {
    try {
      DocumentSnapshot documentSnapshot =
          await collectionReference.doc(id).get();
      return UserModel(
          id: id,
          email: documentSnapshot['email'],
          name: documentSnapshot['name'],
          password: documentSnapshot['password'],
          konfirmpassword: documentSnapshot['konfirmpassword']);
    } catch (e) {
      throw e.toString(); 
    }
  }
}













// CollectionReference collectionReference =
//       FirebaseFirestore.instance.collection("users");
//   Future<void> dataUser(UserModel user) async {
//     try {
//       collectionReference.doc(user.id).set({
//         "name": user.name,
//         "email": user.email,
//         "password": user.password,
//         "konfirmpassword": user.konfirmpassword,
//       });
//     } catch (e) {
//       throw e.toString();
//     }
//   }

//   Future<UserModel> dataId(String id) async {
//     try {
//       DocumentSnapshot documentSnapshot =
//           await collectionReference.doc(id).get();
//       return UserModel(
//           id: id,
//           email: documentSnapshot["email"],
//           name: documentSnapshot["name"],
//           password: documentSnapshot["password"],
//           konfirmpassword: documentSnapshot["konfirmpassowrd"]);
//     } catch (e) {
//       throw e.toString();
//     }
//   }
