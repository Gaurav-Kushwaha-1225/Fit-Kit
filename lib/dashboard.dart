import 'package:flutter/material.dart';

import 'bfp_screen.dart';
import 'bmi_screen.dart';
import 'bmr_screen.dart';
import 'constants.dart';
import 'eer_screen.dart';
import 'tdee_screen.dart';
import 'whr_screen.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key, required this.title});
  final String title;

  var calculators = [
    [
      "Body Mass Index\n(BMI)",
      "assets/images/bmi.png",
      "Basal Metabolic Rate\n(BMR)",
      "assets/images/bmr.png",
    ],
    [
      "Body Fat Percentage\n(BFP)",
      "assets/images/bfp.png",
      "Waist - Hip Ratio\n(WHR)",
      "assets/images/whr.png",
    ],
    [
      "Total Daily Energy Expenditure\n(TDEE)",
      "assets/images/tdee.png",
      "Estimated Energy Requirement\n(EER)",
      "assets/images/eer.png"
    ]
  ];

  var screens = [
    [bmiScreen(title: "BMI Screen"), bmrScreen(title: "BMR Screen")],
    [bfpScreen(title: "BFP Screen"), whrScreen(title: "WHR Screen")],
    [tdeeScreen(title: "TDEE Screen"), eerScreen(title: "EER Screen")]
  ];

  @override
  Widget build(BuildContext context) {
    double cardWidth = (MediaQuery.of(context).size.width - 45) / 2;

    return Scaffold(
        appBar: AppBar(
          title: const Text("Fitness Kit",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 27,
                  color: Colors.white,
                  fontFamily: "MainFont")),
          centerTitle: true,
          backgroundColor: Palette.themeColor,
          toolbarHeight: 70,
        ),
        backgroundColor: Palette.themeColor[50],
        body: ListView.builder(
          itemBuilder: (BuildContext context, index) {
            return Row(children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 7.5, right: 7.5, bottom: 7.5),
                child: Material(
                  color: Palette.themeColor[150],
                  borderRadius: BorderRadius.circular(40),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => screens[index][0]));
                    },
                    child: Container(
                      width: cardWidth,
                      height: (cardWidth + 131),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(width: 6, color: Colors.white54),
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 25, left: 25, right: 25),
                              child: SizedBox(
                                  width: (cardWidth - 50),
                                  height: (cardWidth - 50),
                                  child: Image.asset(calculators[index][1])),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, bottom: 25, left: 25, right: 25),
                              child: Text(calculators[index][0],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontFamily: "Font2"),
                                  textAlign: TextAlign.center),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 7.5, left: 7.5, bottom: 7.5),
                child: Material(
                  color: Palette.themeColor[150],
                  borderRadius: BorderRadius.circular(40),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => screens[index][1]));
                    },
                    child: Container(
                        width: cardWidth,
                        height: (cardWidth + 131),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(width: 6, color: Colors.white54),
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 25, left: 25, right: 25),
                                child: SizedBox(
                                    width: (cardWidth - 50),
                                    height: (cardWidth - 50),
                                    child: Image.asset(calculators[index][3])),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15, bottom: 25, left: 25, right: 25),
                                child: Text(calculators[index][2],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontFamily: "Font2"),
                                    textAlign: TextAlign.center),
                              )
                            ],
                          ),
                        )),
                  ),
                ),
              )
            ]);
          },
          itemCount: 3,
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 7.5, bottom: 7.5),
        ));
  }
}
