part of 'signup_cubit.dart';

@immutable
sealed class SignupState {}

final class SignupInitial extends SignupState {}

final class SignupLoding extends SignupState {}

final class SignupSuccess extends SignupState {}

final class SignupFailuer extends SignupState {
  String errMessage;
  SignupFailuer({required this.errMessage});
}
