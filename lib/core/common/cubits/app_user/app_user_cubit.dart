
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../entities/user.dart';

part 'app_user_state.dart';

class AppUserCubit extends Cubit<AppUserState> {
  AppUserCubit() : super(AppUserInitial());
  void updateUserState(User? user){
    if (user == null){
      emit(AppUserInitial());
    }else{
      emit(AppUserLoggedIn(user));
    }
  }
}
