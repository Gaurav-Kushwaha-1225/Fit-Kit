// ignore_for_file: constant_identifier_names, camel_case_types
import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor themeColor = MaterialColor(
      0xFF10163A, <int, Color>{
    50: Color(0xFF090F33),
    100: Color(0xFF141A3C),
    150: Color(0xFF282C4F)
  });

  static const MaterialColor buttonColor = MaterialColor(
      0xFFFF0067, <int, Color>{50: Color(0x4DFF0067), 100: Color(0xFF212749)});

  static const MaterialColor presplashColor = MaterialColor(
    0xFF82EEFD, <int, Color>{
  });
}

class Tests_Constants {
  static const Map<String, List> BMI_HashMap = {
    "underweight": [
      "UNDERWEIGHT",
      Colors.blueAccent,
      "Underweight BMI range:",
      "5 - 18.5 kg/m2",
      "For your height a normal weight range would be from",
      "You are under weight. Try to gain weight in healthy ways.",
      "Maintaining a healthy weight may reduce the risk of chronic diseases associated with Overweight and Obesity."
    ],
    "normal": [
      "NORMAL",
      Colors.greenAccent,
      "Normal BMI range:",
      "18.5 - 25 kg/m2",
      "For your height a normal weight range would be from",
      "You have a normal body weight. Good Job.",
      "Maintaining a healthy weight may reduce the risk of chronic diseases associated with Overweight and Obesity."
    ],
    "overweight": [
      "OVERWEIGHT",
      Colors.yellowAccent,
      "Overweight BMI range:",
      "25 - 30 kg/m2",
      "For your height a normal weight range would be from",
      "You are over weight. Try to lose weight and improve your health.",
      "Maintaining a healthy weight may reduce the risk of chronic diseases associated with Overweight and Obesity."
    ],
    "obesity": [
      "OBESITY",
      Colors.redAccent,
      "Obesity BMI range:",
      "30 - ... kg/m2",
      "For your height a normal weight range would be from",
      "Talk to your doctor about ways to lose weight and improve your health.",
      "Maintaining a healthy weight may reduce the risk of chronic diseases associated with Overweight and Obesity."
    ]
  };

  static const Map<String, List> BMR_HashMap = {
    "male": [
      "Average BMR of Male:",
      "1,800 - 2,400 Cal/day.",
    ],
    "female": ["Average BMR of Female:", "1,400 - 1,800 Cal/day."],
    "low": [
      "You may need to eat more calories or exercise more to reach your fitness goals.",
    ],
    "normal": [
      "You may be able to reach your fitness goals with a healthy diet and regular exercise."
    ],
    "high": [
      "You may be aable to eat fewer calories or exercise less to reach your fitness goals."
    ],
    "Error": ["An error occured. Please try again."]
  };

