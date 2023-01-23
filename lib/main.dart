import 'package:alatberat/config/session.dart';
import 'package:alatberat/pages/home/home_page.dart';
import 'package:alatberat/pages/sign_in_page.dart';
import 'package:alatberat/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'model/user.dart';
import 'theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting('id_ID').then((value) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      // Ini Kalau Pakai Splash Screen
      // home: SplashPage()

      // Ini kalau pakai session
      home: FutureBuilder(
        future: Session.getUser(),
        builder: (context, AsyncSnapshot<User> snapshot) {
          if (snapshot.data != null && snapshot.data!.idUser != null) {
            return const HomePage();
          }
          return const SignInPage();
        },
      ),
    );
  }
}
