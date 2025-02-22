import 'package:flutter/material.dart';

class SubDIntroductionCallUI extends StatefulWidget {
  const SubDIntroductionCallUI({super.key});

  @override
  State<SubDIntroductionCallUI> createState() => _SubDIntroductionCallUIState();
}

class _SubDIntroductionCallUIState extends State<SubDIntroductionCallUI> {
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
                  child: Image.asset('assets/images/intro_img04.png',
                      fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Text.rich(
              TextSpan(
                  text:
                      "The water isn't running\nPower outage\nCan't use phonecall\nInternet issues\nor Can't use Social Media\n Can't wait ",
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
            Text("Utility\nHotline",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
