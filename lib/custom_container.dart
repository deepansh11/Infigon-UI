import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  final Color color;
  final double left;
  final double right;
  final double top;
  final EdgeInsetsGeometry? margin;

  const CustomContainer(
      {Key? key,
      required this.child,
      this.left = 20,
      this.right = 5,
      this.top = 0,
      this.margin,
      this.color = Colors.cyan,
      this.width = double.infinity,
      this.height = 120})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: EdgeInsets.only(left: left, right: right, top: top),
      width: width,
      height: height,
      child: child,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 5),
            blurRadius: 2,
            color: Colors.grey.withOpacity(0.8),
          )
        ],
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
