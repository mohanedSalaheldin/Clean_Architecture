import 'package:weather_app_1810/src/features/quates/domain/entities/quate.dart';

class QuateModel extends Quate {
  const QuateModel({
    required String auther,
    required String content,
    required String id,
  }) : super(auther: auther, content: content, id: id);

  factory QuateModel.fromJson(Map<String, dynamic> json) {
    return QuateModel(
      auther: json['auther'],
      content: json['content'],
      id: json['_id'],
    );
  }
}
