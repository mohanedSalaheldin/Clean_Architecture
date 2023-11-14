import 'dart:convert';

import 'package:weather_app_1810/src/core/errors/exceptions.dart';
import 'package:weather_app_1810/src/core/utils/app_strings.dart';
import 'package:weather_app_1810/src/features/quates/data/models/quate_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalQuateDataSource {
  Future<QuateModel> getQuate();
  Future<void> cacheQuate(QuateModel quateModel);
}

class LocalQuateDataSourceImpl implements LocalQuateDataSource {
  final SharedPreferences sharedPreferences;

  LocalQuateDataSourceImpl({required this.sharedPreferences});
  @override
  Future<void> cacheQuate(QuateModel quateModel) {
    return sharedPreferences.setString(
        AppStrings.cachedQuate, json.encode(quateModel));
  }

  @override
  Future<QuateModel> getQuate() async {
    final jsonString = sharedPreferences.getString(AppStrings.cachedQuate);
    if (jsonString != null) {
      final quate = Future.value(QuateModel.fromJson(json.decode(jsonString)));
      return quate;
    } else {
      throw CacheException();
    }
  }
}
