import 'package:flutter/material.dart';
import 'package:resume_builder_app/views/components/myBackButton.dart';

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
    Size size = MediaQuery.of(context).size;
    double iconSize = size.height * 0.05;

    String? maritalStatus;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          MyRoutes.buildOption[2].name,
          style: appBarTextStyle,
        ),
        leading: const MyBackButton(),
        backgroundColor: Colors.purple,
        centerTitle: true,
        toolbarHeight: 150,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Date Of Birth
              Row(
                children: [
                  Expanded(
                    child: Icon(
                      Icons.cake_rounded,
                      size: iconSize,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    flex: 8,
                    child: TextFormField(
                      // initialValue: Global.name,
                      cursorColor: Colors.white,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please Enter the Date Of Birth";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (val) {
                        // Global.name = val;
                      },
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        hintText: "DD/MM/YYYY",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintStyle: const TextStyle(
                          color: Colors.white,
                        ),
                        labelText: "Date Of Brith",
                        labelStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Marital Status",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              RadioListTile(
                value: "Single",
                title: const Text(
                  "Single",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                groupValue: maritalStatus,
                onChanged: (val) {
                  setState(() {
                    maritalStatus = val;
                  });
                },
              ),
              RadioListTile(
                value: "Married",
                title: Text(
                  "Married",
                  style: TextStyle(
                    color: maritalStatus == "Married"
                        ? Colors.purpleAccent
                        : Colors.white,
                  ),
                ),
                tileColor: Colors.white,
                groupValue: maritalStatus,
                onChanged: (val) {
                  setState(() {
                    maritalStatus = val;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
