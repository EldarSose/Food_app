import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food/UI/single_product/hamburger/hamburger.dart';

class FastFood extends StatefulWidget {
  final String text1;
  final String text2;
  final String price1;
  final String price2;
  const FastFood(this.text1, this.text2, this.price1, this.price2, {super.key});

  @override
  // ignore: no_logic_in_create_state
  State<FastFood> createState() => _FastFoodState();
}

class _FastFoodState extends State<FastFood> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.65,
      width: MediaQuery.of(context).size.width * 0.9,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        Hamburger(widget.text1, widget.price1)),
              );
            },
            borderRadius: BorderRadius.circular(50),
            child: Hero(
              tag: widget.text1.toLowerCase(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image:
                        AssetImage("assets/${widget.text1.toLowerCase()}.jpeg"),
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
                                widget.price1,
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
                                widget.text1,
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
                      builder: (context) =>
                          Hamburger(widget.text2, widget.price2)),
                );
              },
              borderRadius: BorderRadius.circular(50),
              child: Hero(
                tag: widget.text2.toLowerCase(),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width * 0.6,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/${widget.text2.toLowerCase()}.jpeg"),
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
                                  widget.price2,
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
                                  widget.text2,
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
