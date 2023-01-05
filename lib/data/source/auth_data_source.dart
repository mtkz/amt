import 'package:amt/data/model/auth_info.dart';
import 'package:amt/data/utils/http/http.dart';
import 'package:flutter/cupertino.dart';

abstract class IAuthDataSource {
  Future<AuthInfo> login();
}

class AuthDataSource extends IAuthDataSource {
  @override
  Future<AuthInfo> login() async {
    final response = await dio.post('pre-login');
    debugPrint(response.toString());
    return AuthInfo(message: response.toString());
  }
}
