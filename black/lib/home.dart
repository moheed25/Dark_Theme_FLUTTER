import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: darkMode ? Colors.grey[850] : Colors.grey[300],
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              height: 200,
              width: 200,
              child: Icon(
                Icons.android_sharp,
                size: 80,
                color: darkMode ? Colors.white : Colors.black,
              ),
              decoration: BoxDecoration(
                  color: darkMode ? Colors.grey[850] : Colors.grey[300],
                  borderRadius: BorderRadiusDirectional.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color:
                          darkMode ? (Colors.grey[900])! : (Colors.grey[500])!,
                      offset: const Offset(
                        4.0,
                        4.0,
                      ),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: darkMode ? (Colors.grey[800])! : Colors.white,
                      offset: const Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        darkMode = true;
                      });
                    },
                    child: Text(
                      "Dark",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      //onPrimary: Colors.black,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        darkMode = false;
                      });
                    },
                    child: Text(
                      "Light",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      //onPrimary: Colors.black,
                    ),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
