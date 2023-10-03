import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/slide_A.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatelessWidget {
  static const String routename = "home";
  final myitems = [
    Image.asset("assets/images/img_5.png"),
    Image.asset("assets/images/img_5.png"),
    Image.asset("assets/images/img_5.png")
  ];
  int myindex = 0;
  bool _select = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/img_1.png",
                    width: 40,
                    height: 40,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Moody",
                    style: GoogleFonts.habibi(
                        fontWeight: FontWeight.w800, fontSize: 25),
                  ),
                  Spacer(),
                  Badge(
                    smallSize: 10,
                    largeSize: 10,
                    child: Icon(
                      Icons.notifications_none_rounded,
                      size: 24,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Hello,",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                    "Sara Rose",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text("How are you feeling today ?",
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20))
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(228, 231, 236, 1),
                        // borderRadius: BorderRadius.circular(35),
                        shape: BoxShape.circle),
                    child: Image.asset(
                      "assets/images/img_2.png",
                      width: 40,
                      height: 40,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(228, 231, 236, 1),
                        // borderRadius: BorderRadius.circular(35),
                        shape: BoxShape.circle),
                    child: Image.asset(
                      "assets/images/img_3.png",
                      width: 40,
                      height: 40,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(228, 231, 236, 1),
                        // borderRadius: BorderRadius.circular(35),
                        shape: BoxShape.circle),
                    child: Image.asset(
                      "assets/images/img_4.png",
                      width: 40,
                      height: 40,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(228, 231, 236, 1),
                        // borderRadius: BorderRadius.circular(35),
                        shape: BoxShape.circle),
                    child: Image.asset(
                      "assets/images/img_15.png",
                      width: 40,
                      height: 40,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    "Features",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "see more",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.green,
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              CarouselSlider(
                items: myitems,
                options: CarouselOptions(
                  autoPlay: true,
                  height: 200,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayInterval: const Duration(seconds: 2),
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                ),
              ),
              AnimatedSmoothIndicator(
                activeIndex: myindex,
                count: myitems.length,
                effect: WormEffect(
                    dotColor: Colors.grey.shade300, activeDotColor: Colors.grey),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Features",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "see more",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.green,
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: ChoiceChip(
                      backgroundColor: Color.fromRGBO(249, 245, 255, 1),
                      avatar: Image.asset("assets/images/img_6.png"),
                      label: Center(child: Text("Relaxtion")),
                      selected: _select,
                      onSelected: (value) {
                        _select = value;
                      },
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: ChoiceChip(
                      backgroundColor: Color.fromRGBO(253, 242, 250, 1),
                      avatar: Image.asset("assets/images/img_7.png"),
                      label: Center(child: Text("Meditation")),
                      selected: _select,
                      onSelected: (value) {
                        _select = value;
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: ChoiceChip(
                      backgroundColor: Color.fromRGBO(255, 250, 245, 1),
                      avatar: Image.asset("assets/images/img_8.png"),
                      label: Center(child: Text("Beathing")),
                      selected: _select,
                      onSelected: (value) {
                        _select = value;
                      },
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                      child: ChoiceChip(
                    backgroundColor: Color.fromRGBO(240, 249, 255, 1),
                    selectedColor: Colors.red,
                    avatar: Image.asset("assets/images/img_9.png"),
                    label: Center(child: Text("Yoka")),
                    selected: _select,
                    onSelected: (value) {
                      _select = value;
                    },
                  ))
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 24,
          showSelectedLabels: true,
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          onTap: (value) => Navigator.pushNamed(context, FiTest.routename),
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/img_10.png")),
              label: '.',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/img_11.png")),
              label: 'item',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/img_12.png")),
              label: 'celender',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/img_13.png")),
              label: 'profile',
            )
          ]),
    ));
  }
}

