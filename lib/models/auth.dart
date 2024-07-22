import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  static const _url =
      'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyBVUUa4huASjOrCw45bpGK0quH791e6NPw';

  Future<void> _authenticate(
      String email, String password, String urlFragment) async {
    final url =
        'https://identitytoolkit.googleapis.com/v1/accounts:$urlFragment?key=AIzaSyBVUUa4huASjOrCw45bpGK0quH791e6NPw';

    final response = await http.post(
      Uri.parse(url),
      body: jsonEncode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),
    );
  }

  Future<void> signup(String email, String password) async {
    _authenticate(email, password, 'signUp');
  }
  
  Future<void> login(String email, String password) async {
    _authenticate(email, password, 'signInWithPassword');
  }
}
