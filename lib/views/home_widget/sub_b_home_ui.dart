import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SubBHomeUI extends StatefulWidget {
  const SubBHomeUI({super.key});

  @override
  State<SubBHomeUI> createState() => _SubBHomeUIState();
}

List<String> Logo = [
  'assets/images/emergency01.png',
  'assets/images/emergency02.png',
  'assets/images/emergency01.png',
  'assets/images/emergency03.png',
  'assets/images/emergency04.png',
  'assets/images/emergency05.png',
  'assets/images/emergency06.png',
  'assets/images/emergency07.png',
  'assets/images/emergency08.png',
];

List<String> pNumber = [
  '191',
  '199',
  '1192',
  '1196',
  '1300',
  '1356',
  '1554',
  '1646',
  '1669',
];

List<String> pName = [
  "เหตุด่วนเหตุร้าย",
  "ไฟไหม้,สัตว์เข้าบ้าน",
  "สายด่วนรถหาย",
  "อุบัติเหตุทางน้ำ",
  "คนหาย",
  "ศูนย์ปลอดภัยคมนาคม",
  "หน่วยแพทย์กู้ชีพ",
  "ศูนย์เอราวัณ",
  "เจ็บป่วยฉุกเฉิน",
];

class _SubBHomeUIState extends State<SubBHomeUI> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: SizedBox(
                      child: Image.asset('assets/images/home_img02.png',
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                Text(
                  "Emergency Hotline",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Container(
                    height: 500,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: Logo.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Image.asset(
                                  Logo[index],
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 175,
                                  height: 100,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          pName[index],
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 3),
                                        Text(
                                          pNumber[index],
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 20),
                                    child: IconButton(
                                      onPressed: () {
                                        _makePhoneCall(pNumber[index]);
                                      },
                                      icon: Icon(Icons.phone_outlined),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
