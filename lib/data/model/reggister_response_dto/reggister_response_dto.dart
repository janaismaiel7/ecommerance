import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:ecommerance/domain/entites/register_response_enitity/register_response_enitity.dart';

import 'userDto.dart';

class ReggisterResponseDto extends RegisterResponseEnitity {
  ReggisterResponseDto(
      {super.message, super.user, super.token, super.statusMsg});

  factory ReggisterResponseDto.fromMap(Map<String, dynamic> data) {
    return ReggisterResponseDto(
      message: data['message'] as String?,
      statusMsg: data['statusMsg'],
      user: data['user'] == null
          ? null
          : UserDto.fromMap(data['user'] as Map<String, dynamic>),
      token: data['token'] as String?,
    );
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ReggisterResponseDto].
  factory ReggisterResponseDto.fromJson(String data) {
    return ReggisterResponseDto.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ReggisterResponseDto] to a JSON string.

  @override
  int get hashCode =>
      message.hashCode ^ user.hashCode ^ token.hashCode ^ statusMsg.hashCode;
}
