import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/view/component/food_vertical.dart';
import 'package:sushi/view/component/foot_horalzental.dart';
import 'package:sushi/view/detail_page/food_detail_page.dart';
import 'package:sushi/view/model/food.dart';
import 'package:sushi/view/utils.dart';

import 'component/cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //food menu
  List foodMenu = [
    //shusi - 1
    Food(
        name: 'Salmon Shusi',
        price: "20.00",
        imagePath: "assets/image/sushi-1.png",
        rate: '4.5'),

    //shusi 2
    Food(
        name: 'Tuna Shusi',
        price: "25.00",
        imagePath: "assets/image/sushi-2.png",
        rate: '5.0'),

    //shusi 3
    Food(
        name: 'Egg Salmon Shusi',
        price: "30.00",
        imagePath: "assets/image/sushi-3.png",
        rate: '4.0'),

    //shusi 4
    Food(
        name: 'Max Shusi',
        price: "45.00",
        imagePath: "assets/image/sushi-4.png",
        rate: '5.0'),
  ];

  //navigate to food item detail page
  void navigateToFoodDetail(int index){
    Navigator.push(context, MaterialPageRoute(builder: (context) => FoodDetailPage(food: foodMenu[index]),));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryRed,
        title: Text(
          "SHUSI",
          style: GoogleFonts.notoSans(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
        leading: const Icon(Icons.menu),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              CardDiscount(),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Searching...',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Menu Food",
                style: GoogleFonts.notoSans(
                  color: Colors.grey.shade800,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              //List Food
              SizedBox(
                height: 250,
                child: Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: foodMenu.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () => navigateToFoodDetail(index),
                    child: FoodTile(
                      food: foodMenu[index],


                    ),
                  ),
                )),
              ),
              SizedBox(height: 10,),
              Text("Popular Food",
                style: GoogleFonts.notoSans(
                color: Colors.grey.shade800,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 10,),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(), // Disable scrolling in ListView
                shrinkWrap: true, // Make ListView take only the necessary height
                itemCount: foodMenu.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () => navigateToFoodDetail(index),
                  child: FoodVertical(
                    food: foodMenu[index],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
