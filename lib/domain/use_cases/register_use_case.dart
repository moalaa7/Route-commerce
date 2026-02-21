import 'package:route_commerce/domain/entities/request/register_request.dart';
import 'package:route_commerce/domain/entities/response/auth_response.dart';
import 'package:route_commerce/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterUseCase{
  AuthRepository authRepository ;
  RegisterUseCase({required this.authRepository});

 Future<AuthResponse> invoke(RegisterRequest registerRequest){
    return authRepository.register(registerRequest);
  }
}