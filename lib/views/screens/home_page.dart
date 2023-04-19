import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/image_utils.dart';
import 'package:resume_builder_app/utils/routes_utils.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    Size S = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: S.height * 0.02),
            const Text(
              "Resume Builder",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            SizedBox(height: S.height * 0.06),
            const Text(
              "RESUME",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(height: S.height * 0.02),
          ],
        ),
        toolbarHeight: 150,
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: S.height * 0.20),
            Image.asset(
              imagePath + "open-cardboard-box.png",
              color: Colors.purple,
              width: 80,
            ),
            SizedBox(height: S.height * 0.02),
            const Text(
              "No resume yet !!\nClick + to create new resume.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.purple,
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(MyRoutes.workspace);
        },
        tooltip: "Create New Resume...",
        child: const Icon(Icons.add),
      ),
    );
  }
}
