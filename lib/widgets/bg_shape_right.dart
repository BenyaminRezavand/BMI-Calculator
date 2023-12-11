import 'package:bmi/constans/constans.dart';
import 'package:flutter/material.dart';

class right extends StatelessWidget {
  final double width;
  const right({super.key, this.width = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'َشاخص منفی',
          style: TextStyle(color: red),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          width: width,
          height: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
            ),
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
