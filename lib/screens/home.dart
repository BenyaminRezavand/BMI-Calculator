import 'package:bmi/constans/constans.dart';
import 'package:bmi/widgets/bg_shape_left.dart';
import 'package:bmi/widgets/bg_shape_right.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final weightcontroller = TextEditingController();
  final heightcontroller = TextEditingController();

  double bmiResult = 0;
  String textResult = '';
  double badwidth = 100;
  double goodwidth = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'خودتو حساب کن BMI',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: green,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  child: TextField(
                    controller: weightcontroller,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'وزن'),
                  ),
                ),
                Container(
                  width: 100,
                  child: TextField(
                    controller: heightcontroller,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'قد'),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                final weight = double.parse(weightcontroller.text);
                final height = double.parse(heightcontroller.text);

                setState(() {
                  bmiResult = weight / (height / 100 * height / 100);

                  if (bmiResult > 25) {
                    textResult = '!شما اضافه وزن دارید';
                    badwidth = 270;
                    goodwidth = 75;
                  } else if (bmiResult >= 18.5 && bmiResult <= 25) {
                    textResult = 'وزن شما عادی است';
                    badwidth = 50;
                    goodwidth = 270;
                  } else {
                    textResult = 'وزن شما از حالت عادی کمتر است';
                    badwidth = 10;
                    goodwidth = 10;
                  }
                });
              },
              child: Text(
                '!محاسبه کن',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              '${bmiResult.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.bold,
              ),
            ),
            Center(
              child: Text(
                '$textResult',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            right(
              width: badwidth,
            ),
            SizedBox(
              height: 10,
            ),
            Left(
              width: goodwidth,
            ),
          ],
        ),
      ),
    );
  }
}
