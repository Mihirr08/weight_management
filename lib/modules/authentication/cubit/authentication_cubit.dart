import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weight_management_app/modules/authentication/login/login_repo.dart';
import 'package:weight_management_app/modules/authentication/register/registration_repo.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());

  loginWithEmailPassword(String email, String password) async{
    try{
      emit(AuthenticationLoading());

      UserCredential user =
          await LoginRepo().loginWithEmailPass(email, password);

      emit(AuthenticationSuccess(user));
    }catch (e){
      emit(AuthenticationError(e.toString()));
    }
  }

  registerWithEmailPassword(String email, String password) async{
    try{
      emit(AuthenticationLoading());

      UserCredential user =
          await RegistrationRepo().registerWithEmailPass(email, password);

      emit(AuthenticationSuccess(user));
    }catch (e){
      emit(AuthenticationError(e.toString()));
    }
  }


}
