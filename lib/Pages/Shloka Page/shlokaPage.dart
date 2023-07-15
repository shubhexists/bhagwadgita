// ignore_for_file: file_names, unused_field, avoid_print, override_on_non_overriding_member, prefer_typing_uninitialized_variables
import 'package:bhagwadgita/Pages/Shloka%20Page/features/buttons.dart';
import 'package:flutter/material.dart';

class ShlokaScreen extends StatefulWidget {
  final String courseName;
  final AssetImage courseImage;
  final String courseInfo;
  final String coursePrice;
  final content;

  const ShlokaScreen(
      {Key? key,
      required this.courseName,
      required this.courseImage,
      required this.courseInfo,
      required this.coursePrice,
      required this.content})
      : super(key: key);

  @override
  State<ShlokaScreen> createState() => _ShlokaScreenState();
}

class _ShlokaScreenState extends State<ShlokaScreen> {
  int currentShloka = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.courseCardColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: MyTheme.catalogueButtonColor),
      ),
      body: Stack(
        children: [
          Column(children: [
            Expanded(
              flex: 35,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.black,
                    ),
                    image: DecorationImage(
                      image: widget.courseImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(
              flex: 65,
            )
          ]),
          DraggableScrollableSheet(
            initialChildSize: 0.65,
            minChildSize: 0.65,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(32.0))),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListView(
                    controller: scrollController,
                    children: [
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: MyTheme.grey.withOpacity(0.5),
                              borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(1.0))),
                          height: 4,
                          width: 48,
                        ),
                      ),
                      MyTheme.mediumVerticalPadding,
                      Text(widget.courseName,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      Text("Chapter ${widget.courseInfo}",
                          style: TextStyle(fontSize: 16, color: MyTheme.grey)),
                      MyTheme.largeVerticalPadding,
                      Row(
                        children: [
                          Text("${widget.coursePrice} $currentShloka",
                              style: const TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                          const SizedBox(width: 30,),
                          SizedBox(
                            width: 200,
                              child: Column(
                            children: [
                              Text(
                                "Progress : ${( (currentShloka /
                                    widget.content["chapters"]
                                        [widget.courseInfo]["verses_count"])*100).round()} %",
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              LinearProgressIndicator(
                                value: currentShloka /
                                    widget.content["chapters"]
                                        [widget.courseInfo]["verses_count"],
                                backgroundColor: MyTheme.courseCardColor,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    MyTheme.progressColor),
                              ),
                            ],
                          ))
                        ],
                      ),
                      MyTheme.mediumVerticalPadding,
                      Text(
                        widget.content["verses"][widget.courseInfo]
                            [currentShloka.toString()]["text"],
                        style: const TextStyle(fontSize: 16),
                      ),
                      MyTheme.mediumVerticalPadding,
                      const Text(
                        "Meaning",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      MyTheme.mediumVerticalPadding,
                      Text(
                        widget.content["verses"][widget.courseInfo]
                            [currentShloka.toString()]["meaning"],
                        style: const TextStyle(fontSize: 16),
                      ),
                      MyTheme.mediumVerticalPadding,
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          const Spacer(
                            flex: 2,
                          ),
                          Visibility(
                            visible: (currentShloka == 1) ? false : true,
                            child: GradientButtonFb4(
                              onPressed: () {
                                setState(() {
                                  currentShloka--;
                                });
                              },
                              text: "Prev",
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          GradientButtonFb4(
                            onPressed: () {},
                            text: "💜",
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Visibility(
                            visible: (currentShloka ==
                                    widget.content["chapters"]
                                        [widget.courseInfo]["verses_count"])
                                ? false
                                : true,
                            child: GradientButtonFb4(
                              onPressed: () {
                                setState(() {
                                  currentShloka++;
                                });
                              },
                              text: "Next",
                            ),
                          ),
                          const Spacer(
                            flex: 2,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class MyTheme {
  static Color get backgroundColor => const Color(0xFFF7F7F7);
  static Color get grey => const Color(0xFF999999);
  static Color get catalogueCardColor =>
      const Color(0xFFBAE5D4).withOpacity(0.5);
  static Color get catalogueButtonColor => const Color(0xFF29335C);
  static Color get courseCardColor => const Color(0xFFEDF1F1);
  static Color get progressColor => const Color(0xFF36F1CD);

  static Padding get largeVerticalPadding =>
      const Padding(padding: EdgeInsets.only(top: 32.0));

  static Padding get mediumVerticalPadding =>
      const Padding(padding: EdgeInsets.only(top: 16.0));

  static Padding get smallVerticalPadding =>
      const Padding(padding: EdgeInsets.only(top: 8.0));

  static ThemeData get theme => ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blueGrey,
      ).copyWith(
        cardTheme: const CardTheme(
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0)))),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0.0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
                catalogueButtonColor), // Button color
            foregroundColor: MaterialStateProperty.all<Color>(
                Colors.white), // Text and icon color
          ),
        ),
      );
}
