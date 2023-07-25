import 'package:flutter_bloc/flutter_bloc.dart';

class SeatCubit extends Cubit<List<String>> {
  SeatCubit() : super([]);

  void selected(String id) {
    // ignore: avoid_print
    print("sebelum di klik: $state");
    if (!isSelected(id)) {
      state.add(id);
    } else {
      state.remove(id);
    }
    // ignore: avoid_print
    print("new state: $state");
    emit(List.from(state));
  }

  bool isSelected(String id) {
    int index = state.indexOf(id);
    // ignore: avoid_print
    print("index: $index");
    if (index == -1) {
      return false;
    } else {
      return true;
    }
  }
}
