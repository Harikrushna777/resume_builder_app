import 'dart:io';

import 'package:flutter/cupertino.dart';

class Global {
  // Contact page variables
  static String? name;
  static String? email;
  static int? contact;
  static String? address;
  static File? image;

  // Education page variables
  static String? course;
  static String? college;
  static String? percentage;
  static int? passOutYear;

  // Personal Details page variables
  static String? dateOfBirth;
  static String? maritalStatus;
  static String? nationality;
  static bool isHindi = false;
  static bool isEnglish = false;
  static bool isGujarati = false;
  static List<String> allLanguages = [];

  // Carrier Objective page variables
  static String? careerObjective;
  static String? ExperinceCandidate;

  // Declaration page variables
  static String? declarationDescripation;
  static String? declarationDate;
  static String? interviewCity;

  // Technical Skills page variables
  static List<String?> mySkills = [];
  static List<TextEditingController> mySkillsControllers = [];

  // Achivements page variables
  static List<String?> myAchivement = [];
  static List<TextEditingController> myAchivementControllers = [];

  // References page variables
  static String? referenceName;
  static String? referenceDesignation;
  static String? referenceOrganization;

  //projects page variables
  static String? projectTitle;
  static bool c = false;
  static bool cUpgrade = false;
  static bool flutter = false;
  static List<String> allTechnologies = [];
  static String? roles;
  static String? technologies;
  static String? projrctDesripation;

  // Experience page variables
  static String? pastCompanyName;
  static String? pastInstitute;
  static String? pastRoles;
  static String? employedStatus;
  static String? previousJoiningDate;
  static String? previousExitDate;
  static String? currntJoiningDate;
}
