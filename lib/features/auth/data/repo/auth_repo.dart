import 'package:cognme/core/data/Api/api_consumer.dart';
import 'package:cognme/core/errors/exceptions.dart';
import 'package:cognme/core/utils/app_constants.dart';
import 'package:cognme/features/auth/data/model/register.dart';
import 'package:dartz/dartz.dart';

class AuthRepo {
final ApiConsumer api;

  AuthRepo({required this.api});


  Future<Either<String,RegisterModel>>registerUser({
    required final String name,
  required final String email,
  required final String password,
  required final String confirmPassword,
  })async{
try {
  final response=await api.post(EndPoints.signUp,
  isFormData: true,
  data: {
    ApiKeys.name,
    ApiKeys.email,
    ApiKeys.password,
    ApiKeys.confirmPassword,
  }
  
  );
  

final registerModel=RegisterModel.fromJson(response);
return Right(registerModel);
} on ServerException catch (e) {
return Left(e.errorModel.errorMessage);}

  }
}


