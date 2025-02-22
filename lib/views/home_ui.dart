import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thai_hotline_app/views/about_ui.dart';
import 'package:thai_hotline_app/views/home_widget/sub_a_home_ui.dart';
import 'package:thai_hotline_app/views/home_widget/sub_b_home_ui.dart';
import 'package:thai_hotline_app/views/home_widget/sub_c_home_ui.dart';
import 'package:thai_hotline_app/views/home_widget/sub_d_home_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  int _selectedIndex = 0;

  List showUI = [
    SubAHomeUI(),
    SubBHomeUI(),
    SubCHomeUI(),
    SubDHomeUI(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 46, 139, 87),
        title: Text(
          'THAILAND Hotline',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutUI(),
                  ),
                );
              },
              icon: Icon(
                Icons.error_outline,
                color: Colors.black,
                size: 30,
              ))
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: const Color.fromARGB(255, 46, 139, 87),
        ),
        child: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                _selectedIndex = value;
              });
            },
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.carOn),
                label: 'Travel',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.warning),
                label: 'Emergency',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.dollarSign),
                label: 'Bank',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.water_drop_outlined),
                label: 'Utility',
              ),
            ]),
      ),
      body: showUI[_selectedIndex],
    );
  }
}
