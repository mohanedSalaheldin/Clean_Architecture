import 'package:equatable/equatable.dart';

class Quate extends Equatable {
  final String auther;
  final String content;

  final String id;

  const Quate(
      {required this.auther,
      required this.content,
  
      required this.id});

  @override
  List<Object?> get props => [auther, id, content];
}
