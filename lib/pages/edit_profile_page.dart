import 'package:alatberat/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class editProfilePage extends StatelessWidget {
  const editProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    //Name Input
    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: primaryTextStyle.copyWith(fontSize: 13),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                  hintText: 'Ilham Rifaldi',
                  hintStyle: primaryTextStyle,
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: primaryColor))),
            ),
          ],
        ),
      );
    }

    //Username Input
    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: primaryTextStyle.copyWith(fontSize: 13),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                  hintText: 'ilhamrifaldi',
                  hintStyle: primaryTextStyle,
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: primaryColor))),
            ),
          ],
        ),
      );
    }

    //Email Input
    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: primaryTextStyle.copyWith(fontSize: 13),
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                  hintText: 'ilhamrifaldi@gmail.com',
                  hintStyle: primaryTextStyle,
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: primaryColor))),
            ),
          ],
        ),
      );
    }



    //Content
    Widget content() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/icon_profile.png'))),
            ),
            nameInput(),
            usernameInput(),
            emailInput(),
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        centerTitle: true,
        leading:
            IconButton(onPressed: () => Get.back(), icon: Icon(Icons.close)),
        title: Text(
          'Edit Profile',
          style: primaryTextStyle.copyWith(fontWeight: bold, color: whiteColor),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.check))],
      ),
      body: content(),
    );
  }
}
