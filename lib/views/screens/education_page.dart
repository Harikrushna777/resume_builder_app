import 'package:flutter/material.dart';

import '../../utils/routes_utils.dart';
import '../../utils/theme_utils.dart';
import '../components/myBackButton.dart';

class education_page extends StatefulWidget {
  const education_page({Key? key}) : super(key: key);

  @override
  State<education_page> createState() => _education_pageState();
}

class _education_pageState extends State<education_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          MyRoutes.buildOption[3].name,
          style: appBarTextStyle,
        ),
        leading: const MyBackButton(),
        backgroundColor: Colors.purple,
        centerTitle: true,
        toolbarHeight: 150,
      ),
    );
  }
}
