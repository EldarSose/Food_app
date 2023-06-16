// ignore: unused_import
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:food/UI/single_product/hamburger/components/buttons.dart';
import 'package:food/UI/single_product/hamburger/components/hamburger_top.dart';

class Hamburger extends StatefulWidget {
  final String text;
  final String price;
  const Hamburger(this.text, this.price, {super.key});

  @override
  // ignore: no_logic_in_create_state
  State<Hamburger> createState() => _HamburgerState(text, price);
}

class _HamburgerState extends State<Hamburger> {
  final String text;
  final String price;
  _HamburgerState(this.text, this.price);
  String size = "m";
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 241, 241),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            HamburgerTop(text, price),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //choosing size
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 20),
                      child: Text(
                        "Choose prefered size",
                        style: TextStyle(
                          color: Color.fromARGB(255, 99, 98, 98),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 20.0, bottom: 20.0),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            size = "s";
                          });
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: size == "s"
                              ? const Color.fromARGB(255, 254, 205, 10)
                              : const Color.fromARGB(255, 237, 229, 229),
                          fixedSize: const Size(150, 50),
                          shadowColor: size == "s"
                              ? const Color.fromARGB(255, 254, 205, 10)
                              : const Color.fromARGB(255, 237, 229, 229),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: size == "s"
                                  ? Colors.black
                                  : const Color.fromARGB(255, 237, 229, 229),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          "Small",
                          style: TextStyle(
                            color: size == "s"
                                ? Colors.black
                                : const Color.fromARGB(255, 99, 98, 98),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 10.0, bottom: 10.0),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            size = "m";
                          });
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: size == "m"
                              ? const Color.fromARGB(255, 254, 205, 10)
                              : const Color.fromARGB(255, 237, 229, 229),
                          fixedSize: const Size(150, 50),
                          shadowColor: size == "m"
                              ? const Color.fromARGB(255, 254, 205, 10)
                              : const Color.fromARGB(255, 237, 229, 229),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: size == "m"
                                  ? Colors.black
                                  : const Color.fromARGB(255, 237, 229, 229),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          "Medium",
                          style: TextStyle(
                            color: size == "m"
                                ? Colors.black
                                : const Color.fromARGB(255, 99, 98, 98),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            size = "l";
                          });
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: size == "l"
                              ? const Color.fromARGB(255, 254, 205, 10)
                              : const Color.fromARGB(255, 237, 229, 229),
                          fixedSize: const Size(150, 50),
                          shadowColor: size == "l"
                              ? const Color.fromARGB(255, 254, 205, 10)
                              : const Color.fromARGB(255, 237, 229, 229),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: size == "l"
                                  ? Colors.black
                                  : const Color.fromARGB(255, 237, 229, 229),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          "Large",
                          style: TextStyle(
                            color: size == "l"
                                ? Colors.black
                                : const Color.fromARGB(255, 99, 98, 98),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //end of size choosing
                //hamburger sizing
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                    top: 45,
                  ),
                  child: AnimatedContainer(
                    width: size == "l"
                        ? 200
                        : size == "m"
                            ? 150
                            : 110,
                    height: size == "l"
                        ? 200
                        : size == "m"
                            ? 150
                            : 110,
                    duration: const Duration(milliseconds: 300),
                    child: Image.asset(
                        "assets/${widget.text.toLowerCase()}Transparent.jpeg"),
                  ),
                ),
                //end of hamburger sizing
              ],
            ),
            const Buttons(),
          ],
        ),
      ),
    );
  }
}
