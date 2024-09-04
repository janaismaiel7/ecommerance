import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:ecommerance/domain/entites/register_response_enitity/user.dart';

class UserDto extends userEntity {
  String? role;

  UserDto({super.name, super.email, this.role});

  factory UserDto.fromMap(Map<String, dynamic> data) => UserDto(
        name: data['name'] as String?,
        email: data['email'] as String?,
        role: data['role'] as String?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [User].
  factory UserDto.fromJson(String data) {
    return UserDto.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  @override
  int get hashCode => name.hashCode ^ email.hashCode ^ role.hashCode;
}
