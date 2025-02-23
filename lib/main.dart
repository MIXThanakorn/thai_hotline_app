import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thai_hotline_app/views/introduction_call_ui.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  )); //transparent status bar color

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(ThaiHotlineApp())); //make it can't flip
}

class ThaiHotlineApp extends StatefulWidget {
  const ThaiHotlineApp({super.key});

  @override
  State<ThaiHotlineApp> createState() => _ThaiHotlineAppState();
}

class _ThaiHotlineAppState extends State<ThaiHotlineApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroductionCallUI(),
        theme: ThemeData(textTheme: GoogleFonts.acmeTextTheme()));
  }
}
