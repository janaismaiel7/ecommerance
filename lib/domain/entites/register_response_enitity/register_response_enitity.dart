import 'user.dart';

class RegisterResponseEnitity {
  String? message;
  userEntity? user;
  String? token;
  String? statusMsg;

  RegisterResponseEnitity(
      {this.message, this.user, this.token, this.statusMsg});
}
