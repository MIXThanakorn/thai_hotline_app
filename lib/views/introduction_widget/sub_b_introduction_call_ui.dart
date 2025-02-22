import 'package:flutter/material.dart';

class SubBIntroductionCallUI extends StatefulWidget {
  const SubBIntroductionCallUI({super.key});

  @override
  State<SubBIntroductionCallUI> createState() => _SubBIntroductionCallUIState();
}

class _SubBIntroductionCallUIState extends State<SubBIntroductionCallUI> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.001),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.height * 1,
                child: SizedBox(
                  child: Image.asset('assets/images/intro_img02.jpg',
                      fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Text.rich(
              TextSpan(
                  text:
                      "Accident, emergency illness,fire\nlost car, dangerous animal enters to house\nEverything can happen all the time. \nWould it be better?\nWhen encountering an accident, an emergency, or a store incident\nYou can call to inform us in a timely\nNo need wait ",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: "Call now!!",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    )
                  ]),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Text("Emergency\nHotline",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
