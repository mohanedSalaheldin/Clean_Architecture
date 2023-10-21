import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'get_weather_by_city_name_state.dart';

class GetWeatherByCityNameCubit extends Cubit<GetWeatherByCityNameState> {
  GetWeatherByCityNameCubit() : super(GetWeatherByCityNameInitial());
}
