import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project/models/destinations_models.dart';
import 'package:project/services/destinations_services.dart';

part 'destination_state.dart';

class DestinationCubit extends Cubit<DestinationState> {
  DestinationCubit() : super(DestinationInitial());

  void fetchDestination() async {
    try {
      emit(DestinationLoading());
      List<DestinationsModels> destination =
          await DestinationsServices().fetchDestination();
      emit(DestinationSucces(destination)); 
    } catch (e) {
      emit(DestinationFailed(e.toString()));
    }
  }
}
