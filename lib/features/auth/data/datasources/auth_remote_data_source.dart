import 'package:flutter_application_1/core/error/exceptions.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthRemoteDataSource {
  Future<String> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name
  });
  Future<String> logInWithEmailAndPassword({
    required String email,
    required String password,
  });
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final SupabaseClient supabaseClient;
  AuthRemoteDataSourceImpl(this.supabaseClient);
  @override
  Future<String> logInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    // Implement the logic to log in with email and password
    // For example, you can use Firebase Authentication or any other service
    // Return the user ID or token upon successful login
    return "user_id"; // Replace with actual implementation
  }

  @override
  Future<String> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final response = await supabaseClient.auth.signUp(
        email: email, 
        password: password,
        data: {'name': name},
      );
      if (response.user == null) {
        throw const ServerException("Failed to sign up. The user is null.");
      }
      return response.user!.id;
    }catch (e) {
      throw ServerException(e.toString());
    }
  }
}