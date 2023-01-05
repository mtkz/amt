import 'package:amt/data/model/auth_info.dart';
import 'package:amt/data/source/auth_data_source.dart';

class AuthRepository extends IAuthDataSource {
  AuthDataSource datasource = AuthDataSource();

  @override
  Future<AuthInfo> login(String identifier, String password) =>
      datasource.login(identifier, password);
}
