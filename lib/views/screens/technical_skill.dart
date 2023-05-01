import 'package:flutter/material.dart';

import '../../models/global.dart';
import '../../utils/routes_utils.dart';
import '../../utils/theme_utils.dart';
import '../components/myBackButton.dart';

class technical_skill extends StatefulWidget {
  const technical_skill({Key? key}) : super(key: key);

  @override
  State<technical_skill> createState() => _technical_skillState();
}


class _technical_skillState extends State<technical_skill> {
  @override
  void dispose() {
    super.dispose();

    Global.mySkillsControllers.removeWhere((element) {
      if (element.text == "") {
        print("REMOVED: ${Global.mySkillsControllers.indexOf(element)}\t\tVALUE: ${element.text}");
        return true;
      } else {
        print("SKIPPED: ${Global.mySkillsControllers.indexOf(element)}\t\tVALUE: ${element.text}");
        return false;
      }
    });

    Global.mySkillsControllers.forEach((element) {
      Global.mySkills.add("");
      Global.mySkills[Global.mySkillsControllers.indexOf(element)] = element.text;
    });

    Global.mySkills.removeWhere((element) => element == "");

    if (Global.mySkillsControllers.isEmpty) {
      for (int i = 0; i < 2; i++) {
        Global.mySkillsControllers.add(TextEditingController());
      }
    }
  }

  @override
  void initState() {
    super.initState();
    if (Global.mySkillsControllers.isEmpty) {
      for (int i = 0; i < 2; i++) {
        Global.mySkillsControllers.add(TextEditingController());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          MyRoutes.buildOption[5].name,
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Enter your skills",
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
                Global.mySkillsControllers.length,
                    (index) => MySkillTile(index: index),
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
                          Global.mySkillsControllers.add(TextEditingController());
                        });
                      },
                      child: const Icon(Icons.add,color: Colors.purple,),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget MySkillTile({required int index}) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: Global.mySkillsControllers[index],
            decoration: const InputDecoration(
              hintText: "C Programming, Web",
              hintStyle: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              Global.mySkillsControllers.removeAt(index);
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



