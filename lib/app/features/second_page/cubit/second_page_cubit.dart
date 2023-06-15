

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular_introduction_app/core/enums.dart';

part 'second_page_state.dart';

class SecondPageCubit extends Cubit<SecondPageState> {
  SecondPageCubit() : super(const SecondPageState(status: Status.initial));
  void statusCheck() {
    emit(const SecondPageState(status: Status.loading));
    try {
      emit(const SecondPageState(status: Status.success));
    } catch (error) {
      emit(SecondPageState(
          status: Status.failure, errorMessage: error.toString()));
    }
  }
}
