import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:thai_hotline_app/views/home_ui.dart';
import 'package:thai_hotline_app/views/introduction_widget/sub_a_introduction_call_ui.dart';
import 'package:thai_hotline_app/views/introduction_widget/sub_b_introduction_call_ui.dart';
import 'package:thai_hotline_app/views/introduction_widget/sub_c_introduction_call_ui.dart';
import 'package:thai_hotline_app/views/introduction_widget/sub_d_introduction_call_ui.dart';

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
          PageViewModel(title: '', bodyWidget: SubAIntroductionCallUI()),
          PageViewModel(title: '', bodyWidget: SubBIntroductionCallUI()),
          PageViewModel(title: '', bodyWidget: SubCIntroductionCallUI()),
          PageViewModel(title: '', bodyWidget: SubDIntroductionCallUI()),
        ],
        showSkipButton: true,
        skip: Text(
          "Skip",
        ),
        dotsDecorator: DotsDecorator(
          size: const Size.square(20.0),
          activeSize: const Size(20.0, 20.0),
          activeColor: Theme.of(context).colorScheme.secondary,
          color: const Color.fromARGB(255, 175, 175, 175),
          spacing: const EdgeInsets.symmetric(horizontal: 4.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        ),
        showDoneButton: true,
        done: Text(
          "Call now",
        ),
        showNextButton: true,
        next: Icon(Icons.arrow_forward_ios_outlined),
        onDone: () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeUI())),
        scrollPhysics: BouncingScrollPhysics(),
      ),
    );
  }
}
