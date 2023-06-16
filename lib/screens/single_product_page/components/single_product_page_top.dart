import 'dart:ui';
import 'package:flutter/material.dart';

class SingleProductPageTop extends StatelessWidget {
  final String text;
  final String price;
  const SingleProductPageTop(
      {required this.text, required this.price, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: Scaffold(
        body: Hero(
          tag: text.toLowerCase(),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                image: DecorationImage(
                  image: AssetImage("assets/images/${text.toLowerCase()}.jpeg"),
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
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 30,
                            left: 15,
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            color: const Color.fromRGBO(255, 255, 255, 0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: IconButton(
                                splashRadius: null,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 130,
                              left: 11,
                              right: 11,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 16.0,
                                  ),
                                  child: Material(
                                    type: MaterialType.transparency,
                                    child: Text(
                                      text,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: text == "Cheeseburger" ? 90 : 130),
                                  child: Material(
                                    type: MaterialType.transparency,
                                    child: Text(
                                      price,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
