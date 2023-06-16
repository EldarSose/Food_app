import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food/UI/home_page/home_page.dart';
import 'package:slide_action/slide_action.dart';
import 'package:page_transition/page_transition.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/startPhoto.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.grey.withOpacity(0.1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height * 0.5,
                        ),
                        child: const Text(
                          "Foody",
                          style: TextStyle(
                            color: Color.fromARGB(255, 189, 170, 0),
                            fontSize: 70,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height * 0.05,
                        ),
                        child: SlideAction(
                          trackBuilder: (context, state) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: const Color.fromARGB(255, 43, 40, 40),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.white,
                                    blurRadius: 8,
                                  ),
                                ],
                              ),
                              child: const Center(
                                child: Text(
                                  "Explore now >>",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            );
                          },
                          thumbBuilder: (context, state) {
                            return Container(
                              margin: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 254, 205, 10),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.chevron_right,
                                  color: Colors.white,
                                ),
                              ),
                            );
                          },
                          action: () {
                            Navigator.pushReplacement(
                              context,
                              PageTransition(
                                child: const HomePage(),
                                type: PageTransitionType.fade,
                                duration: const Duration(
                                  milliseconds: 1000,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
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
