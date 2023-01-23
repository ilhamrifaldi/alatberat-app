import 'package:alatberat/theme.dart';
import 'package:flutter/material.dart';

class LogbookFormPage extends StatelessWidget {
  const LogbookFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    //Nama Operator
    Widget name() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nama Operator',
              style:
                  primaryTextStyle.copyWith(fontSize: 15, fontWeight: semiBold),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'Nama Operator',
                      focusColor: primaryColor,
                      hintStyle: secondaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: regular)),
                ),
              ),
            )
          ],
        ),
      );
    }

    //Tanggal
    Widget date() {
      return Container(
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tanggal',
              style:
                  primaryTextStyle.copyWith(fontSize: 15, fontWeight: semiBold),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'Masukkan Tanggal',
                      focusColor: primaryColor,
                      hintStyle: secondaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: regular)),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 50,
                    width: 170,
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Jam Mulai',
                            hintStyle: secondaryTextStyle.copyWith(
                                fontSize: 14, fontWeight: regular),
                            suffixIcon: Align(
                              widthFactor: 1.0,
                              heightFactor: 1.0,
                              child: ImageIcon(
                                  AssetImage('assets/icon_clock.png')),
                            )),
                      ),
                    )),
                Container(
                    height: 50,
                    width: 170,
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Jam Stop',
                            hintStyle: secondaryTextStyle.copyWith(
                                fontSize: 14, fontWeight: regular),
                            suffixIcon: Align(
                              widthFactor: 1.0,
                              heightFactor: 1.0,
                              child: ImageIcon(
                                  AssetImage('assets/icon_clock.png')),
                            )),
                      ),
                    ))
              ],
            )
          ],
        ),
      );
    }

    //Nama Alat
    Widget unit() {
      return Container(
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nama Alat',
              style:
                  primaryTextStyle.copyWith(fontSize: 15, fontWeight: semiBold),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'Alat Berat',
                      focusColor: primaryColor,
                      hintStyle: secondaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: regular)),
                ),
              ),
            )
          ],
        ),
      );
    }

    // Running Hour
    Widget runningHour() {
      return Container(
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Running Hour',
              style:
                  primaryTextStyle.copyWith(fontSize: 15, fontWeight: semiBold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 50,
                    width: 170,
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'RH Start',
                          hintStyle: secondaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: regular),
                        ),
                      ),
                    )),
                Container(
                    height: 50,
                    width: 170,
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'RH Stop',
                          hintStyle: secondaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: regular),
                        ),
                      ),
                    ))
              ],
            )
          ],
        ),
      );
    }

    //Detail Pekerjaan
    Widget description() {
      return Container(
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Detail Pekerjaan',
              style:
                  primaryTextStyle.copyWith(fontSize: 15, fontWeight: semiBold),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: 115,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'Masukkan Deskripsi Pekerjaan',
                      focusColor: primaryColor,
                      hintStyle: secondaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: regular)),
                ),
              ),
            )
          ],
        ),
      );
    }

    //Button
    Widget button() {
      return Container(
        margin: EdgeInsets.only(top: 35, left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            //Cancel
            Container(
              decoration:
                  BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                    ),
              height: 50,
              width: 150,
              child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 6,
                    ),
                  ),
                  child: Text(
                    'Cancel',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,),
                  )),
            ),

            //Submit
            Container(
              decoration:
                  BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                    color: primaryColor),
              height: 50,
              width: 150,
              child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 6,
                    ),
                  ),
                  child: Text(
                    'Submit',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                        color: Color(0xffffffff)),
                  )),
            )
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text(
          'Logbook',
          style: primaryTextStyle.copyWith(
              fontSize: 20, fontWeight: bold, color: Color(0xffffffff)),
        ),
        elevation: 0,
      ),
      body: ListView(children: [
        name(),
        date(),
        unit(),
        runningHour(),
        description(),
        button(),
      ]),
    );
  }
}
