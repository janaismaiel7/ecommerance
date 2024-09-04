
import 'package:bloc/bloc.dart';
import 'package:ecommerance/features/authPresenationsScreens/register/cubit/registerStates.dart';
import 'package:flutter/material.dart';

abstract class Registserviewmodel extends Cubit<Registerstates>{
registerUseCase registeruseCase;
  Registserviewmodel():super(registerIntialState());
  TextEditingController fullNameController=TextEditingController();
  TextEditingController mobileNumberController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController rePasswordController=TextEditingController();
  //hold data + handle logic
  void register(){
    
  }
}