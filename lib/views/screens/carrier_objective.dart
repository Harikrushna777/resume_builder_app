import 'package:flutter/material.dart';

import '../../models/global.dart';
import '../../utils/routes_utils.dart';
import '../../utils/theme_utils.dart';
import '../components/myBackButton.dart';

class carrier_objective extends StatefulWidget {
  const carrier_objective({Key? key}) : super(key: key);

  @override
  State<carrier_objective> createState() => _carrier_objectiveState();
}

class _carrier_objectiveState extends State<carrier_objective> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          MyRoutes.buildOption[1].name,
          style: appBarTextStyle,
        ),
        leading: const MyBackButton(),
        backgroundColor: Colors.purple,
        centerTitle: true,
        toolbarHeight: 150,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Carrier Objective",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          maxLines: 5,
                          initialValue: Global.careerObjective,
                          cursorColor: Colors.white,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Please Enter Your Descripation";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (val) {
                            Global.careerObjective = val;
                          },
                          textAlign: TextAlign.start,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: "Enter Your Descripation",
                            hintStyle: const TextStyle(
                              color: Colors.white,
                            ),
                            labelText: "Descripation",
                            labelStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
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
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Current Designation(Experienced Candidate)",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          initialValue: Global.ExperinceCandidate,
                          cursorColor: Colors.white,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Please Enter Your job feild";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (val) {
                            Global.ExperinceCandidate = val;
                          },
                          textAlign: TextAlign.start,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: "Enter Your job feild",
                            hintStyle: const TextStyle(
                              color: Colors.white,
                            ),
                            labelText: "Software Enginner",
                            labelStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
