import 'package:bloc/bloc.dart';

class PagecubitsCubit extends Cubit<int> {
  PagecubitsCubit() : super((0));

  void setpage(int newpage) {
    emit(newpage);
  }
}
