import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/routes_utils.dart';
import 'package:resume_builder_app/views/screens/achievements_page.dart';
import 'package:resume_builder_app/views/screens/carrier_objective.dart';
import 'package:resume_builder_app/views/screens/contact_info.dart';
import 'package:resume_builder_app/views/screens/declaration_page.dart';
import 'package:resume_builder_app/views/screens/education_page.dart';
import 'package:resume_builder_app/views/screens/experiences_page.dart';
import 'package:resume_builder_app/views/screens/home_page.dart';
import 'package:resume_builder_app/views/screens/interest_page.dart';
import 'package:resume_builder_app/views/screens/personal_details.dart';
import 'package:resume_builder_app/views/screens/projects_page.dart';
import 'package:resume_builder_app/views/screens/references_page.dart';
import 'package:resume_builder_app/views/screens/resume_workspace.dart';
import 'package:resume_builder_app/views/screens/technical_skill.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
       routes: {
        MyRoutes.home : (context) => const home_page(),
         // MyRoutes.pdfPage : (context)=> const pdf_page(),
         MyRoutes.workspace : (context) => const resume_workspace(),
         MyRoutes.buildOption[0].routes:(context)=>const contact_info(),
         MyRoutes.buildOption[1].routes:(context)=>const carrier_objective(),
         MyRoutes.buildOption[2].routes:(context)=>const personal_details(),
         MyRoutes.buildOption[3].routes:(context)=>const education_page(),
         MyRoutes.buildOption[4].routes:(context)=>const experiences_page(),
         MyRoutes.buildOption[5].routes:(context)=>const technical_skill(),
         MyRoutes.buildOption[6].routes:(context)=>const interest_page(),
         MyRoutes.buildOption[7].routes:(context)=>const projects_page(),
         MyRoutes.buildOption[8].routes:(context)=>const achievements_page(),
         MyRoutes.buildOption[9].routes:(context)=>const references_page(),
         MyRoutes.buildOption[10].routes:(context)=>const declaration_page(),

       },
    );
  }
}
