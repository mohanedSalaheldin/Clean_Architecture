import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_1810/src/core/errors/failures.dart';
import 'package:weather_app_1810/src/core/usecases/usecase.dart';
import 'package:weather_app_1810/src/core/utils/app_strings.dart';
import 'package:weather_app_1810/src/features/quates/domain/entities/quate.dart';
import 'package:weather_app_1810/src/features/quates/domain/usecases/get_random_quate.dart';

part 'get_weather_by_city_name_state.dart';

class QuateCubit extends Cubit<QuateStates> {
  QuateCubit(this.getRandomQuate) : super(QuateInitial());
  final GetRandomQuate getRandomQuate;

  Future<void> qetRandomQuate() async {
    Either<Failure, Quate> responce = await getRandomQuate(NoParams());
    emit(responce.fold(
        (failure) => QuateLoadingError(msg: _mapFailureToErrorMsg(failure)),
        (quate) => QuateLoaded(quate: quate)));
  }

  String _mapFailureToErrorMsg(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return AppStrings.serverException;
      case CacheFailure:
        return AppStrings.cacheException;
      default:
        return AppStrings.unexpectedException;
    }
  }
}
