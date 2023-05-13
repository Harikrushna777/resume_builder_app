import 'package:flutter/material.dart';
import 'package:resume_builder_app/views/components/my_SnackBar.dart';

import '../../models/global.dart';
import '../../utils/routes_utils.dart';
import '../../utils/theme_utils.dart';
import '../components/myBackButton.dart';

class experiences_page extends StatefulWidget {
  const experiences_page({Key? key}) : super(key: key);

  @override
  State<experiences_page> createState() => _experiences_pageState();
}

class _experiences_pageState extends State<experiences_page> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          MyRoutes.buildOption[4].name,
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
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Company Name",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                TextFormField(
                  initialValue: Global.pastCompanyName,
                  cursorColor: Colors.white,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  onSaved: (val) {
                    Global.pastCompanyName = val;
                  },
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "New Enterprise,San Francisco",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "School/College/Institute",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                TextFormField(
                  initialValue: Global.pastInstitute,
                  cursorColor: Colors.white,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  onSaved: (val) {
                    Global.pastInstitute = val;
                  },
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Quality Test Engineer",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Roles (optical)",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                TextFormField(
                  maxLines: 3,
                  initialValue: Global.pastRoles,
                  cursorColor: Colors.white,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  onSaved: (val) {
                    Global.pastRoles = val;
                  },
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText:
                        "Working with team members to come up with new concept and product analysis...",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Employed Status",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                RadioListTile(
                  value: "Previously Employed",
                  activeColor: Colors.white,
                  title: const Text(
                    "Previously Employed",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  groupValue: Global.employedStatus,
                  onChanged: (preemp) {
                    setState(
                      () {
                        if (preemp == true) {
                          Global.employedStatus = "Previously Employed";
                        } else {
                          Global.employedStatus = "Currently Employed";
                        }
                        Global.employedStatus = preemp;
                      },
                    );
                  },
                ),
                RadioListTile(
                  activeColor: Colors.white,
                  value: "Currently Employed",
                  title: const Text(
                    "Currently Employed",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  groupValue: Global.employedStatus,
                  onChanged: (curremp) {
                    setState(
                      () {
                        if (curremp == true) {
                          Global.employedStatus = "Currently Employed";
                        } else {
                          Global.employedStatus = "Previously Employed";
                        }
                        Global.employedStatus = curremp;
                      },
                    );
                  },
                ),
                // Currently Employed
                SizedBox(height: 10),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Date Joined",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 130,
                          child: TextFormField(
                            initialValue: (Global.previousJoiningDate == null)
                                ? null
                                : Global.previousJoiningDate.toString(),
                            textInputAction: TextInputAction.next,
                            validator: (value) {
                              if (value!.isEmpty) {
                                const Text("Date !!");
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) {
                              return null;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: const EdgeInsets.all(5),
                              hintText: "DD/MM/YYYY",
                              hintStyle: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Text(
                          "Data Exit",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 130,
                          child: TextFormField(
                            initialValue: (Global.previousExitDate == null)
                                ? null
                                : Global.previousExitDate.toString(),
                            validator: (value) {
                              if (value!.isEmpty == null) {
                                const Text("Date!!");
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) {
                              Global.previousExitDate = (value!);
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: const EdgeInsets.all(5),
                              hintText: "DD/MM/YYYY",
                              hintStyle: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(
                          () {},
                        );
                      },
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();
                              ScaffoldMessenger.of(context).showSnackBar(
                                mySnackBar(
                                  text: "Successfully validated !!",
                                  color: Colors.green,
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                mySnackBar(
                                  text: "Failled to validate !!",
                                  color: Colors.red,
                                ),
                              );
                            }
                          });
                        },
                        child: const Text(
                          "SAVE",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
