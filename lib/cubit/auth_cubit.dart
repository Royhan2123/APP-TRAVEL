import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project/models/user_models.dart';
import 'package:project/services/auth_services.dart';
import 'package:project/services/user_services.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void signUp({
    required String name,
    required String email,
    required String password,
    required String konfirmpassword,
  }) async {
    try {
      emit(AuthLoading());
      UserModel user = await AuthServices().signUp(
          name: name,
          email: email,
          password: password,
          konfirmpassword: konfirmpassword);
      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }

  void signIn({
    required String email,
    required String password,
  }) async {
    try {
      emit(AuthLoading());
      UserModel user =
          await AuthServices().signIn(email: email, password: password);
      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }

  void signOut() async {
    try {
      emit(AuthLoading());
      await AuthServices().signOut();
      emit(AuthInitial());
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }

  void dataId(String id) async {
    try {
      emit(AuthLoading());
      UserModel user = await UserServices().dataId(id);
      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }
}






