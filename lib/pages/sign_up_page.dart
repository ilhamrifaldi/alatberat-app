import 'package:alatberat/pages/home/main_page.dart';
import 'package:alatberat/pages/sign_in_page.dart';
import 'package:alatberat/theme.dart';
import 'package:d_info/d_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../source/source_user.dart';
import 'home/home_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final controllerFullName = TextEditingController();
  final controllerUsername = TextEditingController();
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();
  final formKey = GlobalKey<FormState>();
  register() async {
    if (formKey.currentState!.validate()) {
      await SourceUser.register(
          controllerFullName.text,
          controllerUsername.text,
          controllerEmail.text,
          controllerPassword.text);
    }
  }

  Widget header() {
    return Container(
      margin: EdgeInsets.only(top: 81),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sign Up',
            style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: bold),
          ),
          Text(
            'Register',
            style:
                secondaryTextStyle.copyWith(fontSize: 14, fontWeight: regular),
          )
        ],
      ),
    );
  }

  Widget fullName() {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Full Name',
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
                    controller: controllerFullName,
                    validator: (value) =>
                        value == '' ? 'Harap Diisi, Tidak Boleh Kosong' : null,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    style: secondaryTextStyle,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Your Full Name',
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

  Widget username() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Username',
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
                    controller: controllerUsername,
                    validator: (value) =>
                        value == '' ? 'Harap Diisi, Tidak Boleh Kosong' : null,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    style: secondaryTextStyle,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Your Username',
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

  Widget emailAddress() {
    return Container(
      margin: EdgeInsets.only(top: 20),
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
                    validator: (value) =>
                        value == '' ? 'Harap Diisi, Tidak Boleh Kosong' : null,
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
                        value == '' ? 'Harap Diisi, Tidak Boleh Kosong' : null,
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

  Widget signUpButton() {
    return Container(
      margin: EdgeInsets.only(top: 60),
      height: 44,
      width: double.infinity,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4))),
          child: Text(
            'Sign Up',
            style: primaryTextStyle.copyWith(
                fontSize: 16, fontWeight: semiBold, color: Color(0xffffffff)),
          ),
          onPressed: () => register()),
    );
  }

  Widget footer() {
    return Container(
      margin: EdgeInsets.only(bottom: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Already have an account?',
            style: secondaryTextStyle.copyWith(fontSize: 14),
          ),
          GestureDetector(
            onTap: () => Get.to(() => SignInPage()),
            child: Text(
              ' Sign in here',
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              fullName(),
              username(),
              emailAddress(),
              passwordInput(),
              signUpButton(),
              Spacer(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
