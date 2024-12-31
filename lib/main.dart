import 'package:flutter/material.dart';
import 'skillline.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TM Sachith Portfolio',
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
                        onPressed: () async {
                          const url = 'https://www.facebook.com';
                          // ignore: deprecated_member_use
                          if (await canLaunch(url)) {
                            // ignore: deprecated_member_use
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.email,
                            color: Colors
                                .white), // Replace with an appropriate icon
                        onPressed: () async {
                          const url = 'https://www.facebook.com';
                          // ignore: deprecated_member_use
                          if (await canLaunch(url)) {
                            // ignore: deprecated_member_use
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                      IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.white,
                        ),
                        onPressed: () async {
                          const url = 'https://www.instagram.com/tmsachith/';
                          // ignore: deprecated_member_use
                          if (await canLaunch(url)) {
                            // ignore: deprecated_member_use
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                      IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.xTwitter,
                          color: Colors.white,
                        ),
                        onPressed: () async {
                          const url = 'https://www.facebook.com';
                          // ignore: deprecated_member_use
                          if (await canLaunch(url)) {
                            // ignore: deprecated_member_use
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                      IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.github,
                          color: Colors.white,
                        ),
                        onPressed: () async {
                          const url = 'https://www.facebook.com';
                          // ignore: deprecated_member_use
                          if (await canLaunch(url)) {
                            // ignore: deprecated_member_use
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                      IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.white,
                        ),
                        onPressed: () async {
                          const url = 'https://www.facebook.com';
                          // ignore: deprecated_member_use
                          if (await canLaunch(url)) {
                            // ignore: deprecated_member_use
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
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
                      SkillLine(skill: 'Programming', percentage: 0.9),
                      SizedBox(height: 5),
                      SkillLine(skill: 'Mathematics', percentage: 0.7),
                      SizedBox(height: 5),
                      SkillLine(skill: 'Social Skills', percentage: 0.8),
                      SizedBox(height: 5),
                      SkillLine(skill: 'Sports', percentage: 0.75),
                      SizedBox(height: 5),
                      SkillLine(skill: 'Leadership Skills', percentage: 0.8),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          'My Brands',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.white38,
                        thickness: 1,
                        indent: 50,
                        endIndent: 50,
                      ),
                      const SizedBox(height: 10),
                      GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.network(
                              'https://tmsachith.github.io/img/tmsachith.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.network(
                              'https://tmsachith.github.io/img/helroundex%20Lanka.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.network(
                              'https://tmsachith.github.io/img/texttomp3.webp',
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.network(
                              'https://tmsachith.github.io/img/bookfree.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.network(
                              'https://tmsachith.github.io/img/helroundex%20store.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
