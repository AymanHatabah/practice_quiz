import 'package:flutter/material.dart';

class FiTest extends StatelessWidget {
  static const String routename = "fitest";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
    children: [

      Row(
        children: [
        CircleAvatar(
        radius: 30,
  child: Image.asset("assets/images/img_14.png"),
  ),

          Column(

            children: [
              Text("hello,jeda",style: TextStyle(fontSize: 20),),
              SizedBox(
                height: 10,
              ),

              Text("Ready to Workout?",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
            ],
          ),
          SizedBox(
            width: 31,
          ),

          Badge(
            label: Text(""),
            child: Icon(
              Icons.notification_add,
              size: 30,
            ),
          ),

        ],
        )
  ],
    ),
      ),


    );
  }
}
