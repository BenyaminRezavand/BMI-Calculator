import 'package:bmi/constans/constans.dart';
import 'package:flutter/material.dart';

class Left extends StatelessWidget {
  final double width;
  const Left({super.key, this.width = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: width,
          height: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40),
            ),
            color: green,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'شاخص مثبت',
          style: TextStyle(color: green),
        ),
      ],
    );
  }
}
