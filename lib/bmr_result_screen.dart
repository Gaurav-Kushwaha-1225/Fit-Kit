// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'constants.dart';

class bmrResults extends StatelessWidget {
  String gender;
  var height;
  var weight;
  var age;
  bmrResults(this.gender, this.height, this.weight, this.age, {super.key});

  String test_value() {
    double ans = (10 * weight) + (6.25 * height) - (5 * age);
    if (gender == "male" && (ans + 5) > 0) {
      return (ans + 5).toStringAsFixed(0);
    } else if ((ans - 161) > 0) {
      return (ans - 161).toStringAsFixed(0);
    }
    return "Error";
  }

  // BMR is low/normal/high
  String bmr_status(){
    double ans = (10 * weight) + (6.25 * height) - (5 * age);
    if (gender == "male" && (ans + 5) > 0) {
      if ((ans + 5) < 1800) {
        return "low";
      } else if ((ans + 5) > 2400) {
        return "high";
      } else {
        return "normal";
      }
    } else if ((ans - 161) > 0) {
      if ((ans - 161) < 1400) {
        return "low";
      } else if ((ans - 161) > 1800) {
        return "high";
      } else {
        return "normal";
      }
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
                padding: const EdgeInsets.only(top: 12, bottom: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("Your BMR is:",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Font2",
                            color: Colors.greenAccent),
                        textAlign: TextAlign.center),
                    Text(test_value(),
                        style: const TextStyle(
                            fontSize: 35,
                            fontFamily: "Font2",
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.center),
                    RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                              text:
                                  "${Tests_Constants.BMR_HashMap[gender]![0]}\n",
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Font2",
                                  color: Colors.blueGrey)),
                          TextSpan(
                              text: Tests_Constants.BMR_HashMap[gender]![1],
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
                          "For your height a normal weight range would be from ${(height * height * 18.5/10000).toStringAsFixed(1)} to ${(height * height * 25/10000).toStringAsFixed(1)} Kgs.",
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Font2",
                              color: Colors.white),
                          textAlign: TextAlign.justify),
                      Container(height: 2),
                      Text("${Tests_Constants.BMR_HashMap[bmr_status()]![0]}",
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Font2",
                              color: Colors.white),
                          textAlign: TextAlign.justify),
                      Container(height: 2),
                      const Text(
                          "Having a proper BMR can help you maintain a healthy weight, improve your energy levels, and reduce your risk of chronic diseases.",
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
