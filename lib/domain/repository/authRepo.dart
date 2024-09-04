import 'package:dartz/dartz.dart';
import 'package:ecommerance/domain/entites/register_response_enitity/register_response_enitity.dart';
import 'package:ecommerance/domain/error.dart';

abstract class Authrepo {
  Future<Either<Error, RegisterResponseEnitity>> register(String name,
      String email, String password, String repPassword, String phone);
}
