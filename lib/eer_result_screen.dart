// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'constants.dart';

class eerResults extends StatelessWidget {
  String gender;
  var height;
  var weight;
  var age;
  String activity_level;
  eerResults(
      this.gender, this.height, this.weight, this.age, this.activity_level,
      {super.key});

  String eer_value() {
    double ans;
    double activity_value = Tests_Constants.activity_values[activity_level]!;
    if (gender == "male" && age <= 18) {
      ans = 88.5 -
          61.9 * age +
          activity_value * (26.7 * weight + 903 * height) +
          25;
      return ans.toStringAsFixed(0);
    } else if (gender == "male" && age > 18) {
      ans =
          662 - 9.53 * age + activity_value * (15.91 * weight + 539.6 * height);
      return ans.toStringAsFixed(0);
    } else if (gender == "female" && age <= 18) {
      ans =
          135.3 - 30.8 * age + activity_value * (10 * weight + 539.6 * height);
      return ans.toStringAsFixed(0);
    } else {
      ans = 354 - 6.91 * age + activity_value * (9.36 * weight + 726 * height);
      return ans.toStringAsFixed(0);
    }
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
                    Text(
                        "Estimated Energy Requirement (EER) :\n${eer_value()} Kilocalories per day",
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Font2",
                            color: Colors.greenAccent),
                        textAlign: TextAlign.center)
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
                          "The Estimated Energy Requirement represents the estimated number of calories you need to consume daily to maintain your weight.",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Font2",
                              color: Colors.white),
                          textAlign: TextAlign.justify),
                      Container(height: 2),
                      const Text(
                          "It considers the calories required for daily activities, exercise, and normal bodily functions.",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Font2",
                              color: Colors.white),
                          textAlign: TextAlign.justify),
                      Container(height: 2),
                      const Text(
                          "To lose weight, you may need to create a calorie deficit by consuming fewer calories than your EER.",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Font2",
                              color: Colors.white),
                          textAlign: TextAlign.justify),
                      Container(height: 2),
                      const Text(
                          "For weight maintenance, aim to consume calories that align with your EER.",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Font2",
                              color: Colors.white),
                          textAlign: TextAlign.justify),
                      Container(height: 2),
                      const Text(
                          "To gain weight, you may need to consume more calories than your EER.",
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
