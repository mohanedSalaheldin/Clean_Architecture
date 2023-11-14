import 'package:dartz/dartz.dart';
import 'package:weather_app_1810/src/core/errors/exceptions.dart';
import 'package:weather_app_1810/src/core/errors/failures.dart';
import 'package:weather_app_1810/src/core/networks/network_info.dart';
import 'package:weather_app_1810/src/features/quates/data/datasources/local_quate_datasource.dart';
import 'package:weather_app_1810/src/features/quates/data/datasources/remote_quate_datasource.dart';
import 'package:weather_app_1810/src/features/quates/domain/entities/quate.dart';
import 'package:weather_app_1810/src/features/quates/domain/repositories/quate_repository.dart';

class QuateRepositoryImpl implements QuateRepository {
  final NetworkInfo networkInfo;
  final RemoteQuateDataSource remoteQuateDataSource;
  final LocalQuateDataSource localQuateDataSource;

  QuateRepositoryImpl(
      {required this.networkInfo,
      required this.remoteQuateDataSource,
      required this.localQuateDataSource});
  @override
  Future<Either<Failure, Quate>> getRandomQuate() async {
    if (await networkInfo.isConnected()) {
      try {
        final quate = await remoteQuateDataSource.getQuate();
        localQuateDataSource.cacheQuate(quate);
        return Right(quate);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final quate = await localQuateDataSource.getQuate();
        return Right(quate);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
