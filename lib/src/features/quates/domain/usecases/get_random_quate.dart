import 'package:dartz/dartz.dart';
import 'package:weather_app_1810/src/core/errors/failures.dart';
import 'package:weather_app_1810/src/core/usecases/usecase.dart';
import 'package:weather_app_1810/src/features/quates/domain/entities/quate.dart';
import 'package:weather_app_1810/src/features/quates/domain/repositories/quate_repository.dart';

class GetRandomQuate implements UseCase<Quate, NoParams> {
  final QuateRepository quateRepository;

  GetRandomQuate({required this.quateRepository});
  @override
  Future<Either<Failure, Quate>> call(NoParams params) {
    return quateRepository.getRandomQuate();
  }
  // Future<Either<Failure,Type>> call() {}
}
