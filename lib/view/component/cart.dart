import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils.dart';

class CardDiscount extends StatelessWidget {
  const CardDiscount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      padding: EdgeInsets.all(20),
      // margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: primaryRed, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Get 30% promotion.",
                style: GoogleFonts.notoSans(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: secondaryRed,
                    borderRadius: BorderRadius.circular(50)),
                height: 50,
                width: 150,
                child: Center(
                    child: Text(
                      "Redeem -> ",
                      style: GoogleFonts.notoSans(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),
                    )),
              )
            ],
          ),
          Image.asset("assets/image/sushi-1.png"),
        ],
      ),
    );
  }
}
