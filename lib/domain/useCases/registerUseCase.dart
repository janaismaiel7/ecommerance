import 'package:dartz/dartz.dart';
import 'package:ecommerance/domain/entites/register_response_enitity/register_response_enitity.dart';
import 'package:ecommerance/domain/error.dart';
import 'package:ecommerance/domain/repository/authRepo.dart';


class Registerusecase {
  Authrepo authrepo;
  Registerusecase({required this.authrepo}); //constructor injection

//function call
  Future<Either<Error, RegisterResponseEnitity>> invoke(String name,
      String email, String password, String repPassword, String phone) {
    return authrepo.register(name, email, password, repPassword, phone);
  }
}
