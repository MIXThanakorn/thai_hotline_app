import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:thai_hotline_app/views/home_ui.dart';

class IntroductionCallUI extends StatefulWidget {
  const IntroductionCallUI({super.key});

  @override
  State<IntroductionCallUI> createState() => _IntroductionCallUIState();
}

class _IntroductionCallUIState extends State<IntroductionCallUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            titleWidget: Text.rich(
              TextSpan(
                  text: "When having to travel in the city Leave the provinces"
                      "\nHow close or far will it be?"
                      "\nAsk about travel and"
                      "\ntraffic information. expressway,"
                      "\nmain road, secondary road"
                      "\nRoute to avoid traffic jams"
                      "\nInformation on buses,trains,BTS, MRT"
                      "\nwhy are you delaying  ",
                  children: [
                    TextSpan(
                        text: "Call now!!",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.red,
                        ))
                  ],
                  style: TextStyle(fontSize: 13)),
              textAlign: TextAlign.center,
            ),
            bodyWidget: Text.rich(
              TextSpan(
                  text: "Travel"
                      "\nHotline",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              textAlign: TextAlign.center,
            ),
            image: Image.asset(
              "assets/images/intro_img01.jpg",
              width: MediaQuery.of(context).size.width * 0.8,
            ),
          ),
        ],
        showSkipButton: true,
        skip: Text(
          "Skip",
        ),
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Theme.of(context).colorScheme.secondary,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        ),
        showDoneButton: true,
        done: Text(
          "Done",
        ),
        showNextButton: true,
        next: Text(
          "Next",
        ),
        onDone: () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeUI())),
        scrollPhysics: ScrollPhysics(parent: BouncingScrollPhysics()),
      ),
    );
  }
}
