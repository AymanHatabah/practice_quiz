import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:practice/slide_A.dart';

class Home extends StatelessWidget {
  static const String routename = "home";
  bool select = false;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final items = [Image.asset("assets/images/img_5.png")];
    int myindex = 0;
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/img_1.png",
                    width: 30,
                    height: 31.5,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Moody",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 100,
                  ),
                  Badge(

                    label: Text(""),
                    child: Icon(
                      Icons.notification_add,
                      size: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Text(
                    "hello, Sara Rose",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "how are you feeling today?",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 25),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/img.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/img_2.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/img_3.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/img_4.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Features",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                  SizedBox(
                    width: 85,
                  ),
                  Text("see more",
                      style: TextStyle(color: Colors.green, fontSize: 25)),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.green,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              CarouselSlider(
                  items: items,
                  options: CarouselOptions(
                    autoPlay: true,
                    height: 200,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayInterval: const Duration(seconds: 2),
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                  )),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    "Exercise",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                  SizedBox(
                    width: 85,
                  ),
                  Text("see more",
                      style: TextStyle(color: Colors.green, fontSize: 25)),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.green,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  ChoiceChip(
              backgroundColor: Color.fromRGBO(249,245 , 255,1 ),
                    avatar: Image.asset("assets/images/img_6.png"),
                    label: Center(child: Text("Relaxtion")),
                    selected: select,
                    onSelected: (value) {
                      select = value;
                    },
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  ChoiceChip(
                    backgroundColor: Color.fromRGBO(253, 242, 250, 1)
    ,
                    avatar: Image.asset("assets/images/img_7.png"),
                    label: Center(child: Text("Meditation")),
                    selected: select,
                    onSelected: (value) {
                      select = value;
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: Row(children: [
                  ChoiceChip(
                    backgroundColor:Color.fromRGBO(255, 250, 245, 1),

                  avatar: Image.asset("assets/images/img_8.png"),
                    label: Center(child: Text("Beathing")),
                    selected: select,
                    onSelected: (value) {
                      select = value;
                    },
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  ChoiceChip(
                    backgroundColor:Color.fromRGBO(240, 249, 255,1)

      ,
                    selectedColor: Colors.red,
                    avatar: Image.asset("assets/images/img_9.png"),
                    label: Center(child: Text("Yoka")),
                    selected: select,
                    onSelected: (value) {
                      select = value;
                    },
                  ),
                ]),
              ),
            ])),
        bottomNavigationBar: BottomNavigationBar(

          selectedItemColor:Colors.blue,
          currentIndex: index,
          backgroundColor: Colors.white,
          onTap: (value) {
           Navigator.pushNamed(context,FiTest.routename);
          },
          items: [
            BottomNavigationBarItem(
                label: "",
                icon: ImageIcon(
                  AssetImage(
                    "assets/images/img_10.png",
                  ),
                  color: Colors.black,
                ),
                backgroundColor: Colors.white30),
            BottomNavigationBarItem(
                label: "",
                icon: ImageIcon(
                  AssetImage("assets/images/img_11.png"),
                  color: Colors.black,
                ),
                backgroundColor: Colors.white30),
            BottomNavigationBarItem(
                label:  "",
                icon: ImageIcon(
                  AssetImage("assets/images/img_12.png"),
                  color: Colors.black,
                ),
                backgroundColor: Colors.white30),
            BottomNavigationBarItem(
                label: "",
                icon: ImageIcon(
                  AssetImage("assets/images/img_13.png"),
                  color: Colors.black,
                ),
                backgroundColor: Colors.white30),
          ],
        ));
  }
}
