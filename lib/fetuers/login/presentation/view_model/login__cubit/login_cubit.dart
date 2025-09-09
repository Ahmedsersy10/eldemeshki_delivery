import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  final SupabaseClient _supabase = Supabase.instance.client;

  Future<void> loginUser({required String email, required String password}) async {
    emit(LoginLoding());

    try {
      final response = await _supabase.auth.signInWithPassword(email: email, password: password);

      if (response.user != null) {
        emit(LoginSuccess());
      } else {
        emit(LoginFailuer(errMessage: 'فشل تسجيل الدخول. حاول مرة أخرى.'));
      }
    } on AuthApiException catch (e) {
      if (e.statusCode == 400 && e.code == 'invalid_credentials') {
        emit(LoginFailuer(errMessage: 'البريد الإلكتروني أو كلمة المرور غير صحيحة.'));
      } else {
        emit(LoginFailuer(errMessage: e.message));
      }
    } catch (e) {
      emit(LoginFailuer(errMessage: 'حدث خطأ غير متوقع. حاول لاحقاً.'));
    }
  }
}
