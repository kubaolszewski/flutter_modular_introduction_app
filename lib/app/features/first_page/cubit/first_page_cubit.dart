import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular_introduction_app/core/enums.dart';

part 'first_page_state.dart';

class FirstPageCubit extends Cubit<FirstPageState> {
  FirstPageCubit() : super(const FirstPageState(status: Status.initial));
  void statusCheck() {
    emit(const FirstPageState(status: Status.loading));
    try {
      emit(const FirstPageState(status: Status.success));
      print('Moving to different page');
    } catch (error) {
      emit(FirstPageState(
          status: Status.failure, errorMessage: error.toString()));
    }
  }
}
