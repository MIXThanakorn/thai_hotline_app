// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class AboutUI extends StatefulWidget {
  const AboutUI({super.key});

  @override
  State<AboutUI> createState() => _AboutUIState();
}

class _AboutUIState extends State<AboutUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 46, 139, 87),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
            size: 25,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'THAILAND Hotline',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              'Created by',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Image.asset(
              'assets/images/saulogo.png',
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              'Southeast Asia University',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/self.jpg'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Text.rich(
              TextSpan(
                  text:
                      "6652410021\nThanakorn Thongpraiwan\ns6652410021@sau.ac.th\nDigital Technology & Innovention\nArt & Science",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
