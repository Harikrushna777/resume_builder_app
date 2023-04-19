import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/routes_utils.dart';
import 'package:resume_builder_app/utils/theme_utils.dart';
import 'package:resume_builder_app/views/components/myBackButton.dart';

class contact_info extends StatefulWidget {
  const contact_info({Key? key}) : super(key: key);

  @override
  State<contact_info> createState() => _contact_infoState();
}

class _contact_infoState extends State<contact_info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          MyRoutes.buildOption[0].name,
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
