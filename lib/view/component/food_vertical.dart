import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/view/model/food.dart';

class FoodVertical extends StatelessWidget {
  final Food? food;
  const FoodVertical({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //image
              Image.asset(
                food!.imagePath!,
                height: 130,
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    food!.name!,
                    style: GoogleFonts.notoSans(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //price
                        Text('\$' + food!.price!),SizedBox(
                          height: 10,
                        ),
                        //rating
                        Row(

                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            SizedBox(width: 5,),
                            Text(food!.rate!, style: TextStyle(fontSize: 15)),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
