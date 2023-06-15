part of 'third_page_cubit.dart';

@immutable
class ThirdPageState {
  const ThirdPageState({
    this.errorMessage = '',
    required this.status,
  });
  final String? errorMessage;
  final Status status;
}
