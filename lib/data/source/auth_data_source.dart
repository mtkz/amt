import 'package:amt/data/utils/http/http.dart';
import 'package:flutter/cupertino.dart';

abstract class IAuthDataSource {
  Future<void> login();
}

class AuthDataSource extends IAuthDataSource {
  @override
  Future<void> login() async {
    final response = await dio.post('pre-login');
    debugPrint(response.toString());
  }
}
