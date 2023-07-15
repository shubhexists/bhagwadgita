// ignore_for_file: file_names

import 'dart:convert';
import 'dart:io';

import 'package:bhagwadgita/Pages/ContentsPage/Features/cards.dart';
import 'package:bhagwadgita/Pages/Shloka%20Page/shlokaPage.dart';
import 'package:flutter/material.dart';

Future _readJsonFile(String filePath) async {
  File file = File(filePath);
  String jsonContent = await file.readAsString();
  dynamic jsonData = json.decode(jsonContent);
  return jsonData;
}

class CatalogScreenHindi extends StatefulWidget {
  final String userName;
  const CatalogScreenHindi({Key? key, required this.userName})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CatalogScreenHindiState createState() => _CatalogScreenHindiState();
}

class _CatalogScreenHindiState extends State<CatalogScreenHindi> {
  double? screenWidth;

  @override
  Widget build(BuildContext context) {
    screenWidth ??= MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: _readJsonFile("assets/json_data/dataset_hindi.json"),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Scaffold(
              body: Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.black,
                ),
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/HomeScreenBackGround.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListView(
              padding: const EdgeInsets.all(16.0),
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Hi, ${widget.userName}!",
                  style: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Start your Spiritual Journey Now!",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                CardFb2(
                    text: "Chapter 1",
                    imageUrl: 'assets/images/CardImages/VisadaYoga.jpg',
                    subtitle: "Visada Yoga",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShlokaScreen(
                                    courseImage: const AssetImage(
                                        'assets/images/CardImages/VisadaYoga.jpg'),
                                    courseInfo: '1',
                                    courseName: 'Visada Yoga',
                                    coursePrice: 'Shloka',
                                    content: snapshot.data,
                                  )));
                    }),
                const SizedBox(
                  height: 5,
                ),
                CardFb2(
                    text: "Chapter 2",
                    imageUrl: 'assets/images/CardImages/SankhyaYoga.jpg',
                    subtitle: " Sankhya Yoga ",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShlokaScreen(
                                    courseImage: const AssetImage(
                                        'assets/images/CardImages/SankhyaYoga.jpg'),
                                    courseInfo: '2',
                                    courseName: 'Sankhya Yoga',
                                    coursePrice: 'Shloka',
                                    content: snapshot.data,
                                  )));
                    }),
                const SizedBox(
                  height: 5,
                ),
                CardFb2(
                    text: "Chapter 3",
                    imageUrl: 'assets/images/CardImages/KarmaYoga.jpeg',
                    subtitle: "Karma Yoga ",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShlokaScreen(
                                    courseImage: const AssetImage(
                                        'assets/images/CardImages/KarmaYoga.jpeg'),
                                    courseInfo: '3',
                                    courseName: 'Karma Yoga',
                                    coursePrice: 'Shloka',
                                    content: snapshot.data,
                                  )));
                    }),
                const SizedBox(
                  height: 5,
                ),
                CardFb2(
                    text: "Chapter 4",
                    imageUrl: 'assets/images/CardImages/jnanaYoga.png',
                    subtitle: "Jnana Yoga",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShlokaScreen(
                                    courseImage: const AssetImage(
                                        'assets/images/CardImages/jnanaYoga.png'),
                                    courseInfo: '4',
                                    courseName: 'Jnana Yoga',
                                    coursePrice: 'Shloka',
                                    content: snapshot.data,
                                  )));
                    }),
                const SizedBox(
                  height: 5,
                ),
                CardFb2(
                    text: "Chapter 5",
                    imageUrl: 'assets/images/CardImages/KarmaVairagya.jpg',
                    subtitle: "Karma Vairagya Yoga",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShlokaScreen(
                                    courseImage: const AssetImage(
                                        'assets/images/CardImages/KarmaVairagya.jpg'),
                                    courseInfo: '5',
                                    courseName: 'Karma Vairagya Yoga',
                                    coursePrice: 'Shloka',
                                    content: snapshot.data,
                                  )));
                    }),
                const SizedBox(
                  height: 5,
                ),
                CardFb2(
                    text: "Chapter 6",
                    imageUrl: 'assets/images/CardImages/AbhayasaYoga.jpg',
                    subtitle: "Abhyasa Yoga",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShlokaScreen(
                                    courseImage: const AssetImage(
                                        'assets/images/CardImages/AbhayasaYoga.jpg'),
                                    courseInfo: '6',
                                    courseName: 'Abhyasa Yoga',
                                    coursePrice: 'Shloka',
                                    content: snapshot.data,
                                  )));
                    }),
                const SizedBox(
                  height: 5,
                ),
                CardFb2(
                    text: "Chapter 7",
                    imageUrl:
                        'assets/images/CardImages/ParamahamsaVijnanaYoga.jpeg',
                    subtitle: "Paramhamsa Vijnana Yoga",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShlokaScreen(
                                    courseImage: const AssetImage(
                                        'assets/images/CardImages/ParamahamsaVijnanaYoga.jpeg'),
                                    courseInfo: '7',
                                    courseName: 'Paramhamsa Vijnana Yoga',
                                    coursePrice: 'Shloka',
                                    content: snapshot.data,
                                  )));
                    }),
                const SizedBox(
                  height: 5,
                ),
                CardFb2(
                    text: "Chapter 8",
                    imageUrl:
                        'assets/images/CardImages/AksharaParabrahmaYoga.jpeg',
                    subtitle: "Aksara-Parabrahman Yoga",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShlokaScreen(
                                    courseImage: const AssetImage(
                                        'assets/images/CardImages/AksharaParabrahmaYoga.jpeg'),
                                    courseInfo: '8',
                                    courseName: 'Aksara-Parabrahman Yoga',
                                    coursePrice: 'Shloka',
                                    content: snapshot.data,
                                  )));
                    }),
                const SizedBox(
                  height: 5,
                ),
                CardFb2(
                    text: "Chapter 9",
                    imageUrl: 'assets/images/CardImages/RajaVidyaGuhya.jpeg',
                    subtitle: "Raja-Vidya-Guhya Yoga",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShlokaScreen(
                                    courseImage: const AssetImage(
                                        'assets/images/CardImages/RajaVidyaGuhya.jpeg'),
                                    courseInfo: '9',
                                    courseName: 'Raja-Vidya-Guhya Yoga',
                                    coursePrice: 'Shloka',
                                    content: snapshot.data,
                                  )));
                    }),
                const SizedBox(
                  height: 5,
                ),
                CardFb2(
                    text: "Chapter 10",
                    imageUrl: 'assets/images/CardImages/vibhutiVistaraYoga.jpg',
                    subtitle: "Vibhuti-Vistara-Yoga",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShlokaScreen(
                                    courseImage: const AssetImage(
                                        'assets/images/CardImages/vibhutiVistaraYoga.jpg'),
                                    courseInfo: '10',
                                    courseName: 'Vibhuti-Vistara-Yoga',
                                    coursePrice: 'Shloka',
                                    content: snapshot.data,
                                  )));
                    }),
                const SizedBox(
                  height: 5,
                ),
                CardFb2(
                    text: "Chapter 11",
                    imageUrl:
                        'assets/images/CardImages/VisvarupaDarsanaYoga.jpg',
                    subtitle: "Visvarupa-Darsana Yoga",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShlokaScreen(
                                    courseImage: const AssetImage(
                                        'assets/images/CardImages/VisvarupaDarsanaYoga.jpg'),
                                    courseInfo: '11',
                                    courseName: 'Visvarupa-Darsana Yoga',
                                    coursePrice: 'Shloka',
                                    content: snapshot.data,
                                  )));
                    }),
                const SizedBox(
                  height: 5,
                ),
                CardFb2(
                    text: "Chapter 12",
                    imageUrl: 'assets/images/CardImages/BhaktiYoga.jpeg',
                    subtitle: "Bhakti Yoga",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShlokaScreen(
                                    courseImage: const AssetImage(
                                        'assets/images/CardImages/BhaktiYoga.jpeg'),
                                    courseInfo: '12',
                                    courseName: 'Bhakti Yoga',
                                    coursePrice: 'Shloka',
                                    content: snapshot.data,
                                  )));
                    }),
                const SizedBox(
                  height: 5,
                ),
                CardFb2(
                    text: "Chapter 13",
                    imageUrl:
                        'assets/images/CardImages/KsetraKsetrajnaVibhaganaYoga.jpeg',
                    subtitle: "Ksetra-Ksetrajna Vibhaga Yoga",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShlokaScreen(
                                    courseImage: const AssetImage(
                                        'assets/images/CardImages/KsetraKsetrajnaVibhaganaYoga.jpeg'),
                                    courseInfo: '13',
                                    courseName: 'Ksetra-Ksetrajna Vibhaga Yoga',
                                    coursePrice: 'Shloka',
                                    content: snapshot.data,
                                  )));
                    }),
                const SizedBox(
                  height: 5,
                ),
                CardFb2(
                    text: "Chapter 14",
                    imageUrl:
                        'assets/images/CardImages/GunatrayaVibhagaYoga.jpeg',
                    subtitle: "Gunatraya-Vibhaga Yoga",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShlokaScreen(
                                    courseImage: const AssetImage(
                                        'assets/images/CardImages/GunatrayaVibhagaYoga.jpeg'),
                                    courseInfo: '14',
                                    courseName: 'Gunatraya-Vibhaga Yoga',
                                    coursePrice: 'Shloka',
                                    content: snapshot.data,
                                  )));
                    }),
                const SizedBox(
                  height: 5,
                ),
                CardFb2(
                    text: "Chapter 15",
                    imageUrl: 'assets/images/CardImages/PurushottamYoga.jpeg',
                    subtitle: "Purusottama Yoga",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShlokaScreen(
                                    courseImage: const AssetImage(
                                        'assets/images/CardImages/PurushottamYoga.jpeg'),
                                    courseInfo: '15',
                                    courseName: 'Purusottama Yoga',
                                    coursePrice: 'Shloka',
                                    content: snapshot.data,
                                  )));
                    }),
                const SizedBox(
                  height: 5,
                ),
                CardFb2(
                    text: "Chapter 16",
                    imageUrl:
                        'assets/images/CardImages/DaivasuraSampadVibhagaYoga.jpeg',
                    subtitle: "Daivasura-Sampad-Vibhaga Yoga",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShlokaScreen(
                                    courseImage: const AssetImage(
                                        'assets/images/CardImages/DaivasuraSampadVibhagaYoga.jpeg'),
                                    courseInfo: '16',
                                    courseName: 'Daivasura-Sampad-Vibhaga Yoga',
                                    coursePrice: 'Shloka',
                                    content: snapshot.data,
                                  )));
                    }),
                const SizedBox(
                  height: 5,
                ),
                CardFb2(
                    text: "Chapter 17",
                    imageUrl:
                        'assets/images/CardImages/ShraddhaTrayaVibhagaYoga.jpeg',
                    subtitle: "Sraddhatraya-Vibhaga Yoga",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShlokaScreen(
                                    courseImage: const AssetImage(
                                        'assets/images/CardImages/ShraddhaTrayaVibhagaYoga.jpeg'),
                                    courseInfo: '17',
                                    courseName: "Sraddhatraya-Vibhaga Yoga",
                                    coursePrice: 'Shloka',
                                    content: snapshot.data,
                                  )));
                    }),
                const SizedBox(
                  height: 5,
                ),
                CardFb2(
                    text: "Chapter 18",
                    imageUrl: 'assets/images/CardImages/MoksaOpadesaYoga.jpg',
                    subtitle: "Moksa-Opadesa Yoga",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShlokaScreen(
                                    courseImage: const AssetImage(
                                        'assets/images/CardImages/MoksaOpadesaYoga.jpg'),
                                    courseInfo: '18',
                                    courseName: 'Moksa-Opadesa Yoga',
                                    coursePrice: 'Shloka',
                                    content: snapshot.data,
                                  )));
                    })
              ],
            ),
          ]));
        }
      },
    );
  }
}
