// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, camel_case_types, must_be_immutable

import 'dart:math';
import 'package:flutter/material.dart';
import 'constants.dart';

class bmiResults extends StatelessWidget {
  String gender;
  var height;
  var weight;
  var age;
  bmiResults(this.gender, this.height, this.weight, this.age, {super.key});

  String test_value() {
    double ans = weight / (pow(height, 2));
    return ans.toStringAsFixed(2);
  }

  //Functions for BODY MASS INDEX
  String other_result_values() {
    double ans = weight / (pow(height, 2));
    if (ans < 18.5) {
      return "underweight";
    } else if (ans >= 18.5 && ans < 25) {
      return "normal";
    } else if (ans >= 25 && ans < 30) {
      return "overweight";
    } else {
      return "obesity";
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
                padding: const EdgeInsets.only(top: 12, bottom: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(Tests_Constants.BMI_HashMap[other_result_values()]![0],
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Font2",
                            color: Tests_Constants
                                .BMI_HashMap[other_result_values()]![1]),
                        textAlign: TextAlign.center),
                    Text(test_value(),
                        style: const TextStyle(
                            fontSize: 38,
                            fontFamily: "Font2",
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.center),
                    RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                              text:
                                  "${Tests_Constants.BMI_HashMap[other_result_values()]![2]}\n",
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Font2",
                                  color: Colors.blueGrey)),
                          TextSpan(
                              text: Tests_Constants
                                  .BMI_HashMap[other_result_values()]![3],
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Font2",
                                  color: Colors.white))
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
                      Text(
                          "${Tests_Constants.BMI_HashMap[other_result_values()]![4]} ${(height * height * 18.5).toStringAsFixed(1)} to ${(height * height * 25).toStringAsFixed(1)} Kgs.",
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Font2",
                              color: Colors.white),
                          textAlign: TextAlign.justify),
                      Container(height: 5),
                      Text(Tests_Constants.BMI_HashMap[other_result_values()]![5],
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Font2",
                              color: Colors.white),
                          textAlign: TextAlign.justify),
                      Container(height: 5),
                      Text(Tests_Constants.BMI_HashMap[other_result_values()]![6],
                          style: const TextStyle(
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
