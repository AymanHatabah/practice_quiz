import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCard extends StatelessWidget {
  const MyCard(
      {super.key, required this.img, required this.firstText, required this.secondText, required this.thirdText});

  final String img;
  final String firstText;
  final String secondText;
  final String thirdText;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ImageIcon(
              AssetImage(img),
              size: 16,
              color: const Color(0xff717BBC),
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              firstText,
              style: GoogleFonts.inter(
                  fontSize: 12, fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(secondText,
                style:
                GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(thirdText,
                style:
                GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.bold))
          ],
        ),
      ],
    );
  }
}
