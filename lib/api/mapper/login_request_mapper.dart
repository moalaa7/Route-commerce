import 'package:route_commerce/api/model/request/login_request_dto.dart';
import 'package:route_commerce/domain/entities/request/login_request.dart';

extension LoginRequestMapper on LoginRequest{
  LoginRequestDto toLoginRequestDto() {
    return LoginRequestDto(
        email: email,
        password: password
    );
  }
}