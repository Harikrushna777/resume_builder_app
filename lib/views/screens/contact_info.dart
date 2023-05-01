import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_builder_app/utils/routes_utils.dart';
import 'package:resume_builder_app/utils/theme_utils.dart';
import 'package:resume_builder_app/views/components/myBackButton.dart';

import '../../models/global.dart';
import '../components/my_SnackBar.dart';

class contact_info extends StatefulWidget {
  const contact_info({Key? key}) : super(key: key);

  @override
  State<contact_info> createState() => _contact_infoState();
}

class _contact_infoState extends State<contact_info> {
  bool hide = true;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController nameController =
      TextEditingController(text: Global.name);

  AutovalidateMode mode = AutovalidateMode.disabled;

  int index = 0;

  ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double iconSize = size.height * 0.05;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          MyRoutes.buildOption[0].name,
          style: appBarTextStyle,
        ),
        leading: const MyBackButton(),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        "Contact",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border(
                            bottom: BorderSide(
                          width: index == 0 ? 3 : 0,
                          color: Colors.white,
                        )),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        "Photo",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border(
                            bottom: BorderSide(
                          width: index == 1 ? 3 : 0,
                          color: Colors.white,
                        )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 11,
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: IndexedStack(
                index: index,
                children: [
                  // Contact
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Form(
                      key: formKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(height: 20),
                            // Name
                            Row(
                              children: [
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Icon(
                                    Icons.account_circle_sharp,
                                    size: iconSize,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  flex: 8,
                                  child: TextFormField(
                                    initialValue: Global.name,
                                    cursorColor: Colors.white,
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please Enter The Name";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (val) {
                                      Global.name = val;
                                    },
                                    textInputAction: TextInputAction.next,
                                    decoration: InputDecoration(
                                      hintText: "Enter The Name",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      hintStyle: const TextStyle(
                                        color: Colors.white,
                                      ),
                                      labelText: "Name",
                                      labelStyle: const TextStyle(
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
                                ),
                                const SizedBox(width: 20),
                              ],
                            ),
                            const SizedBox(height: 20),
                            //E-mail
                            Row(
                              children: [
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Icon(
                                    Icons.mail,
                                    size: iconSize,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  flex: 8,
                                  child: TextFormField(
                                    initialValue: Global.name,
                                    cursorColor: Colors.white,
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please Enter Your E-mail";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (val) {
                                      Global.email = val;
                                    },
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      hintText: "Enter Your E-mail",
                                      hintStyle: const TextStyle(
                                        color: Colors.white,
                                      ),
                                      labelText: "E-mail",
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
                                ),
                                const SizedBox(width: 20),
                              ],
                            ),
                            const SizedBox(height: 20),
                            // Mobail Number
                            Row(
                              children: [
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Icon(
                                    Icons.phone_android,
                                    size: iconSize,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  flex: 8,
                                  child: TextFormField(
                                    maxLength: 10,
                                    initialValue: (Global.contact == null)
                                        ? null
                                        : Global.contact.toString(),
                                    cursorColor: Colors.white,
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                    keyboardType: TextInputType.phone,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please Enter Your Mobail No";
                                      } else if (val.length < 10) {
                                        return "Contact Number must have 10 digits...";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (val) {
                                      Global.contact = int.parse(val!);
                                    },
                                    textInputAction: TextInputAction.next,
                                    decoration: InputDecoration(
                                      hintText: "Enter Your Mobail No",
                                      hintStyle: const TextStyle(
                                        color: Colors.white,
                                      ),
                                      prefixText: "+91 ",
                                      labelText: "Mobail Number",
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
                                ),
                                const SizedBox(width: 20),
                              ],
                            ),
                            const SizedBox(height: 20),
                            //Address
                            Row(
                              children: [
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Icon(
                                    Icons.location_pin,
                                    size: iconSize,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  flex: 8,
                                  child: TextFormField(
                                    maxLines: 3,
                                    textAlign: TextAlign.start,
                                    initialValue: Global.address,
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
                                      Global.address = val;
                                    },
                                    textInputAction: TextInputAction.next,
                                    decoration: InputDecoration(
                                      hintText: "Enter Your Address",
                                      hintStyle: const TextStyle(
                                        color: Colors.white,
                                      ),
                                      labelText: "Address",
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
                                ),
                                const SizedBox(width: 20),
                              ],
                            ),
                            const SizedBox(height: 150),
                            // Buttons
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if (formKey.currentState!.validate()) {
                                        formKey.currentState!.save();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          mySnackBar(
                                            text: "Successfully validated !!",
                                            color: Colors.green,
                                          ),
                                        );
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          mySnackBar(
                                            text: "Failled to validated !!",
                                            color: Colors.redAccent,
                                          ),
                                        );
                                      }
                                    });
                                  },
                                  child: const Text(
                                    "Save",
                                    style: TextStyle(
                                      color: Colors.purple,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    formKey.currentState!.reset();
                                    nameController.clear();
                                    Global.name = Global.email =
                                        Global.contact = Global.address = null;
                                  },
                                  child: const Text(
                                    "Reset",
                                    style: TextStyle(
                                      color: Colors.purple,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 40),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Photo
                  Container(
                    height: 400,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        const CircleAvatar(
                          radius: 80,
                          child: Text(
                            "Add",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text("Selete The Method ?"),
                                actions: [
                                  TextButton.icon(
                                    onPressed: () async {
                                      Navigator.of(context).pop();

                                      XFile? img = await picker.pickImage(
                                          source: ImageSource.camera);

                                      if (img != null) {
                                        setState(() {
                                          Global.image = File(img.path);
                                        });
                                      }
                                    },
                                    label: const Text("Camara"),
                                    icon: const Icon(Icons.camera_alt),
                                  ),
                                  const SizedBox(width: 50),
                                  TextButton.icon(
                                    onPressed: () async {
                                      XFile? img = await picker.pickImage(
                                          source: ImageSource.gallery);

                                      if (img != null) {
                                        setState(() {
                                          Global.image = File(img.path);
                                        });
                                      }
                                      Navigator.of(context).pop();
                                    },
                                    label: const Text("Gallery"),
                                    icon: const Icon(Icons.image),
                                  ),
                                ],
                              ),
                            );
                          },
                          mini: true,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(Icons.camera, color: Colors.purple),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
