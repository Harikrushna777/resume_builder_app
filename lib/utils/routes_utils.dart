import 'package:resume_builder_app/utils/image_utils.dart';

class BuildOption {
  final String icon;
  final String name;
  final String routes;

  BuildOption({
    required this.icon,
    required this.name,
    required this.routes,
  });
}

class MyRoutes {
  static String home = '/';
  static String workspace = 'resume_workspace';

  static List<BuildOption> buildOption = [
    BuildOption(
      icon: imagePath + "contact-books.png",
      name: "Contact Information",
      routes: "contact_info",
    ),
    BuildOption(
      icon: imagePath + "briefcase.png",
      name: "Carrier Objective",
      routes: "carrier_objective",
    ),
    BuildOption(
      icon: imagePath + "user.png",
      name: "Personal Details",
      routes: "personal_details",
    ),
    BuildOption(
      icon: imagePath + "mortarboard.png",
      name: "Education",
      routes: "education_page",
    ),
    BuildOption(
      icon: imagePath + "thinking.png",
      name: "Experiences",
      routes: "experiences_page",
    ),
    BuildOption(
      icon: imagePath + "thinking.png",
      name: "Technical Skill",
      routes: "technical_skill",
    ),
    BuildOption(
      icon: imagePath + "open-book.png",
      name: "Interest/Hobbies",
      routes: "interest_page",
    ),
    BuildOption(
      icon: imagePath + "project.png",
      name: "Projects",
      routes: "projects_page",
    ),
    BuildOption(
      icon: imagePath + "experience.png",
      name: "Achievements",
      routes: "achievements_page",
    ),
    BuildOption(
      icon: imagePath + "handshake.png",
      name: "References",
      routes: "references_page",
    ),
    BuildOption(
      icon: imagePath + "declaration.png",
      name: "Declaration",
      routes: "declaration_page",
    ),
  ];
}
