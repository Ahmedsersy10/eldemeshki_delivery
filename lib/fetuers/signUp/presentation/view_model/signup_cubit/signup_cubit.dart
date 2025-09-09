import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());
  final supabase = Supabase.instance.client;
  Future<void> signupUser({required String email, required String password}) async {
    emit(SignupLoding());
    try {
      await supabase.auth.signUp(email: email, password: password);
      emit(SignupSuccess());
    } catch (e) {
      emit(SignupFailuer(errMessage: e.toString()));
    }
  }
}
