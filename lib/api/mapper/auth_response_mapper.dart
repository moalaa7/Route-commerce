import 'package:route_commerce/api/mapper/user_mapper.dart';
import 'package:route_commerce/api/model/response/auth_response_dto.dart';
import 'package:route_commerce/core/exceptions/app_exception.dart';
import 'package:route_commerce/domain/entities/response/auth_response.dart';

extension AuthResponseMapper on AuthResponseDto{
  AuthResponse toAuthResponse(){
    if(user != null &&  token!.isNotEmpty &&token != null){
      return AuthResponse(
          user: user!.toUserDto(),
          token: token
      );
    }
    throw ServerException(message: 'Failed Authentication');
  }
}