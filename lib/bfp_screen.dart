// ignore_for_file: camel_case_types

import 'package:fit_kit/bfp_result_screen.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class bfpScreen extends StatefulWidget {
  bfpScreen({required this.title});
  final String title;

  @override
  State<bfpScreen> createState() => _bfpScreenState();
}

class _bfpScreenState extends State<bfpScreen> {
  bool male = true;
  Color maleColor = Colors.white;
  bool female = false;
  Color femaleColor = Colors.white30;

  double heightValue = 166;
  int weightValue = 50;
  int ageValue = 20;

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
          title: const Text("BFP  CALCULATOR",
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
                                color: Palette.themeColor[100],
                                borderRadius: BorderRadius.circular(30)),
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text("HEIGHT",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 15,
                                        fontFamily: "Font2",
                                        color: Colors.white70)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 7),
                                      child: Text("${heightValue.round()}",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 40,
                                              fontFamily: "Font2",
                                              color: Colors.white)),
                                    ),
                                    const Padding(
                                        padding:
                                            EdgeInsets.only(left: 7, top: 18),
                                        child: Text("CM",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                                fontFamily: "Font2",
                                                color: Colors.white)))
                                  ],
                                ),
                                SliderTheme(
                                  data: SliderThemeData(
                                    activeTrackColor: Colors.white,
                                    thumbColor: Palette.buttonColor,
                                    overlayColor: Palette.buttonColor[50],
                                    inactiveTrackColor: Colors.white38,
                                  ),
                                  child: SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width - 70,
                                    child: Slider(
                                      value: heightValue,
                                      min: 61,
                                      max: 271,
                                      divisions: 210,
                                      onChanged: (value) {
                                        setState((() => heightValue = value));
                                      },
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
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
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                              if (weightValue > 5) {
                                                weightValue--;
                                              }
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Palette.themeColor[150],
                                              shape: const CircleBorder(),
                                              padding: const EdgeInsets.all(12)),
                                          child: const Icon(Icons.remove,
                                              size: 30),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              if (weightValue < 150) {
                                                weightValue++;
                                              }
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Palette.themeColor[150],
                                              shape: const CircleBorder(),
                                              padding: const EdgeInsets.all(12)),
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
                                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                                  width: genderCardWidth,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Palette.themeColor[100]),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                                  padding: const EdgeInsets.all(12)),
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
                                                  padding: const EdgeInsets.all(12)),
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
                            builder: (context) => bfpResults(gender(),
                                heightValue / 100, weightValue, ageValue)));
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
