import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:member_profile/theme.dart';

class MemberProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Image.asset('assets/images/picture.png', height: 100, width: 100,),
            SizedBox(height: 40,),
            Text(
                'Mulia Firmansyah',
                style: TextStyle(
                  fontSize: 20,
                  color: whiteColor,
                  fontWeight: FontWeight.w600
                )
            )

          ],
        ),
      )
    );
  }
}