import 'dart:io';

import 'package:flutter/cupertino.dart';

class Global {
  static String? name;
  static String? email;
  static int? contact;
  static String? address;
  static String? course;
  static String? college;
  static String? maritalStatus;
  static String? nationality;
  static String? percentage;
  static int? passOutYear;
  static File? image;
  static String? careerObjective;
  static String? ExperinceCandidate;

  static bool isHindi = false;
  static bool isEnglish = false;
  static bool isGujarati = false;

  static List<String> allLanguages= [];

  static List<String?> mySkills = [];
  static List<TextEditingController> mySkillsControllers = [];
}
