import 'package:alatberat/config/api.dart';
import 'package:alatberat/config/app_request.dart';
import 'package:alatberat/config/session.dart';
import 'package:alatberat/model/user.dart';
import 'package:d_info/d_info.dart';

class SourceUser {
  static Future<bool> login(String email, String password) async {
    String url = '${Api.user}/login.php';
    Map? responseBody = await AppRequest.post(url, {
      'email' : email,
      'password' : password,
    });

    if (responseBody == null) return false;

    if (responseBody['success']) {
      var mapUser = responseBody['data'];
      Session.saveUser(User.fromJson(mapUser));
    }

    return responseBody['success'];
  }

  static Future<bool> register(String fullname, String username, String email, String password) async {
    String url = '${Api.user}/register.php';
    Map? responseBody = await AppRequest.post(url, {
      'full_name' : fullname,
      'username' : username,
      'email' : email,
      'password' : password,
      'created_at': DateTime.now().toIso8601String(),
      'updated_at': DateTime.now().toIso8601String(),
    });

    if (responseBody == null) return false;

    if (responseBody['success']) {
      var mapUser = responseBody['data'];
      Session.saveUser(User.fromJson(mapUser));
      DInfo.dialogSuccess('Register Success');
      DInfo.closeDialog();
    } else {
      if (responseBody['message'] == 'email') {
        DInfo.dialogError('Email Have Been Registered');
      } else {
        DInfo.dialogError('Register Failed');
      }
      DInfo.closeDialog();
    }

    return responseBody['success'];
  }
}