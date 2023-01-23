import 'package:alatberat/pages/home/home_page.dart';
import 'package:alatberat/pages/home/main_page.dart';
import 'package:alatberat/pages/sign_up_page.dart';
import 'package:alatberat/source/source_user.dart';
import 'package:alatberat/theme.dart';
import 'package:d_info/d_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();
  final formKey = GlobalKey<FormState>();
  login() async {
    if (formKey.currentState!.validate()) {
      bool success =
          await SourceUser.login(controllerEmail.text, controllerPassword.text);
      if (success) {
        DInfo.dialogSuccess('Login Success');
        DInfo.closeDialog(actionAfterClose: () {
          Get.off(const HomePage());
        });
      } else {
        DInfo.dialogError('Failed Login');
        DInfo.closeDialog();
      }
    }
  }

  Widget header() {
    return Container(
      margin: EdgeInsets.only(top: 81),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: bold),
          ),
          Text(
            'Sign in to continue',
            style:
                secondaryTextStyle.copyWith(fontSize: 14, fontWeight: regular),
          )
        ],
      ),
    );
  }

  Widget emailInput() {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email Address',
            style:
                primaryTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Center(
              child: Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    controller: controllerEmail,
                    validator: (value) => value == '' ? 'Required' : null,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    style: secondaryTextStyle,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Your Email Address',
                        hintStyle: secondaryTextStyle.copyWith(fontSize: 14)),
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget passwordInput() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Password',
            style:
                primaryTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Center(
              child: Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    controller: controllerPassword,
                    validator: (value) =>
                        value == '' ? 'No Password Provided' : null,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    obscureText: true,
                    style: secondaryTextStyle,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Your Password',
                        hintStyle: secondaryTextStyle.copyWith(fontSize: 14)),
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget signInButton() {
    return Container(
      margin: EdgeInsets.only(top: 60),
      height: 44,
      width: double.infinity,
      child: TextButton(
          child: Text(
            'Sign In',
            style: primaryTextStyle.copyWith(
                fontSize: 16, fontWeight: semiBold, color: Color(0xffffffff)),
          ),
          style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4))),
          onPressed: () => Get.off(HomePage())),
    );
  }

  Widget footer() {
    return Container(
      margin: EdgeInsets.only(bottom: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Don\'t have an account?',
            style: secondaryTextStyle.copyWith(fontSize: 14),
          ),
          GestureDetector(
            onTap: () => Get.to(() => SignUpPage()),
            child: Text(
              ' Sign up here',
              style: primaryTextStyle.copyWith(
                  fontWeight: bold, color: primaryColor),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                emailInput(),
                passwordInput(),
                signInButton(),
                Spacer(),
                footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
