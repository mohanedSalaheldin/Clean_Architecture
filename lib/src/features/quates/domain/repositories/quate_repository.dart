import 'package:dartz/dartz.dart';
import 'package:weather_app_1810/src/core/errors/failures.dart';
import 'package:weather_app_1810/src/features/quates/domain/entities/quate.dart';

abstract class QuateRepository {
  Future<Either<Failure, Quate>> getRandomQuate();
}
