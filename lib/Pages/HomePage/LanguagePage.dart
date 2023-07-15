// ignore_for_file: file_names, must_be_immutable
import 'package:bhagwadgita/Pages/ContentsPage/contentsPage.dart';
import 'package:bhagwadgita/Pages/ContentsPage/contentsPageHindi.dart';
import 'package:bhagwadgita/Pages/HomePage/Features/inputfield.dart';
import 'package:bhagwadgita/Pages/HomePage/Features/nextButton.dart';
import 'package:flutter/material.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  TextEditingController inputController = TextEditingController();

  String dropdownvalue = 'English';

  // List of items in our dropdown menu
  var items = [
    'English',
    'Hindi',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
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
                    'assets/images/LanguagePageImage.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(13, 35, 8, 8),
              child: EmailInputFb2(inputController: inputController),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(13, 180, 8, 8),
              child: Text(
                "Choose Your Language :",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color:
                        const Color.fromARGB(255, 13, 246, 9).withOpacity(.9)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(13, 220, 8, 8),
              child: Text(
                "BhagwadGita App is currently available in English and Hindi. \nChoose Yours!",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 0, 0, 0).withOpacity(.9)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 320, 8, 8),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: DropdownButton(
                  value: dropdownvalue,
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                  isExpanded: true,
                  underline: const SizedBox(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width / 3.9, 700, 8, 8),
              child: GradientButtonFb1(
                onPressed: () {
                  if (dropdownvalue == 'English') {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CatalogScreen(
                                  userName: inputController.text,
                                )));
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CatalogScreenHindi(
                                  userName: inputController.text,
                                )));
                  }
                },
                text: "Next",
              ),
            )
          ],
        ),
      ),
    );
  }
}
