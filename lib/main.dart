import 'package:flutter/material.dart';
import 'skillline.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('TM Sachith'),
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Add your onPressed code here!
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    'assets/sachith.png',
                    width: 250,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.facebook, color: Colors.white),
                        onPressed: () {
                          // Add your onPressed code here!
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.alternate_email,
                            color: Colors
                                .white), // Replace with an appropriate icon
                        onPressed: () {
                          // Add your onPressed code here!
                        },
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.camera,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          // Add your onPressed code here!
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const Column(
                    children: [
                      Text.rich(
                        TextSpan(
                          text: "I'm ",
                          children: [
                            TextSpan(
                              text: 'Sachith Thennakoon',
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        ),
                        semanticsLabel: " ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        'An IT Student',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: const Text(
                    'Currently I am studying Computer Science at General Sir John Kotalawala Defence University. I Creating Valuable and Intractive Apps for Google Play for Specificly for Sri Lankan Users. As an undergraduate student pursuing a degree in Computer Science, I am continuing on this path with a strong foundation in Computer Science and Engineering principles. I have shown a keen interest in programming languages, software development, artificial intelligence, etc.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // Add your onPressed code here!
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  icon: const Icon(Icons.description),
                  label: const Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text('My CV'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SkillLine(skill: 'Flutter', percentage: 0.8),
                      SizedBox(height: 5),
                      SkillLine(skill: 'Dart', percentage: 0.75),
                      SizedBox(height: 5),
                      SkillLine(skill: 'JavaScript', percentage: 0.7),
                      SizedBox(height: 5),
                      SkillLine(skill: 'Python', percentage: 0.65),
                    ],
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
