import 'package:adahi_application/database/remote_db/authentication.dart';
import 'package:adahi_application/database/remote_db/cloud_firesore.dart';
import 'package:adahi_application/models/user_model.dart';
import 'package:adahi_application/screens/login_screen/login_cubit/login_states.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  authenticationAndSaveUserInfo({@required UserModel userModel}) {
    emit(LoginLoadingState());

    AuthenticationService.signIn(userModel: userModel)
        .then((userCredential) {})
        .catchError(
          (error) => emit(LoginErrorState(error.toString())),
        );
  }
}
