import 'package:dartz/dartz.dart';
import 'package:ecommerance/data/dataSources/remoteDataSource/authRemoteDatSource.dart';
import 'package:ecommerance/domain/entites/register_response_enitity/register_response_enitity.dart';
import 'package:ecommerance/domain/repository/authRepo.dart';
import 'package:ecommerance/domain/error.dart';



class Authrepoimpl implements Authrepo {
  Authremotedatsource authremotedatsource;
  Authrepoimpl({required this.authremotedatsource});
  @override
  Future<Either<Error, RegisterResponseEnitity>> register(String name,
      String email, String password, String repPassword, String phone) async {
    var either = await authremotedatsource.register(
        name, email, password, repPassword, phone);
    return either.fold((error) => Left(error), (response) => Right(response));
  }
}
