import 'package:alatberat/controller/c_user.dart';
import 'package:alatberat/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final cUser = Get.put(CUser());
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Logbook Alat Berat',
              style: primaryTextStyle.copyWith(
                  fontSize: 24, fontWeight: bold, color: primaryColor),
            ),
            Text(
              'PT Barokah Galangan Perkasa',
              style: primaryTextStyle.copyWith(
                  fontSize: 16, fontWeight: bold, color: primaryColor),
            )
          ],
        ),
      );
    }

    Widget profileDisplay() {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx( () {
                      return Text(cUser.data.name??'',
                        style: primaryTextStyle.copyWith(
                            fontSize: 20, fontWeight: bold),
                      );
                    }
                  ),
                  Text(
                    'Management',
                    style: primaryTextStyle.copyWith(
                        fontSize: 14, fontWeight: regular),
                  )
                ],
              ),
            ),
            ClipOval(
              child: Image.asset('assets/icon_profile.png', width: 50,),
            )
          ],
        ),
      );
    }

    Widget listMenu() {
      return Container(
        margin: EdgeInsets.only(top: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Menu',
              style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                //Logbook
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 120,
                  width: 87,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: primaryColor),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/icon_logbook.png'))),
                      ),
                      Text(
                        'Logbook',
                        style: secondaryTextStyle.copyWith(
                            color: Color(0xffffffff),
                            fontSize: 12,),
                      )
                    ],
                  ),
                ),

                //Running Hour
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 120,
                  width: 87,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: primaryColor),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/icon_runninghour.png'))),
                      ),
                      Text(textAlign: TextAlign.center,
                        'Running Hour',
                        style: secondaryTextStyle.copyWith(
                            color: Color(0xffffffff),
                            fontSize: 12,),
                      )
                    ],
                  ),
                ),

                //Maintenance
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 120,
                  width: 87,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: primaryColor),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/icon_maintenance.png'))),
                      ),
                      Text(textAlign: TextAlign.center,
                        'Maintenance',
                        style: secondaryTextStyle.copyWith(
                            color: Color(0xffffffff),
                            fontSize: 12,),
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                //Fuel Log
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 120,
                  width: 87,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: primaryColor),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/icon_fuel.png'))),
                      ),
                      Text(
                        'Fuel Log',
                        style: secondaryTextStyle.copyWith(
                            color: Color(0xffffffff),
                            fontSize: 12,),
                      )
                    ],
                  ),
                ),

                //History Logbook
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 120,
                  width: 87,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: primaryColor),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/icon_history.png'))),
                      ),
                      Text(textAlign: TextAlign.center,
                        'History Logbook',
                        style: secondaryTextStyle.copyWith(
                            color: Color(0xffffffff),
                            fontSize: 12,),
                      )
                    ],
                  ),
                ),

                //Downtime
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 120,
                  width: 87,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: primaryColor),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/icon_downtime.png'))),
                      ),
                      Text(textAlign: TextAlign.center,
                        'Downtime',
                        style: secondaryTextStyle.copyWith(
                            color: Color(0xffffffff),
                            fontSize: 12,),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 30, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            SizedBox(
              height: 21.0,
            ),
            profileDisplay(),
            listMenu(),
          ],
        ),
      ),
    );
  }
}
