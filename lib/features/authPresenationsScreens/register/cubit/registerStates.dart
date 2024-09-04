import 'package:ecommerance/data/model/reggister_response_dto/reggister_response_dto.dart';
import 'package:ecommerance/domain/entites/register_response_enitity/register_response_enitity.dart';

class Registerstates {}
 class registerIntialState extends Registerstates{}
 class registerLoadingState extends Registerstates{}
 class registerErrorState extends Registerstates{
  Error error;
  registerErrorState({required this.error});
 }
 class registerSuccessState extends Registerstates{
  RegisterResponseEnitity responseEnitity;
  registerSuccessState({required this.responseEnitity});
 }
