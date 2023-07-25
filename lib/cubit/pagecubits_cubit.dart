import 'package:flutter_bloc/flutter_bloc.dart';

class PagecubitsCubit extends Cubit<int> {
  PagecubitsCubit() : super((0));

  void setpage(int newpage) {
    emit(newpage);
  }
}
