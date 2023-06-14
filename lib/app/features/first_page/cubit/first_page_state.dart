part of 'first_page_cubit.dart';

@immutable
class FirstPageState {
  const FirstPageState({
    this.errorMessage = '',
    required this.status,
  });
  final String? errorMessage;
  final Status status;
}
