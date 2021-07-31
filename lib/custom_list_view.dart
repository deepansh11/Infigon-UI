import 'package:flutter/material.dart';

import 'custom_container.dart';
import 'custom_text.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) => CustomContainer(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          width: 150,
          left: 8,
          right: 8,
          top: 5,
          color: Colors.white,
          child: Column(
            children: [
              ClipRRect(
                child:
                    Image(image: NetworkImage('https://picsum.photos/300/200')),
                borderRadius: BorderRadius.circular(8),
              ),
              CustomText(
                  text: 'Lorem Ipsum dolor sit \n amet, consect ereut',
                  isShadow: false,
                  size: 10,
                  customColor: Colors.black,
                  fontWeight: FontWeight.normal),
            ],
          ),
        ),
      ),
    );
  }
}
