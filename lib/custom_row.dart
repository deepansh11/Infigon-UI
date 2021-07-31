import 'package:flutter/material.dart';

import 'custom_container.dart';
import 'custom_text.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomContainer(
          left: 0,
          right: 0,
          color: Colors.white,
          width: 150,
          height: 50,
          child: Stack(clipBehavior: Clip.none, children: [
            Center(
              child: CustomText(
                size: 15,
                text: 'My Coaching',
                isShadow: false,
                customColor: Colors.blue,
              ),
            ),
            Positioned(
                top: -5,
                right: -10,
                child: Text(
                  'Coming Soon',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      backgroundColor: Colors.red),
                ))
          ]),
        ),
        CustomContainer(
          left: 0,
          right: 0,
          color: Colors.white,
          width: 150,
          height: 50,
          child: Stack(clipBehavior: Clip.none, children: [
            Center(
              child: CustomText(
                size: 15,
                text: 'Degree Selector',
                isShadow: false,
                customColor: Colors.blue,
              ),
            ),
            Positioned(
                top: -5,
                right: -10,
                child: Text(
                  'Coming Soon',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      backgroundColor: Colors.red),
                ))
          ]),
        ),
      ],
    );
  }
}
