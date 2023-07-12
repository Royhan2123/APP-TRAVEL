import 'package:firebase_auth/firebase_auth.dart';
import 'package:project/models/user_models.dart';
import 'package:project/services/user_services.dart';

class AuthServices {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<UserModel> signUp({
    required String name,
    required String email,
    required String password,
    required String konfirmpassword,
  }) async {
    try {
      UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      UserModel user = UserModel(
          id: userCredential.user!.uid,
          email: email,
          name: name,
          password: password,
          konfirmpassword: konfirmpassword);
      await UserServices().dataUser(user);
      return user;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<UserModel> signIn({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      UserModel user = await UserServices().dataId(userCredential.user!.uid);
      return user;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<void> signOut() async {
    try {
      await firebaseAuth.signOut();
    } catch (e) {
      throw e.toString();
    }
  }
}






















// FirebaseAuth firebaseAuth = FirebaseAuth.instance;

//   Future<UserModel> signUp({
//     required String name,
//     required String email,
//     required String password,
//     required String konfirmpassword,
//   }) async {
//     try {
//       UserCredential userCredential = await firebaseAuth
//           .createUserWithEmailAndPassword(email: email, password: password);

//       UserModel user = UserModel(
//           id: userCredential.user!.uid,
//           email: email,
//           name: name,
//           password: password,
//           konfirmpassword: konfirmpassword);
//       await UserServices().dataUser(user);    
//       return user;
//     } catch (e) {
//       throw e.toString();
//     }
//   }

//   Future<UserModel> signIn({
//     required String email,
//     required String password,
//   }) async {
//     try {
//       UserCredential userCredential = await firebaseAuth
//           .createUserWithEmailAndPassword(email: email, password: password);
//       UserModel user = await UserServices().dataId(userCredential.user!.uid);
//       return user;
//     } catch (e) {
//       throw e.toString();
//     }
//   }

//   Future<void> signOut() async {
//     try {
//       await firebaseAuth.signOut();
//     } catch (e) {
//       throw e.toString();
//     }
//   }
































// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:project/models/user_models.dart';
// import 'package:project/services/user_services.dart';

// class AuthServices {
//   FirebaseAuth firebaseAuth = FirebaseAuth.instance;

//   Future<UserModel> signUp({
//     required String email,
//     required String name,
//     required String password,
//     required String konfirmpassword,
//   }) async {
//     try {
//       UserCredential userCredential = await firebaseAuth
//           .createUserWithEmailAndPassword(email: email, password: password);
//       UserModel user = UserModel(
//           id: userCredential.user!.uid,
//           email: email,
//           name: name,
//           password: password,
//           konfrimpassword: konfirmpassword);
//       await UserServices().dataUsersignUp(user);
//       return user;
//     } catch (e) {
//       throw e.toString();
//     }
//   }

//   Future<UserModel> signIn({
//     required String email,
//     required String password,
//   }) async {
//     try {
//       UserCredential userCredential = await firebaseAuth
//           .createUserWithEmailAndPassword(email: email, password: password);
//       UserModel user =
//           await UserServices().getCurrentByUserId(userCredential.user!.uid);
//       await UserServices().dataUsersignUp(user);
//       return user;
//     } catch (e) {
//       throw e.toString();
//     }
//   }

//   Future<void> signOut() async {
//     try {
//       await firebaseAuth.signOut();
//     } catch (e) {
//       throw e.toString();
//     }
//   }
// }




















// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:project/models/user_models.dart';
// // import 'package:project/services/user_services.dart';

// // class AuhtServices {
// //   FirebaseAuth firebaseAuth = FirebaseAuth.instance;

// //   Future<UserModel> signUp({
// //     required String name,
// //     required String email,
// //     required String password,
// //     required String konfirmpassword,
// //   }) async {
// //     try {
// //       UserCredential userCredential = await firebaseAuth
// //           .createUserWithEmailAndPassword(email: email, password: password);
// //       UserModel user = UserModel(
// //           id: userCredential.user!.uid,
// //           email: email,
// //           name: name,
// //           password: password,
// //           konfrimpassword: konfirmpassword);
// //       await UserServices().dataUsersignUp(user);
// //       return user;
// //     } catch (e) {
// //       throw e.toString();
// //     }
// //   }

// //   Future<UserModel> signIn({
// //     required String email,
// //     required String password,
// //   }) async {
// //     try {
// //       UserCredential userCredential = await firebaseAuth
// //           .createUserWithEmailAndPassword(email: email, password: password);
// //       UserModel user =
// //           await UserServices().getCurrentByUserId(userCredential.user!.uid);
// //       return user;
// //     } catch (e) {
// //       throw e.toString();
// //     }
// //   }

// //   Future<void> signOut() async {
// //     try {
// //       await firebaseAuth.signOut();
// //     } catch (e) {
// //       throw e.toString();
// //     }
// //   }
// // }
