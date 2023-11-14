part of 'get_weather_by_city_name_cubit.dart';

abstract class QuateStates extends Equatable {
  const QuateStates();

  @override
  List<Object> get props => [];
}

class QuateInitial extends QuateStates {}

class QuateIsLoading extends QuateStates {}

class QuateLoaded extends QuateStates {
  final Quate quate;

  const QuateLoaded({required this.quate});
}

class QuateLoadingError extends QuateStates {
  final String msg;

  const QuateLoadingError({required this.msg});
}
