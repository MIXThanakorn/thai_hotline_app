import 'package:flutter/material.dart';

class SubAIntroductionCallUI extends StatefulWidget {
  const SubAIntroductionCallUI({super.key});

  @override
  State<SubAIntroductionCallUI> createState() => _SubAIntroductionCallUIState();
}

class _SubAIntroductionCallUIState extends State<SubAIntroductionCallUI> {
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
                  child: Image.asset('assets/images/intro_img01.jpg',
                      fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Text.rich(
              TextSpan(
                  text:
                      "When having to travel in the city Leave the provinces How close or far will it be?\nAsk about travel and\ntraffic information. expressway\nmain road, secondary road\nRoute to avoid traffic jams\nInformation on buses,trains,BTS, MRT\nwhat are you waiting for ",
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
            Text("Travel\nHotline",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
