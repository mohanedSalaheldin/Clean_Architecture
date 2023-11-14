import 'dart:convert';

import 'package:weather_app_1810/src/core/api/endpoint.dart';
import 'package:weather_app_1810/src/core/errors/exceptions.dart';
import 'package:weather_app_1810/src/core/utils/app_strings.dart';
import 'package:weather_app_1810/src/features/quates/data/models/quate_model.dart';
import 'package:http/http.dart' as http;

abstract class RemoteQuateDataSource {
  Future<QuateModel> getQuate();
}

class RemoteQuateDataSourceImpl implements RemoteQuateDataSource {
  http.Client client;
  RemoteQuateDataSourceImpl({required this.client});
  @override
  Future<QuateModel> getQuate() async {
    final url = Uri.parse(EndPoints.rendomQuate);
    final response = await client.get(
      url,
      headers: {AppStrings.contentType: AppStrings.applicationJson},
    );
    if (response.statusCode == 200) {
      return QuateModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
