// ignore_for_file: camel_case_types

import 'package:fit_kit/eer_result_screen.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class eerScreen extends StatefulWidget {
  eerScreen({required this.title});
  final String title;

  @override
  State<eerScreen> createState() => _eerScreenState();
}

class _eerScreenState extends State<eerScreen> {
  bool male = true;
  Color maleColor = Colors.white;
  bool female = false;
  Color femaleColor = Colors.white30;

  int heightValue = 161;
  int weightValue = 50;
  int ageValue = 20;

  List<DropdownMenuItem<String>> get dropdownactivities {
    List<DropdownMenuItem<String>> activities = [
      const DropdownMenuItem(
          value: "Sedentary (little/no exercise)",
          child: Text("Sedentary (little/no exercise)",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontFamily: "Font2",
                  fontSize: 10))),
      const DropdownMenuItem(
          value: "Light (exercise 1-3 days/wk)",
          child: Text("Light (exercise 1-3 days/wk)",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontFamily: "Font2",
                  fontSize: 10))),
      const DropdownMenuItem(
          value: "Moderate (exercise 3-5 days/wk)",
          child: Text("Moderate (exercise 3-5 days/wk)",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontFamily: "Font2",
                  fontSize: 10))),
      const DropdownMenuItem(
          value: "Heavy (exercise 6-7 days/wk)",
          child: Text("Heavy (exercise 6-7 days/wk)",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontFamily: "Font2",
                  fontSize: 10))),
      const DropdownMenuItem(
          value: "Physical job & intense exercise",
          child: Text("Physical job & intense exercise",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontFamily: "Font2",
                  fontSize: 10))),
    ];
    return activities;
  }

  String activity = "Sedentary (little/no exercise)";

  void selectGender(choice) {
    if (choice == "female") {
      male = false;
      female = true;
      maleColor = Colors.white30;
      femaleColor = Colors.white;
      setState(() {});
    } else {
      male = true;
      female = false;
      maleColor = Colors.white;
      femaleColor = Colors.white30;
      setState(() {});
    }
  }

  String gender() {
    if (male == true) {
      return "male";
    } else {
      return "female";
    }
  }

  @override
  Widget build(BuildContext context) {
    double genderCardWidth = (MediaQuery.of(context).size.width - 37.5) / 2;
    return Scaffold(
        appBar: AppBar(
          title: const Text("EER  CALCULATOR",
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
        body: Column(
          children: [
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 3.75, bottom: 15),
                              child: Material(
                                color: Palette.themeColor[150],
                                borderRadius: BorderRadius.circular(30),
                                child: InkWell(
                                  onTap: () {
                                    selectGender("male");
                                  },
                                  child: Container(
                                      width: genderCardWidth,
                                      //height: genderCardWidth + 12,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.transparent),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.male,
                                                size: genderCardWidth - 30,
                                                color: maleColor),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 10),
                                              child: Text("MALE",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontSize: 15,
                                                      fontFamily: "Font2",
                                                      color: maleColor)),
                                            )
                                          ])),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 3.75, bottom: 15),
                              child: Material(
                                color: Palette.themeColor[150],
                                borderRadius: BorderRadius.circular(30),
                                child: InkWell(
                                  onTap: () {
                                    selectGender("female");
                                  },
                                  child: Container(
                                      width: genderCardWidth,
                                      //height: genderCardWidth + 12,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.transparent),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.female,
                                              size: genderCardWidth - 30,
                                              color: femaleColor),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Text("FEMALE",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 15,
                                                    fontFamily: "Font2",
                                                    color: femaleColor)),
                                          )
                                        ],
                                      )),
                                ),
                              ),
                            ),
                          ]),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Palette.themeColor[100]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text("HEIGHT",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 15,
                                        fontFamily: "Font2",
                                        color: Colors.white70)),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if (heightValue > 50) {
                                        heightValue--;
                                      }
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Palette.themeColor[150],
                                      shape: const CircleBorder(),
                                      padding: const EdgeInsets.all(10)),
                                  child: const Icon(Icons.remove, size: 20),
                                ),
                                Text(
                                  "$heightValue",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      fontFamily: "Font2",
                                      color: Colors.white),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if (heightValue < 270) {
                                        heightValue++;
                                      }
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Palette.themeColor[150],
                                      shape: const CircleBorder(),
                                      padding: const EdgeInsets.all(10)),
                                  child: const Icon(Icons.add, size: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Palette.themeColor[100]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text("ACTIVITY\nLEVEL",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15,
                                      fontFamily: "Font2",
                                      color: Colors.white70)),
                              DropdownButton<String>(
                                  value: activity,
                                  style: const TextStyle(color: Colors.white),
                                  dropdownColor: Palette.themeColor[50],
                                  underline:
                                      Container(height: 1, color: Colors.white),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      activity = newValue!;
                                    });
                                  },
                                  items: dropdownactivities)
                            ],
                          ),
                        ),
                      )),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 3.75),
                              child: Container(
                                padding: const EdgeInsets.only(top: 16, bottom: 16),
                                width: genderCardWidth,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Palette.themeColor[100]),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text("WEIGHT",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 15,
                                            fontFamily: "Font2",
                                            color: Colors.white70)),
                                    Text("$weightValue",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 40,
                                            fontFamily: "Font2",
                                            color: Colors.white)),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              if (weightValue > 15) {
                                                weightValue--;
                                              }
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Palette.themeColor[150],
                                              shape: const CircleBorder(),
                                              padding:
                                                  const EdgeInsets.all(12)),
                                          child: const Icon(Icons.remove,
                                              size: 30),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              if (weightValue < 400) {
                                                weightValue++;
                                              }
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Palette.themeColor[150],
                                              shape: const CircleBorder(),
                                              padding:
                                                  const EdgeInsets.all(12)),
                                          child:
                                              const Icon(Icons.add, size: 30),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 3.75),
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 16, bottom: 16),
                                  width: genderCardWidth,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Palette.themeColor[100]),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text("AGE",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 15,
                                                fontFamily: "Font2",
                                                color: Colors.white70)),
                                        Text("$ageValue",
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 40,
                                                fontFamily: "Font2",
                                                color: Colors.white)),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                setState(() {
                                                  if (ageValue > 2) {
                                                    ageValue--;
                                                  }
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Palette.themeColor[150],
                                                  shape: const CircleBorder(),
                                                  padding:
                                                      const EdgeInsets.all(12)),
                                              child: const Icon(Icons.remove,
                                                  size: 30),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {
                                                setState(() {
                                                  if (ageValue < 120) {
                                                    ageValue++;
                                                  }
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Palette.themeColor[150],
                                                  shape: const CircleBorder(),
                                                  padding:
                                                      const EdgeInsets.all(12)),
                                              child: const Icon(Icons.add,
                                                  size: 30),
                                            ),
                                          ],
                                        ),
                                      ]),
                                ))
                          ])
                    ],
                  )),
            ),
            SizedBox(
              height: 55,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => eerResults(
                                gender(),
                                heightValue / 100,
                                weightValue,
                                ageValue,
                                activity)));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Palette.buttonColor,
                  ),
                  child: const Text("CALCULATE",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                          fontFamily: "Font2"))),
            )
          ],
        ));
  }
}
