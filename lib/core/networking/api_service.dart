import 'package:dio/dio.dart';
import 'package:pet_finder/core/networking/api_constants.dart';

import 'package:retrofit/http.dart';
part 'api_service.g.dart';

// rerofit anotation
@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // @POST(ApiConstants.login)
  // Future<LoginResponse> login(
  //   @Body() LoginRequestBody loginRequestBody,
  //   // @Body() Map<String, dynamic> body,
  // );
  // @POST(ApiConstants.signup)
  // Future<SignupResponse> signup(
  //   @Body() SignupRequestBody signupRequestBody,
  //   // @Body() Map<String, dynamic> body,
  // );
}
