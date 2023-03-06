// ignore_for_file: file_names

import 'package:bhagwadgita/Pages/ContentsPage/Features/cards.dart';
import 'package:bhagwadgita/Pages/Shloka%20Page/shlokaPage.dart';
import 'package:flutter/material.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CatalogScreenState createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  double? screenWidth;

  @override
  Widget build(BuildContext context) {
    screenWidth ??= MediaQuery.of(context).size.width;

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
              '/home/jerry/bhagwadgita/bhagwadgita/assets/images/HomeScreenBackGround.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
      ListView(
        padding: const EdgeInsets.all(16.0),
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text(
            "Hi, Daria!",
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            "Start your Spiritual Journey Now!",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          CardFb2(
              text: "Chapter 1",
              imageUrl:
                  '/home/jerry/bhagwadgita/bhagwadgita/assets/images/CardImages/VisadaYoga.jpg',
              subtitle: "Visada Yoga",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShlokaScreen(
                              courseImage: AssetImage(
                                  '/home/jerry/bhagwadgita/bhagwadgita/assets/images/CardImages/VisadaYoga.jpg'),
                              courseInfo: 'Chapter 1',
                              courseName: 'Visada Yoga',
                              coursePrice: 'Shloka 1',
                            )));
              }),
          const SizedBox(
            height: 5,
          ),
          CardFb2(
              text: "Chapter 2",
              imageUrl:
                  '/home/jerry/bhagwadgita/bhagwadgita/assets/images/CardImages/SankhyaYoga.jpg',
              subtitle: " Sankhya Yoga ",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShlokaScreen(
                              courseImage: AssetImage('/home/jerry/bhagwadgita/bhagwadgita/assets/images/CardImages/SankhyaYoga.jpg'),
                              courseInfo: 'Chapter 2',
                              courseName: 'Sankhya Yoga',
                              coursePrice: 'Shloka 1',
                            )));
              }),
          const SizedBox(
            height: 5,
          ),
          CardFb2(
              text: "Chapter 3",
              imageUrl:
                  '/home/jerry/bhagwadgita/bhagwadgita/assets/images/CardImages/KarmaYoga.jpeg',
              subtitle: "Karma Yoga ",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShlokaScreen(
                              courseImage: AssetImage('/home/jerry/bhagwadgita/bhagwadgita/assets/images/CardImages/KarmaYoga.jpeg'),
                              courseInfo: 'Chapter 3',
                              courseName: 'Karma Yoga',
                              coursePrice: 'Shloka 1',
                            )));
              }),
          const SizedBox(
            height: 5,
          ),
          CardFb2(
              text: "Chapter 4",
              imageUrl:
                  '/home/jerry/bhagwadgita/bhagwadgita/assets/images/CardImages/jnanaYoga.png',
              subtitle: "Jnana Yoga",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShlokaScreen(
                              courseImage: AssetImage('/home/jerry/bhagwadgita/bhagwadgita/assets/images/CardImages/jnanaYoga.png'),
                              courseInfo: 'Chapter 4',
                              courseName: 'Jnana Yoga',
                              coursePrice: 'Shloka 1',
                            )));
              }),
          const SizedBox(
            height: 5,
          ),
          CardFb2(
              text: "Chapter 5",
              imageUrl:
                  '/home/jerry/bhagwadgita/bhagwadgita/assets/images/CardImages/KarmaVairagya.jpg',
              subtitle: "Karma Vairagya Yoga",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShlokaScreen(
                              courseImage: AssetImage('/home/jerry/bhagwadgita/bhagwadgita/assets/images/CardImages/KarmaVairagya.jpg'),
                              courseInfo: '',
                              courseName: '',
                              coursePrice: '',
                            )));
              }),
          const SizedBox(
            height: 5,
          ),
          CardFb2(
              text: "Chapter 6",
              imageUrl:
                  '/home/jerry/bhagwadgita/bhagwadgita/assets/images/CardImages/AbhayasaYoga.jpg',
              subtitle: "Abhyasa Yoga",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShlokaScreen(
                              courseImage: AssetImage(''),
                              courseInfo: '',
                              courseName: '',
                              coursePrice: '',
                            )));
              }),
          const SizedBox(
            height: 5,
          ),
          CardFb2(
              text: "Chapter 7",
              imageUrl:
                  '/home/jerry/bhagwadgita/bhagwadgita/assets/images/CardImages/ParamahamsaVijnanaYoga.jpeg',
              subtitle: "Paramhamsa Vijnana Yoga",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShlokaScreen(
                              courseImage: AssetImage(''),
                              courseInfo: '',
                              courseName: '',
                              coursePrice: '',
                            )));
              }),
          const SizedBox(
            height: 5,
          ),
          CardFb2(
              text: "Chapter 8",
              imageUrl:
                  '/home/jerry/bhagwadgita/bhagwadgita/assets/images/CardImages/AksharaParabrahmaYoga.jpeg',
              subtitle: "Aksara-Parabrahman Yoga",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShlokaScreen(
                              courseImage: AssetImage(''),
                              courseInfo: '',
                              courseName: '',
                              coursePrice: '',
                            )));
              }),
          const SizedBox(
            height: 5,
          ),
          CardFb2(
              text: "Chapter 9",
              imageUrl:
                  '/home/jerry/bhagwadgita/bhagwadgita/assets/images/CardImages/RajaVidyaGuhya.jpeg',
              subtitle: "Raja-Vidya-Guhya Yoga",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShlokaScreen(
                              courseImage: AssetImage(''),
                              courseInfo: '',
                              courseName: '',
                              coursePrice: '',
                            )));
              }),
          const SizedBox(
            height: 5,
          ),
          CardFb2(
              text: "Chapter 10",
              imageUrl:
                  '/home/jerry/bhagwadgita/bhagwadgita/assets/images/CardImages/vibhutiVistaraYoga.jpg',
              subtitle: "Vibhuti-Vistara-Yoga",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShlokaScreen(
                              courseImage: AssetImage(''),
                              courseInfo: '',
                              courseName: '',
                              coursePrice: '',
                            )));
              }),
          const SizedBox(
            height: 5,
          ),
          CardFb2(
              text: "Chapter 11",
              imageUrl:
                  '/home/jerry/bhagwadgita/bhagwadgita/assets/images/CardImages/VisvarupaDarsanaYoga.jpg',
              subtitle: "Visvarupa-Darsana Yoga",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShlokaScreen(
                              courseImage: AssetImage(''),
                              courseInfo: '',
                              courseName: '',
                              coursePrice: '',
                            )));
              }),
          const SizedBox(
            height: 5,
          ),
          CardFb2(
              text: "Chapter 12",
              imageUrl:
                  '/home/jerry/bhagwadgita/bhagwadgita/assets/images/CardImages/BhaktiYoga.jpeg',
              subtitle: "Bhakti Yoga",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShlokaScreen(
                              courseImage: AssetImage(''),
                              courseInfo: '',
                              courseName: '',
                              coursePrice: '',
                            )));
              }),
          const SizedBox(
            height: 5,
          ),
          CardFb2(
              text: "Chapter 13",
              imageUrl:
                  '/home/jerry/bhagwadgita/bhagwadgita/assets/images/CardImages/KsetraKsetrajnaVibhaganaYoga.jpeg',
              subtitle: "Ksetra-Ksetrajna Vibhaga Yoga",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShlokaScreen(
                              courseImage: AssetImage(''),
                              courseInfo: '',
                              courseName: '',
                              coursePrice: '',
                            )));
              }),
          const SizedBox(
            height: 5,
          ),
          CardFb2(
              text: "Chapter 14",
              imageUrl:
                  '/home/jerry/bhagwadgita/bhagwadgita/assets/images/CardImages/GunatrayaVibhagaYoga.jpeg',
              subtitle: "Gunatraya-Vibhaga Yoga",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShlokaScreen(
                              courseImage: AssetImage(''),
                              courseInfo: '',
                              courseName: '',
                              coursePrice: '',
                            )));
              }),
          const SizedBox(
            height: 5,
          ),
          CardFb2(
              text: "Chapter 15",
              imageUrl:
                  '/home/jerry/bhagwadgita/bhagwadgita/assets/images/CardImages/PurushottamYoga.jpeg',
              subtitle: "Purusottama Yoga",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShlokaScreen(
                              courseImage: AssetImage(''),
                              courseInfo: '',
                              courseName: '',
                              coursePrice: '',
                            )));
              }),
          const SizedBox(
            height: 5,
          ),
          CardFb2(
              text: "Chapter 16",
              imageUrl:
                  '/home/jerry/bhagwadgita/bhagwadgita/assets/images/CardImages/DaivasuraSampadVibhagaYoga.jpeg',
              subtitle: "Daivasura-Sampad-Vibhaga Yoga",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShlokaScreen(
                              courseImage: AssetImage(''),
                              courseInfo: '',
                              courseName: '',
                              coursePrice: '',
                            )));
              }),
          const SizedBox(
            height: 5,
          ),
          CardFb2(
              text: "Chapter 17",
              imageUrl:
                  '/home/jerry/bhagwadgita/bhagwadgita/assets/images/CardImages/ShraddhaTrayaVibhagaYoga.jpeg',
              subtitle: "Sraddhatraya-Vibhaga Yoga",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShlokaScreen(
                              courseImage: AssetImage(''),
                              courseInfo: '',
                              courseName: '',
                              coursePrice: '',
                            )));
              }),
          const SizedBox(
            height: 5,
          ),
          CardFb2(
              text: "Chapter 18",
              imageUrl:
                  '/home/jerry/bhagwadgita/bhagwadgita/assets/images/CardImages/MoksaOpadesaYoga.jpg',
              subtitle: "Moksa-Opadesa Yoga",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShlokaScreen(
                              courseImage: AssetImage(''),
                              courseInfo: '',
                              courseName: '',
                              coursePrice: '',
                            )));
              })
        ],
      ),
    ]));
  }
}
