import 'package:route_commerce/api/model/response/user_dto.dart';
import 'package:route_commerce/domain/entities/response/user.dart';

extension UserMapper on UserDto{
  User toUserDto(){
    return User(name: name, email: email);
  }
}