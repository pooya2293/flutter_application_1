import 'package:flutter_application_1/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, String>> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  });
  Future<Either<Failure, String>> logInWithEmailAndPassword({
    required String email,
    required String password,
  });
}
