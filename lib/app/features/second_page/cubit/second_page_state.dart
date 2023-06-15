part of 'second_page_cubit.dart';

@immutable
class SecondPageState {
  const SecondPageState({
    this.errorMessage = '',
    required this.status,
  });
  final String? errorMessage;
  final Status status;
}
