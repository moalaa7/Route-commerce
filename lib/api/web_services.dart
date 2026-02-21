import 'package:dio/dio.dart';
import 'package:route_commerce/api/api_endpoints.dart';
import 'package:route_commerce/api/model/response/auth_response_dto.dart';
import 'package:retrofit/retrofit.dart';

import 'model/request/login_request_dto.dart';
import 'model/request/register_request_dto.dart';
part 'web_services.g.dart';

@RestApi()
abstract class WebServices {
  factory WebServices(Dio dio, {String? baseUrl}) = _WebServices;

  @POST(ApiEndPoints.loginApi)
  Future<AuthResponseDto> login(@Body() LoginRequestDto loginRequest);

  @POST(ApiEndPoints.registerApi)
  Future<AuthResponseDto> register(@Body() RegisterRequestDto registerRequest);

}
