import 'package:flutter/material.dart';

class SubCIntroductionCallUI extends StatefulWidget {
  const SubCIntroductionCallUI({super.key});

  @override
  State<SubCIntroductionCallUI> createState() => _SubCIntroductionCallUIState();
}

class _SubCIntroductionCallUIState extends State<SubCIntroductionCallUI> {
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
                  child: Image.asset('assets/images/intro_img03.jpg',
                      fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Text.rich(
              TextSpan(
                  text:
                      "When money is important for living life\nEat, travel, buy products, travel,\nmedical care or got scamed Call by scammer \nYou can contact the bank directly. ",
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
            Text("Bank\nHotline",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
