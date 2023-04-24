import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_builder_app/utils/image_utils.dart';
import 'package:resume_builder_app/utils/routes_utils.dart';
import 'package:resume_builder_app/utils/theme_utils.dart';
import 'package:resume_builder_app/views/components/myBackButton.dart';

import '../../models/global.dart';

class contact_info extends StatefulWidget {
  const contact_info({Key? key}) : super(key: key);

  @override
  State<contact_info> createState() => _contact_infoState();
}

class _contact_infoState extends State<contact_info> {
  bool hide = true;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController(text: Global.name);

  AutovalidateMode mode = AutovalidateMode.disabled;

  int index = 0;

  ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double iconSize = size.height * 0.04;

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
                            Row(
                              children: [
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Image.asset(
                                    imagePath + "user.png",
                                    height: iconSize,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  flex: 8,
                                  child: TextFormField(

                                    initialValue: Global.name,
                                    cursorColor: Colors.white,
                                    style: TextStyle(
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
                                        borderSide: BorderSide(
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
                          radius: 100,
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

                                      XFile? img = await picker.pickImage(source: ImageSource.camera);

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
                                      XFile? img = await picker.pickImage(source: ImageSource.gallery);

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
