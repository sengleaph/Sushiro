import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/view/utils.dart';

import '../model/food.dart';

class FoodDetailPage extends StatefulWidget {
  Food? food;
  FoodDetailPage({super.key, required this.food});

  @override
  State<FoodDetailPage> createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  // quantity counting 1->10
  int quantityCount = 0;

  //decrease quantity
  void decrementQuantity() {
    setState(() {
      quantityCount--;
    });
  }

  //increase quantity
  void incrementQuantity() {
    setState(() {
      quantityCount++;
    });
  }

  void addToCart() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FOOD DETAILS"),
        backgroundColor: primaryRed,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Column(
          children: [
            Expanded(
                child: ListView(
              children: [
                Image.asset(
                  widget.food!.imagePath!,
                  height: 200,
                ),
                SizedBox(
                  height: 25,
                ),
                //rating
                Row(
                  children: [
                    //star icon
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(widget.food!.rate!),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.food!.name!,
                  style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Description",
                  style: GoogleFonts.notoSans(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade800,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Sushi is a traditional Japanese dish featuring vinegared "
                    "rice, often paired with seafood, vegetables, and sometimes "
                    "tropical fruits. It’s celebrated for its delicate flavors"
                    " and artful presentation.",
                    style: GoogleFonts.notoSans(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        height: 2)),
                SizedBox(
                  height: 10,
                ),
              ],
            ))
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: primaryRed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "\$ " + widget.food!.price!,
                    style: GoogleFonts.notoSans(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: IconButton(
                            onPressed: decrementQuantity,
                            icon: Icon(CupertinoIcons.minus, color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                            color: secondaryRed,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Text(
                          quantityCount.toString(),
                          style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        Container(
                          child: IconButton(
                            onPressed: incrementQuantity,
                            icon: Icon(Icons.add, color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                            color: secondaryRed,
                            shape: BoxShape.circle,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  addToCart();
                },
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                    color: secondaryRed,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("Add to Cart",style: TextStyle(
                      color: Colors.white
                    ),)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
