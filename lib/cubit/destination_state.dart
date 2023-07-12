part of 'destination_cubit.dart';

abstract class DestinationState extends Equatable {
  const DestinationState();

  @override
  List<Object> get props => [];
}

class DestinationInitial extends DestinationState {}

class DestinationLoading extends DestinationState {}

class DestinationSucces extends DestinationState {
  final List<DestinationsModels> destination;

  const DestinationSucces(this.destination);

  @override
  List<Object> get props => [destination];
}

class DestinationFailed extends DestinationState {
  final String error;

  const DestinationFailed(this.error);

  @override
  List<Object> get props => [error];
}
