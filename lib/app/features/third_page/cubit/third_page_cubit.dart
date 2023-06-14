import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular_introduction_app/core/enums.dart';

part 'third_page_state.dart';

class ThirdPageCubit extends Cubit<ThirdPageState> {
  ThirdPageCubit() : super(const ThirdPageState(status: Status.initial));
  void statusCheck() {
    emit(const ThirdPageState(status: Status.loading));
    try {
      emit(const ThirdPageState(status: Status.success));
      print('Moving to a different page');
    } catch (error) {
      emit(ThirdPageState(
          status: Status.failure, errorMessage: error.toString()));
    }
  }
}
