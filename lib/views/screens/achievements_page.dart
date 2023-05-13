import 'package:flutter/material.dart';

import '../../models/global.dart';
import '../../utils/routes_utils.dart';
import '../../utils/theme_utils.dart';
import '../components/myBackButton.dart';

class achievements_page extends StatefulWidget {
  const achievements_page({Key? key}) : super(key: key);

  @override
  State<achievements_page> createState() => _achievements_pageState();
}

class _achievements_pageState extends State<achievements_page> {
  @override
  void dispose() {
    super.dispose();

    Global.myAchivementControllers.removeWhere((element) {
      if (element.text == "") {
        print(
            "REMOVED: ${Global.myAchivementControllers.indexOf(element)}\t\tVALUE: ${element.text}");
        return true;
      } else {
        print(
            "SKIPPED: ${Global.myAchivementControllers.indexOf(element)}\t\tVALUE: ${element.text}");
        return false;
      }
    });

    Global.myAchivementControllers.forEach((element) {
      Global.myAchivement.add("");
      Global.myAchivement[Global.myAchivementControllers.indexOf(element)] =
          element.text;
    });

    Global.myAchivement.removeWhere((element) => element == "");

    if (Global.myAchivementControllers.isEmpty) {
      for (int i = 0; i < 2; i++) {
        Global.myAchivementControllers.add(TextEditingController());
      }
    }
  }

  @override
  void initState() {
    super.initState();
    if (Global.myAchivementControllers.isEmpty) {
      for (int i = 0; i < 2; i++) {
        Global.myAchivementControllers.add(TextEditingController());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          MyRoutes.buildOption[7].name,
          style: appBarTextStyle,
        ),
        leading: const MyBackButton(),
        backgroundColor: Colors.purple,
        centerTitle: true,
        toolbarHeight: 150,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Container(
          padding: const EdgeInsets.all(24),
          width: size.width,
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Enter Achivement",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ...List.generate(
                  Global.myAchivementControllers.length,
                  (index) => MyAchivementTile(index: index),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Global.myAchivementControllers
                                .add(TextEditingController());
                          });
                        },
                        child: const Icon(
                          Icons.add,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyAchivementTile({required int index}) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: Global.myAchivementControllers[index],
            decoration: const InputDecoration(
              hintText: "Exceeded sales 17% avearage",
              hintStyle: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              Global.myAchivementControllers.removeAt(index);
            });
          },
          icon: const Icon(
            Icons.delete,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
