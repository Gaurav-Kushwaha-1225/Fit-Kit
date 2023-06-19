// ignore_for_file: camel_case_types

import 'package:fit_kit/whr_result_screen.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class whrScreen extends StatefulWidget {
  whrScreen({required this.title});
  final String title;

  @override
  State<whrScreen> createState() => _whrScreenState();
}

class _whrScreenState extends State<whrScreen> {
  bool male = true;
  Color maleColor = Colors.white;
  bool female = false;
  Color femaleColor = Colors.white30;

  int waistValue = 30;
  int hipValue = 30;

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
          title: const Text("WHR  CALCULATOR",
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
                                                size: genderCardWidth,
                                                color: maleColor),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 15),
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
                                              size: genderCardWidth,
                                              color: femaleColor),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 15),
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
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 3.75),
                              child: Container(
                                padding: const EdgeInsets.only(top: 20, bottom: 25),
                                width: genderCardWidth,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Palette.themeColor[100]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text("WAIST",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 15,
                                            fontFamily: "Font2",
                                            color: Colors.white70)),
                                    Text("$waistValue",
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
                                              if (waistValue > 1) {
                                                waistValue--;
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
                                              if (waistValue < 250) {
                                                waistValue++;
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
                                  padding: const EdgeInsets.only(top: 20, bottom: 25),
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
                                        const Text("HIP",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 15,
                                                fontFamily: "Font2",
                                                color: Colors.white70)),
                                        Text("$hipValue",
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
                                                  if (hipValue > 1) {
                                                    hipValue--;
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
                                                  if (hipValue < 250) {
                                                    hipValue++;
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
                            builder: (context) =>
                                whrResults(gender(), waistValue, hipValue)));
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
