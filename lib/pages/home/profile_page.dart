import 'package:alatberat/config/session.dart';
import 'package:alatberat/pages/edit_profile_page.dart';
import 'package:alatberat/pages/sign_in_page.dart';
import 'package:alatberat/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    //Header
    Widget header() {
      return AppBar(
        backgroundColor: primaryColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
            child: Container(
          padding: EdgeInsets.all(30),
          child: Row(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/icon_profile.png',
                  width: 64,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Halo, Ilham',
                    style: primaryTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: bold,
                        color: Color(0xffffffff)),
                  ),
                  Text(
                    '@IlhamRifaldi',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: regular, color: whiteColor),
                  ),
                ],
              )),
              GestureDetector(
                onTap: () { 
                  Session.deleteUser();
                  Get.off(() => SignInPage());},
                child: Image.asset(
                  'assets/icon_logout.png',
                  width: 20,
                ),
              )
            ],
          ),
        )),
      );
    }

    //Menu Item
    Widget menuItem(String text) {
      return Container(
        margin: EdgeInsets.only(top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: primaryTextStyle.copyWith(fontSize: 13),
            ),
            Icon(
              Icons.chevron_right,
              color: primaryColor,
            )
          ],
        ),
      );
    }

    //Content
    Widget content() {
      return Expanded(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Account',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            GestureDetector(
              onTap: () => Get.to(editProfilePage()),
              child: menuItem('Edit Profile')),
            menuItem('Help'),
            SizedBox(
              height: 30,
            ),
            Text(
              'General',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            menuItem('Privacy & Policy'),
            menuItem('Term of Service'),
            menuItem('Rate App'),
          ],
        ),
      ));
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
