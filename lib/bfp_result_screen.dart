// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, camel_case_types, must_be_immutable
import 'dart:math';
import 'package:flutter/material.dart';
import 'constants.dart';

class bfpResults extends StatelessWidget {
  String gender;
  var height;
  var weight;
  var age;
  bfpResults(this.gender, this.height, this.weight, this.age, {super.key});

  String test_value() {
    double bmi = weight / (pow(height, 2));
    double bfp;
    // for boys
    if (age < 18 && gender == "male") {
      bfp = 1.51 * bmi - 0.7 * age - 2.2;
      return bfp.toStringAsFixed(2);
    }
    // for girls
    else if (age < 18 && gender == "female") {
      bfp = 1.51 * bmi - 0.7 * age + 1.4;
      return bfp.toStringAsFixed(2);
    }
    // for adult males
    else if (age >= 18 && gender == "male") {
      bfp = 1.2 * bmi + 0.23 * age - 16.2;
      return bfp.toStringAsFixed(2);
    }
    //for adult females
    else {
      bfp = 1.2 * bmi + 0.23 * age - 5.4;
      return bfp.toStringAsFixed(2);
    }
  }

  final Map<String, Map<int, List<double>>> bfpRanges = {
    'male': {
      18: [5, 13, 17, 25, 31],
      0: [8, 14, 20, 27, 35],
    },
    'female': {
      18: [13, 21, 24, 31, 39],
      0: [17, 18, 25, 31, 38],
    },
  };

  //Functions for BODY Fat Percentage
  String categorizeBfp() {
    double bfp = double.parse(test_value());
    final Map<int, List<double>> genderRanges = bfpRanges[gender]!;
    final List<double> ranges =
        age >= 18 ? genderRanges[18]! : genderRanges[0]!;

    if (bfp < ranges[0]) {
      return "extremelyLean";
    } else if (bfp >= ranges[0] && bfp < ranges[1]) {
      return "lean";
    } else if (bfp >= ranges[1] && bfp < ranges[2]) {
      return "normal";
    } else if (bfp >= ranges[2] && bfp < ranges[3]) {
      return "overweight";
    } else if (bfp >= ranges[3] && bfp < ranges[4]) {
      return "obese";
    } else {
      return "extremelyObese";
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
                    Text(Tests_Constants.BFP_HashMap[categorizeBfp()]![0],
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Font2",
                            color: Tests_Constants
                                .BFP_HashMap[categorizeBfp()]![1]),
                        textAlign: TextAlign.center),
                    Text(test_value(),
                        style: const TextStyle(
                            fontSize: 25,
                            fontFamily: "Font2",
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.center),
                    RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                              text:
                                  "${Tests_Constants.BFP_HashMap[categorizeBfp()]![2]}\n",
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Font2",
                                  color: Colors.blueGrey)),
                          TextSpan(
                              text:
                                  Tests_Constants.BFP_HashMap[categorizeBfp()]![
                                      (gender == 'male')
                                          ? (age < 18 ? 3 : 5)
                                          : (age < 18 ? 4 : 6)],
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
                          "${Tests_Constants.BFP_HashMap[categorizeBfp()]![7]} ${(height * height * 18.5).toStringAsFixed(1)} to ${(height * height * 25).toStringAsFixed(1)} Kgs.",
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Font2",
                              color: Colors.white),
                          textAlign: TextAlign.justify),
                      Container(height: 2),
                      Text(
                          Tests_Constants
                              .BFP_HashMap[categorizeBfp()]![8],
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Font2",
                              color: Colors.white),
                          textAlign: TextAlign.justify),
                      Container(height: 2),
                      Text(
                          Tests_Constants
                              .BFP_HashMap[categorizeBfp()]![9],
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
