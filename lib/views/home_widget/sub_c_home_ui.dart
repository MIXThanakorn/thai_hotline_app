import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SubCHomeUI extends StatefulWidget {
  const SubCHomeUI({super.key});

  @override
  State<SubCHomeUI> createState() => _SubCHomeUIState();
}

List<String> Logo = [
  'assets/images/bank01.png',
  'assets/images/bank02.png',
  'assets/images/bank03.png',
  'assets/images/bank04.png',
  'assets/images/bank05.png',
  'assets/images/bank06.png',
  'assets/images/bank07.png',
  'assets/images/bank08.png',
  'assets/images/bank09.png',
  'assets/images/bank10.png',
  'assets/images/bank11.png',
  'assets/images/bank12.png',
  'assets/images/bank13.png',
  'assets/images/bank14.png',
  'assets/images/bank15.png',
  'assets/images/bank16.png',
];

List<String> pNumber = [
  '1333',
  '1115',
  '028888888',
  '021111111',
  '1572',
  '1428',
  '1588',
  '1327',
  '026459000',
  '027777777',
  '021655555',
  '026975454',
  '022851555',
  '026336000',
  '022042766',
  '026267777',
];

List<String> pName = [
  "ธนาคารกรุงเทพ",
  "ธนาคารออมสิน",
  "ธนาคารกสิกรไทย",
  "ธนาคารกรุงไทย",
  "ธนาคารกรุงสี",
  "ธนาคารธนชาต",
  "ธนาคารซิตี้แบงค์",
  "ธนาคาร LHB",
  "ธนาคารธอส.",
  "ธนาคารไทยพาณิชย์",
  "ธนาคารเกียรตินาคิน",
  "ธนาคารไทยเครดิต",
  "ธนาคาร UOB",
  "ธนาคารทิสโก้",
  "ธนาคารอิสลาม",
  "ธนาคารซีไอเอ็มบีไทย",
];

class _SubCHomeUIState extends State<SubCHomeUI> {
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
                      child: Image.asset('assets/images/home_img03.png',
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
                                            fontSize: 11.5,
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
