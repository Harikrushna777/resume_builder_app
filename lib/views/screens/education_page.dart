import 'package:flutter/material.dart';

import '../../models/global.dart';
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
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Container(
          padding: EdgeInsets.all(18),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.purple),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                   initialValue: Global.course,
                  cursorColor: Colors.white,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please Enter The Course/Degree";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (val) {
                     Global.course = val;
                  },
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "B.Tech Information Technology",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    labelText: "Course/Degree",
                    labelStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                   initialValue: Global.college,
                  cursorColor: Colors.white,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please Enter The School/College/Institute Name";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (val) {
                     Global.college = val;
                  },
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Bhagavan Mahavir University",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    labelText: "School/College/Institute",
                    labelStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  initialValue: Global.percentage,
                  cursorColor: Colors.white,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please Enter The Course/Degree";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (val) {
                     Global.percentage = val;
                  },
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "70% (or) 7.0 CGPA",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    labelText: "School/College/Institute",
                    labelStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  initialValue: Global.passOutYear.toString(),
                  cursorColor: Colors.white,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please Enter The Year Of Pass";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (val) {
                    Global.passOutYear = int.parse(val!);
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    hintText: "2015",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    labelText: "Year Of Pass",
                    labelStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
