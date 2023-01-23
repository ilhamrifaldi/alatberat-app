import 'package:alatberat/pages/home/chat_page.dart';
import 'package:alatberat/pages/home/home_page.dart';
import 'package:alatberat/pages/home/logbook_form_page.dart';
import 'package:alatberat/pages/home/profile_page.dart';
import 'package:alatberat/pages/home/setting_page.dart';
import 'package:alatberat/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget addButton() {
      return FloatingActionButton(
        onPressed: () => Get.to(LogbookFormPage()),
        backgroundColor: primaryColor,
        child: Image.asset('assets/icon_runninghour.png'),
      );
    }

    Widget customBottomNav() {
      return BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/icon_home.png',
                width: 25,
                color: currentIndex == 0 ? primaryColor : tertiaryColor,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/icon_profile.png',
                width: 25,
                color: currentIndex == 1 ? primaryColor : tertiaryColor,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/icon_chat.png',
                width: 25,
                color: currentIndex == 2 ? primaryColor : tertiaryColor,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/icon_setting.png',
                width: 25,
                color: currentIndex == 3 ? primaryColor : tertiaryColor,
              ),
            ),
            label: '',
          ),
        ]),
      );
    }

    Widget body () {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ProfilePage();
          break;
        case 2:
          return ChatPage();
          break;
        case 3:
          return SettingPage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      body: body(),
      floatingActionButton: addButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
    );
  }
}
