import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/Container.dart';
import 'package:practice/slide_B.dart';


import 'Card.dart';

class FiTest extends StatelessWidget {
  static const String routename = "fitest";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Image.asset(
                        "assets/images/img_14.png",
                        width: 56.42,
                        height: 56.42,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, Jade',
                          style: GoogleFonts.inter(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Ready to workout?',
                          style: GoogleFonts.inter(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    const Spacer(),
                    const Badge(
                      smallSize: 10,
                      child: Icon(Icons.notifications),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                IntrinsicHeight(
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffF8F9FC),
                          borderRadius: BorderRadius.circular(8)),
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyCard(
                            img: 'assets/images/img_16.png',
                            firstText: 'Heart Rate',
                            secondText: '81',
                            thirdText: 'BPM',
                          ),
                          VerticalDivider(
                            thickness: 1,
                            color: Color(0xffD9D9D9),
                          ),
                          MyCard(
                            img: 'assets/images/img_17.png',
                            firstText: 'To-do',
                            secondText: '32,5',
                            thirdText: '%',
                          ),
                          VerticalDivider(
                            thickness: 1,
                            color: Color(0xffD9D9D9),
                          ),
                          MyCard(
                            img: 'assets/images/img_18.png',
                            firstText: 'Calo',
                            secondText: '1000',
                            thirdText: 'Cal',
                          ),
                          VerticalDivider(
                            thickness: 1,
                            color: Color(0xffD9D9D9),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Workout Programs',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TabBar(
                    isScrollable: true,
                    padding: const EdgeInsets.all(10),
                    tabs: [
                      Text(
                        'All  Type',
                        style: GoogleFonts.inter(
                            color: const Color(0xff363F72), fontSize: 16),
                      ),
                      Text(
                        'Full Body',
                        style: GoogleFonts.inter(
                            color: const Color(0xff667085), fontSize: 16),
                      ),
                      Text(
                        'Upper',
                        style: GoogleFonts.inter(
                            color: const Color(0xff667085), fontSize: 16),
                      ),
                      Text(
                        'Lower',
                        style: GoogleFonts.inter(
                            color: const Color(0xff667085), fontSize: 16),
                      )
                    ]),
                SizedBox(
                  height: 24,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                          MyContainer(
                          img: 'assets/images/img_24.png',
                          header: 'Morning Yoga',
                          numberOfDays: '7',
                          typeOfTrain: 'Improve mental focus.',
                        ),
                        SizedBox(
                          height: 24,
                        ),
                       MyContainer(
                            numberOfDays: '3',
                            header: 'Plank Exercise',
                            typeOfTrain: 'Improve posture and stability.',
                            img: 'assets/images/img_25.png'),
                        SizedBox(
                          height: 24,
                        ),
                       MyContainer(
                            numberOfDays: '3',
                            header: 'Plank Exercise',
                            typeOfTrain: 'Improve posture and stability.',
                            img: 'assets/images/img_24.png')
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: false,
            backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
            unselectedItemColor: Colors.grey,
            selectedItemColor: const Color(0xff363F72),
            onTap: (value) {
              Navigator.pushNamed(context, SeTest.routename);
            },
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/img_19.png'),
                    size: 24),
                label: '.',
              ),
              BottomNavigationBarItem(
                icon:
                    ImageIcon(AssetImage('assets/images/img_20.png'), size: 24),
                label: 'item',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/img_21.png'), size: 24),
                label: '.',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/img_22.png'),
                    size: 24),
                label: 'profile',
              )
            ]),
      ),
    );
  }
}
