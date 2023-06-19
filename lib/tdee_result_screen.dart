// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'constants.dart';

class tdeeResults extends StatelessWidget {
  String gender;
  var height;
  var weight;
  var age;
  String activity_level;
  tdeeResults(
      this.gender, this.height, this.weight, this.age, this.activity_level,
      {super.key});

  String tdee_value() {
    double ans = (10 * weight) + (6.25 * height) - (5 * age);
    if (gender == "male" && (ans + 5) > 0) {
      return ((ans + 5) * Tests_Constants.activity_values[activity_level]!)
          .toStringAsFixed(0);
    } else if ((ans - 161) > 0) {
      return ((ans - 161) * Tests_Constants.activity_values[activity_level]!)
          .toStringAsFixed(0);
    }
    return "Error";
  }

  String bmr_value() {
    double ans = (10 * weight) + (6.25 * height) - (5 * age);
    if (gender == "male" && (ans + 5) > 0) {
      return (ans + 5).toStringAsFixed(0);
    } else if ((ans - 161) > 0) {
      return (ans - 161).toStringAsFixed(0);
    }
    return "Error";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RESULTS",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.white,
                fontFamily: "MainFont")),
        centerTitle: true,
        backgroundColor: Palette.themeColor,
        toolbarHeight: 70,
      ),
      backgroundColor: Palette.themeColor[50],
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 7.5),
              child: Container(
                decoration: BoxDecoration(
                    color: Palette.themeColor[150],
                    borderRadius: BorderRadius.circular(30)),
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(
                    top: 12, bottom: 12, left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                              text:
                                  "Basal Metabolic Rate (BMR) :\n ${bmr_value()} Calories per day\n",
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Font2",
                                  color: Colors.greenAccent)),
                          TextSpan(
                              text:
                                  "Total Daily Energy Expenditure (TDEE) : \n${tdee_value()} Calories per day",
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Font2",
                                  color: Colors.amberAccent))
                        ]))
                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 7.5),
                child: Container(
                  decoration: BoxDecoration(
                      color: Palette.themeColor[150],
                      borderRadius: BorderRadius.circular(30)),
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(
                      top: 12, bottom: 12, left: 15, right: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                          "The BMR indicates the number of calories required for your body's basic functions at rest.",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Font2",
                              color: Colors.white),
                          textAlign: TextAlign.justify),
                      Container(height: 5),
                      const Text(
                          "The TDEE represents an estimate of the total calories you need based on your activity level.",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Font2",
                              color: Colors.white),
                          textAlign: TextAlign.justify),
                      Container(height: 5),
                      const Text(
                          "To achieve weight loss, you may need to create a calorie deficit by consuming fewer calories than your TDEE.",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Font2",
                              color: Colors.white),
                          textAlign: TextAlign.justify),
                      Container(height: 5),
                      const Text(
                          "For weight maintenance, aim to consume calories that align with your TDEE.",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Font2",
                              color: Colors.white),
                          textAlign: TextAlign.justify),
                      Container(height: 5),
                      const Text(
                          "To gain weight, you may need to consume more calories than your TDEE.",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Font2",
                              color: Colors.white),
                          textAlign: TextAlign.justify),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
