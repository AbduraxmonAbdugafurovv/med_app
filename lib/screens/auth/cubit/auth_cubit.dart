import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:medapp/screens/auth/state/auth_state.dart';

class AuthCubit extends Cubit<AuhtState>{
  AuthCubit():super(AuthInitial());

  TextEditingController nameConroller = TextEditingController();
  TextEditingController phoneNumberConroller = TextEditingController();
  TextEditingController passwordConroller = TextEditingController();
}