import 'package:amt/data/source/auth_data_source.dart';

class AuthRepository extends IAuthDataSource {
  AuthDataSource datasource = AuthDataSource();

  @override
  Future<void> login() => datasource.login();
}
