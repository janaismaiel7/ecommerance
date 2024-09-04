import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerance/data/apiManger.dart';
import 'package:ecommerance/data/dataSources/remoteDataSource/authRemoteDatSource.dart';
import 'package:ecommerance/data/endPoint.dart';
import 'package:ecommerance/data/model/reggister_response_dto/reggister_response_dto.dart';
import 'package:ecommerance/domain/entites/register_response_enitity/register_response_enitity.dart';
import 'package:ecommerance/domain/error.dart';

class Authremotedatasourceimpl implements Authremotedatsource {
  final Apimanger apimanger;

  Authremotedatasourceimpl({required this.apimanger});

  @override
  Future<Either<Error, RegisterResponseEnitity>> register(
    String name,
    String email,
    String password,
    String repPassword,
    String phone,
  ) async {
    try{
    var checkResult = await Connectivity().checkConnectivity();

    if (checkResult == ConnectivityResult.wifi ||
        checkResult == ConnectivityResult.mobile) {
      var response = await apimanger.postData(Endpoint.register, body: {
        "name": name,
        "email": email,
        "password": password,
        "rePassword": repPassword,
        "phone": phone,
      });

      var registerResponse = ReggisterResponseDto.fromJson(response.data);

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        return Right(registerResponse);
      } else {
        return Left(serverError(errorMsg: registerResponse.message!));
      }
    } else {
      return Left(networkError(errorMsg: 'No Internet Connection'));
    }
  }
   catch(e){
    return left(Error(errorMsg: e.toString()));
  }
  }
 
}
