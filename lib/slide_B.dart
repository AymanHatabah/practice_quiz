import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeTest extends StatelessWidget {
  static const String routename = "setest";
  bool _isselect = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/img_26.png",
                          width: 20,
                          height: 21,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "AliceCare",
                          style: GoogleFonts.milonga(
                              fontWeight: FontWeight.w400, fontSize: 24),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Card(
                        color: Colors.white,
                        elevation: 1,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 3),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                size: 20,
                                color: Colors.black,
                              ),
                              hintText: "Articles, Videos, Audio and More.....",
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ChoiceChip(
                            backgroundColor: Color(0xffD6BBFB),
                            side: BorderSide(color: Colors.grey),
                            label: Center(child: Text("Discover")),
                            selected: _isselect,
                            onSelected: (value) {
                              _isselect = value;
                            },
                          ),
                        ),
                        Expanded(
                          child: ChoiceChip(
                            backgroundColor: Color.fromRGBO(249, 245, 255, 1),
                            label: Center(child: Text("News")),
                            selected: _isselect,
                            onSelected: (value) {
                              _isselect = value;
                            },
                          ),
                        ),
                        Expanded(
                          child: ChoiceChip(
                            backgroundColor: Color.fromRGBO(249, 245, 255, 1),
                            label: Center(child: Text("Most view")),
                            selected: _isselect,
                            onSelected: (value) {
                              _isselect = value;
                            },
                          ),
                        ),
                        Expanded(
                          child: ChoiceChip(
                            backgroundColor: Color.fromRGBO(249, 245, 255, 1),
                            label: Center(child: Text("Saved")),
                            selected: _isselect,
                            onSelected: (value) {
                              _isselect = value;
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text(
                          "Hot Topics",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          "See all",
                          style: TextStyle(
                              color: Color(0xff5925DC),
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.arrow_forward_ios,
                            size: 15, color: Color(0xff5925DC))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/img_28.png",
                            width: 320,
                            height: 160,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            "assets/images/img_29.png",
                            width: 320,
                            height: 160,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Text("Get Tips",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.b612(
                                fontWeight: FontWeight.w600, fontSize: 18)),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Stack(alignment: Alignment.bottomLeft, children: [
                      Card(
                        color: Colors.white54,
                        elevation: 3,
                        child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 24),
                            width: 326,
                            height: 196,
                            child: Row(
                              children: [
                                const Expanded(
                                    flex: 1, child: SizedBox.shrink()),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Connect with doctors &\n get suggestions',
                                        style: GoogleFonts.inter(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        'Connect now and get'
                                        '\n expert insights ',
                                        style: GoogleFonts.inter(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      const SizedBox(
                                        height: 24,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 14, vertical: 8),
                                        decoration: BoxDecoration(
                                            color: const Color(0xff7F56D9),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                                color:
                                                    const Color(0XFF7F56D9))),
                                        child: Text(
                                          'View detail',
                                          style: GoogleFonts.inter(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                      Positioned(
                        left: 12,
                        child: Image.asset(
                          'assets/images/img_30.png',
                          width: 110.69,
                        ),
                      )
                    ]),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Cycle Phases and Period",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Spacer(),
                        Text(
                          "See all",
                          style: TextStyle(
                              color: Color(0xff5925DC),
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.arrow_forward_ios,
                            size: 15, color: Color(0xff5925DC))
                      ],
                    )
                  ])),
            ),
          bottomNavigationBar: BottomNavigationBar(
              showSelectedLabels: true,
              showUnselectedLabels: true,
              currentIndex: 1,
              iconSize: 50,
              backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
              unselectedItemColor: Colors.grey,
              selectedItemColor: const Color(0xff6941C6),
              onTap: (value) {
                Navigator.pushNamed(context, SeTest.routename);
              },
              items: const [
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/img_31.png'),
                      size: 24),
                  label: 'Today',
                ),
                BottomNavigationBarItem(
                  icon:
                  ImageIcon(AssetImage('assets/images/img_32.png'), size: 24),
                  label: 'item',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/img_33.png'), size: 24),
                  label: "chat",
                ),

              ]),));
  }
}
