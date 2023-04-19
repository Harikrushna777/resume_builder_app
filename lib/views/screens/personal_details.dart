import 'package:flutter/material.dart';

import '../../utils/routes_utils.dart';
import '../../utils/theme_utils.dart';

class personal_details extends StatefulWidget {
  const personal_details({Key? key}) : super(key: key);

  @override
  State<personal_details> createState() => _personal_detailsState();
}

class _personal_detailsState extends State<personal_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Personal Details",
          style: appBarTextStyle,
        ),
        leading: Icon(Icons.arrow_back_ios),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
    );
  }
}
