import 'package:flutter/material.dart';
import 'package:resume_builder_app/views/components/myBackButton.dart';

import '../../models/global.dart';
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
          child: SingleChildScrollView(
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
                        initialValue: Global.dateOfBirth,
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
                          Global.dateOfBirth = val;
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
                            fontSize: 20,
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
                //Marital Status
                const Text(
                  "Marital Status",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                RadioListTile(
                  activeColor: Colors.white,
                  value: "Single",
                  title: const Text(
                    "Single",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  groupValue: Global.maritalStatus,
                  onChanged: (val) {
                    setState(() {
                      Global.maritalStatus = val;
                    });
                  },
                ),
                RadioListTile(
                  value: "Married",
                  title: Text(
                    "Married",
                    style: TextStyle(
                      color: Global.maritalStatus == "Married"
                          ? Colors.white
                          : Colors.white,
                    ),
                  ),
                  activeColor: Colors.white,
                  tileColor: Colors.white,
                  groupValue: Global.maritalStatus,
                  onChanged: (val) {
                    setState(() {
                      Global.maritalStatus = val;
                    });
                  },
                ),
                const SizedBox(height: 10),
                //Languages Known
                const Text(
                  "Languages Known",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CheckboxListTile(
                    value: Global.isGujarati,
                    activeColor: Colors.white,
                    checkColor: Colors.purple,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text(
                      "Gujarati",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    onChanged: (val) {
                      setState(() {
                        Global.isGujarati = val!;
                        if (val) {
                          Global.allLanguages.add("Gujarati");
                        } else {
                          Global.allLanguages
                              .removeWhere((e) => e == "Gujarati");
                        }
                      });
                    }),
                CheckboxListTile(
                    value: Global.isHindi,
                    activeColor: Colors.white,
                    checkColor: Colors.purple,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text(
                      "Hindi",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    onChanged: (val) {
                      setState(() {
                        Global.isHindi = val!;
                        if (val) {
                          Global.allLanguages.add("Hindi");
                        } else {
                          Global.allLanguages.removeWhere((e) => e == "Hindi");
                        }
                      });
                    }),
                CheckboxListTile(
                    value: Global.isEnglish,
                    activeColor: Colors.white,
                    checkColor: Colors.purple,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text(
                      "English",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    onChanged: (val) {
                      setState(() {
                        Global.isEnglish = val!;
                        if (val) {
                          Global.allLanguages.add("English");
                        } else {
                          Global.allLanguages
                              .removeWhere((e) => e == "English");
                        }
                      });
                    }),
                // const SizedBox(height: 20),
                //Nationality
                TextFormField(
                  initialValue: Global.nationality,
                  cursorColor: Colors.white,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please Enter The Nationality";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (val) {
                    Global.nationality = val;
                  },
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Indian",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    labelText: "Nationality",
                    labelStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
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