  static const Map<String, List> BFP_HashMap = {
    "extremelyLean": [
      "Extremely Lean",
      Colors.yellowAccent,
      "Extremely Lean BFP range:",
      "< 8%", //Boys
      "< 17%", //Girls
      "< 5%", //Adult Males
      "< 13%", //Adult Females
      "For your height a normal weight range would be from",
      "Impressive body fat percentage! Your dedication to fitness is commendable.",
      "Maintaining a healthy body fat percentage offers numerous benefits like improved cardiovascular health, increased energy levels, enhanced self-confidence, and reduced risk of chronic diseases. Keep up the good work!"
    ],
    "lean": [
      "Lean",
      Colors.blueAccent,
      "Lean BFP range:",
      "8 - 14%", //Boys
      "18 - 25%", //Girls
      "6 - 13%", //Adult Males
      "14 - 20%", //Adult Females
      "For your height a normal weight range would be from",
      "Great job maintaining a healthy body fat percentage. Keep up the good work!",
      "Maintaining a healthy body fat percentage offers numerous benefits like improved cardiovascular health, increased energy levels, enhanced self-confidence, and reduced risk of chronic diseases. Keep up the good work!"
    ],
    "normal": [
      "Normal",
      Colors.greenAccent,
      "Normal BFP range:",
      "15 - 20%", //Boys
      "26 - 31%", //Girls
      "14 - 17%", //Adult Males
      "21 - 24%", //Adult Females
      "For your height a normal weight range would be from",
      "Your body fat percentage falls within the healthy range. Keep staying active and balanced!",
      "Maintaining a healthy body fat percentage offers numerous benefits like improved cardiovascular health, increased energy levels, enhanced self-confidence, and reduced risk of chronic diseases. Keep up the good work!"
    ],
    "overweight": [
      "Overweight",
      Colors.amberAccent,
      "Overweight BFP range:",
      "21 - 27%", //Boys
      "32 - 38%", //Girls
      "18 - 25%", //Adult Males
      "25 - 31%", //Adult Females
      "For your height a normal weight range would be from",
      "It's important to prioritize your health. Consider incorporating regular exercise and a balanced diet.",
      "Maintaining a healthy body fat percentage offers numerous benefits like improved cardiovascular health, increased energy levels, enhanced self-confidence, and reduced risk of chronic diseases. Keep up the good work!"
    ],
    "obese": [
      "Obese",
      Colors.deepOrangeAccent,
      "Obesity BFP range:",
      "28 - 35%", //Boys
      "39 - 45%", //Girls
      "26 - 31%", //Adult Males
      "32 - 39%", //Adult Females
      "For your height a normal weight range would be from",
      "Take steps towards a healthier lifestyle for improved well-being. Seek guidance from a healthcare professional if needed.",
      "Maintaining a healthy body fat percentage offers numerous benefits like improved cardiovascular health, increased energy levels, enhanced self-confidence, and reduced risk of chronic diseases. Keep up the good work!"
    ],
    "extremelyObese": [
      "Extreme Obese",
      Colors.redAccent,
      "Extreme Obesity BFP range:",
      "> 35%", //Boys
      "> 45%", //Girls
      "> 31%", //Adult Males
      "> 39%", //Adult Females
      "For your height a normal weight range would be from",
      "Your body fat percentage indicates a serious health concern. Consult a healthcare professional to discuss appropriate interventions.",
      "Maintaining a healthy body fat percentage offers numerous benefits like improved cardiovascular health, increased energy levels, enhanced self-confidence, and reduced risk of chronic diseases. Keep up the good work!"
    ]
  };

  static const Map<String, List> WHR_HashMap = {
    "lowRisk": [
      "LOW RISK",
      Colors.amberAccent,
      "Low Risk WHR range:",
      "0.95 or below", //Males
      "0.80 or below", //Females
      "Your Waist-Hip Ratio (WHR) indicates that you must have a Pear-shaped body.",
      "Congratulations on having a low WHR, indicating a lower risk of certain health conditions.",
      "Maintaining a healthy WHR offers numerous benefits, including reduced risk of chronic diseases, improved cardiovascular health, and enhanced overall well-being. Focus on balanced nutrition and regular exercise to maintain a Good WHR."
    ],
    "normal": [
      "NORMAL",
      Colors.greenAccent,
      "Normal WHR range:",
      "0.96 to 1.0", //Males
      "0.8 to 0.85", //Females
      "Your Waist-Hip Ratio (WHR) indicates that you must have a Avocado-shaped body.",
      "Your WHR falls within the normal range, which is generally associated with average health risks.",
      "Maintaining a healthy WHR offers numerous benefits, including reduced risk of chronic diseases, improved cardiovascular health, and enhanced overall well-being. Focus on balanced nutrition and regular exercise to maintain a Good WHR."
    ],
    "highRisk": [
      "HIGH RISK",
      Colors.redAccent,
      "High Risk WHR range:",
      "1.0 or above", //Males
      "0.85 or above", //Females
      "Your Waist-Hip Ratio (WHR) indicates that you must have a Apple-shaped body.",
      "Your WHR is higher, indicating an increased risk of certain health conditions. Consider lifestyle changes for better health.",
      "Maintaining a healthy WHR offers numerous benefits, including reduced risk of chronic diseases, improved cardiovascular health, and enhanced overall well-being. Focus on balanced nutrition and regular exercise to maintain a Good WHR."
    ],
  };

  static const Map<String, double> activity_values = {
    "Sedentary (little/no exercise)": 1.2,
    "Light (exercise 1-3 days/wk)": 1.375,
    "Moderate (exercise 3-5 days/wk)": 1.55,
    "Heavy (exercise 6-7 days/wk)": 1.725,
    "Physical job & intense exercise": 1.9
  };
}
