import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/routes_utils.dart';
import 'package:resume_builder_app/views/components/myBackButton.dart';

class resume_workspace extends StatefulWidget {
  const resume_workspace({Key? key}) : super(key: key);

  @override
  State<resume_workspace> createState() => _resume_workspaceState();
}

class _resume_workspaceState extends State<resume_workspace> {
  @override
  Widget build(BuildContext context) {

    Size S = MediaQuery
        .of(context)
        .size;

    return Scaffold(
      appBar: AppBar(
         leading: const MyBackButton(),
        title: const Text(
          "Resume Workspace",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: 50,
              width: double.infinity,
              alignment: Alignment.center,
              child: const Text(
                "Build Options",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              decoration: const BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  ),
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: SingleChildScrollView(
              child: Column(
                children: MyRoutes.buildOption
                    .map(
                      (e) =>
                      Container(
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(10),
                        ),
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              e.icon,
                              width: 50,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 20),
                            Text(
                              e.name,
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed(e.routes);
                              },
                              icon: const Icon(Icons.arrow_forward_ios,color: Colors.white,),
                            ),
                          ],
                        ),
                      ),
                ).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
