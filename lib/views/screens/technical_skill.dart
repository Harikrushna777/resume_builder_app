import 'package:flutter/material.dart';

import '../../utils/routes_utils.dart';
import '../../utils/theme_utils.dart';
import '../components/myBackButton.dart';

class technical_skill extends StatefulWidget {
  const technical_skill({Key? key}) : super(key: key);

  @override
  State<technical_skill> createState() => _technical_skillState();
}

class _technical_skillState extends State<technical_skill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          MyRoutes.buildOption[5].name,
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
