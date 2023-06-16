import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food/screens/single_product_page/single_product_page.dart';

class FoodList extends StatelessWidget {
  final String firstTitle;
  final String secondTitle;
  final String firstPrice;
  final String secondPrice;
  const FoodList(
      {required this.firstTitle,
      required this.secondTitle,
      required this.firstPrice,
      required this.secondPrice,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 385,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        SingleProductPage(text: firstTitle, price: firstPrice)),
              );
            },
            borderRadius: BorderRadius.circular(50),
            child: Hero(
              tag: firstTitle.toLowerCase(),
              child: Container(
                width: 270,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/images/${firstTitle.toLowerCase()}.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: Container(
                      color: Colors.grey.withOpacity(0.1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10.0,
                              bottom: 5,
                            ),
                            child: Material(
                              type: MaterialType.transparency,
                              child: Text(
                                firstPrice,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 15.0,
                              left: 10.0,
                            ),
                            child: Material(
                              type: MaterialType.transparency,
                              child: Text(
                                firstTitle,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          //ovdje zavrsava
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SingleProductPage(
                          text: secondTitle, price: secondPrice)),
                );
              },
              borderRadius: BorderRadius.circular(50),
              child: Hero(
                tag: secondTitle.toLowerCase(),
                child: Container(
                  height: 500,
                  width: 270,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/images/${secondTitle.toLowerCase()}.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                      child: Container(
                        color: Colors.grey.withOpacity(0.1),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10.0,
                                bottom: 5,
                              ),
                              child: Material(
                                type: MaterialType.transparency,
                                child: Text(
                                  secondPrice,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 15.0,
                                left: 10.0,
                              ),
                              child: Material(
                                type: MaterialType.transparency,
                                child: Text(
                                  secondTitle,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
