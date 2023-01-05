import 'package:amt/data/model/auth_info.dart';
import 'package:amt/data/utils/http/http.dart';

abstract class IAuthDataSource {
  Future<AuthInfo> login(String identifier, String password);
}

class AuthDataSource extends IAuthDataSource {
  @override
  Future<AuthInfo> login(String identifier, String password) async {
    final response = await dio.post('pre-login',
        data: {'identifier': identifier, 'password': password});
    return AuthInfo(message: response.toString());
  }
}
