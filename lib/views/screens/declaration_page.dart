import 'package:flutter/material.dart';

import '../../models/global.dart';
import '../../utils/routes_utils.dart';
import '../../utils/theme_utils.dart';
import '../components/myBackButton.dart';

class declaration_page extends StatefulWidget {
  const declaration_page({Key? key}) : super(key: key);

  @override
  State<declaration_page> createState() => _declaration_pageState();
}

class _declaration_pageState extends State<declaration_page> {
  bool isDeclared = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          MyRoutes.buildOption[9].name,
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Declaration",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Transform.scale(
                    scale: 0.8,
                    child: Switch(
                      value: isDeclared,
                      onChanged: (val) {
                        setState(() {
                          isDeclared = val;
                        });
                      },
                      activeColor: Colors.purple,
                      activeTrackColor: Colors.white,
                      inactiveThumbColor: Colors.purple,
                      inactiveTrackColor: Colors.white,
                    ),
                  )
                ],
              ),
              (isDeclared)
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.radar_outlined,
                          color: Colors.white,
                          size: 100,
                        ),
                        SizedBox(height: 30),
                        TextFormField(
                          textAlign: TextAlign.start,
                          initialValue: Global.declarationDescripation,
                          cursorColor: Colors.white,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Please Enter Your Address";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (val) {
                            Global.declarationDescripation = val;
                          },
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: "Descripation",
                            hintStyle: const TextStyle(
                              color: Colors.white,
                            ),
                            labelText: "Descripation",
                            labelStyle: const TextStyle(
                              color: Colors.white,
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
                        SizedBox(height: 20),
                        const Divider(
                          color: Colors.white,
                          thickness: 2,
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Date",
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.6),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(height: 35),
                                Container(
                                  height: 50,
                                  width: 130,
                                  alignment: Alignment.center,
                                  child: TextFormField(
                                    textAlign: TextAlign.start,
                                    initialValue: Global.declarationDate,
                                    cursorColor: Colors.white,
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                    onSaved: (val) {
                                      Global.declarationDate = val;
                                    },
                                    textInputAction: TextInputAction.next,
                                    decoration: InputDecoration(
                                      hintText: "DD/MM/YYYY",
                                      hintStyle: const TextStyle(
                                        color: Colors.white,
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
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Place(Interview\nvenue/city)",
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.6),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  height: 50,
                                  width: 130,
                                  alignment: Alignment.center,
                                  child: TextFormField(
                                    textAlign: TextAlign.start,
                                    initialValue: Global.interviewCity,
                                    cursorColor: Colors.white,
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                    onSaved: (val) {
                                      Global.interviewCity = val;
                                    },
                                    textInputAction: TextInputAction.next,
                                    decoration: InputDecoration(
                                      hintText: "Ex. Surat",
                                      hintStyle: const TextStyle(
                                        color: Colors.white,
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
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
