import 'dart:ui';
import 'package:flutter/material.dart';

class HamburgerTop extends StatefulWidget {
  final String text;
  final String price;
  const HamburgerTop(this.text, this.price, {super.key});

  @override
  // ignore: no_logic_in_create_state
  State<HamburgerTop> createState() => _HamburgerTopState();
}

class _HamburgerTopState extends State<HamburgerTop> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.4,
      child: Scaffold(
        body: Hero(
          tag: widget.text.toLowerCase(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              image: DecorationImage(
                image: AssetImage("assets/${widget.text.toLowerCase()}.jpeg"),
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
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.18),
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
                                    widget.text,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: widget.text == "Cheeseburger"
                                      ? MediaQuery.of(context).size.width * 0.2
                                      : MediaQuery.of(context).size.width * 0.3,
                                ),
                                child: Material(
                                  type: MaterialType.transparency,
                                  child: Text(
                                    widget.price,
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
    );
  }
}
