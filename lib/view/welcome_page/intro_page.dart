import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/view/home_page.dart';
import 'package:sushi/view/utils.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryRed,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "SHUSI RES",
                style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("assets/image/sushi-2.png"),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "THE TASTE OF JAPANESE SHUSI",
                style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Feel The Taste Of Most Popular Japanese Food Everywhere And Everytime.",
                style: GoogleFonts.inter(fontSize: 18, color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 40),
        child:  GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
          },
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text("Get Started ○",
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),
            ),
            decoration: BoxDecoration(
                color: secondaryRed,
                borderRadius: BorderRadius.circular(50)),
          ),
        ),
      ),
    );
  }
}
