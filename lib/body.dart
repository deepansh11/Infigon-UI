import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:internship_app/custom_text.dart';

import 'custom_container.dart';
import 'custom_list_view.dart';
import 'custom_row.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        children: <Widget>[
          CustomContainer(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomText(text: 'ONLINE TUTORING \n SESSIONS'),
                    SizedBox(
                      height: 5,
                    ),
                    CustomText(
                      fontFamily: 'Style Script',
                      text: 'Learning at the comfort \n of your home.',
                      size: 15,
                      isShadow: false,
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        NetworkImage('https://picsum.photos/200/300'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 150, right: 150),
            child: StepProgressIndicator(
              totalSteps: 4,
              currentStep: 1,
              selectedSize: 4,
              unselectedSize: 2,
              selectedColor: Colors.blueAccent,
            ),
          ),
          SizedBox(height: 20),
          CustomContainer(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomText(
                        text: 'My Admissions',
                        isShadow: false,
                        customColor: Colors.blue,
                      ),
                      SizedBox(height: 15),
                      CustomText(
                        text:
                            'Lorem Ipsum is simply dummy text of the \n printing and typesetting industry. \n Lorem Ipsum has been the industry\'s standard dummy \n text ever since the 1500s',
                        isShadow: false,
                        fontWeight: FontWeight.normal,
                        customColor: Colors.black,
                        size: 10,
                      ),
                    ]),
              ],
            ),
          ),
          SizedBox(height: 20),
          CustomRow(),
          SizedBox(height: 20),
          CustomRow(),
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Blogs For You',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.blue)),
              Text(
                'View More',
                textAlign: TextAlign.end,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.blue),
              ),
            ],
          ),
          SizedBox(height: 20),
          CustomListView(),
          SizedBox(height: 30)
        ],
      ),
    );
  }
}
