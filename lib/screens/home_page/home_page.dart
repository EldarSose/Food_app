import 'package:flutter/material.dart';
import 'package:food/screens/home_page/components/food_list_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textController = TextEditingController();
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 241, 241),
      body: Column(
        children: [
          //top part
          const Padding(
            padding: EdgeInsets.only(
              top: 35.0,
              bottom: 20.0,
            ),
            child: Text(
              "Foody",
              style: TextStyle(
                fontSize: 35,
                color: Color.fromARGB(255, 254, 205, 10),
              ),
            ),
          ),
          //AnimSearch(textController),
          //second part
          //const AnimText(),
          //nav bar
          Expanded(
            child: TweenAnimationBuilder(
              duration: const Duration(milliseconds: 900),
              tween: Tween<double>(begin: 0, end: 1),
              builder: (context, double value, Widget? child) {
                return Opacity(
                  opacity: value,
                  child: Padding(
                    padding: EdgeInsets.only(left: value * 10),
                    child: child,
                  ),
                );
              },
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = 0;
                        });
                      },
                      child: Container(
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black),
                          color: selectedIndex == 0
                              ? const Color.fromARGB(255, 254, 205, 10)
                              : const Color.fromARGB(255, 237, 229, 229),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Center(
                            child: Text(
                              "Fast food",
                              style: TextStyle(
                                color: selectedIndex == 0
                                    ? Colors.black
                                    : const Color.fromARGB(255, 99, 98, 98),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = 1;
                        });
                      },
                      child: Container(
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black),
                          color: selectedIndex == 1
                              ? const Color.fromARGB(255, 254, 205, 10)
                              : const Color.fromARGB(255, 237, 229, 229),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Center(
                            child: Text(
                              "Pasta",
                              style: TextStyle(
                                color: selectedIndex == 1
                                    ? Colors.black
                                    : const Color.fromARGB(255, 99, 98, 98),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = 2;
                        });
                      },
                      child: Container(
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black),
                          color: selectedIndex == 2
                              ? const Color.fromARGB(255, 254, 205, 10)
                              : const Color.fromARGB(255, 237, 229, 229),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Center(
                            child: Text(
                              "Sushi",
                              style: TextStyle(
                                color: selectedIndex == 2
                                    ? Colors.black
                                    : const Color.fromARGB(255, 99, 98, 98),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = 3;
                        });
                      },
                      child: Container(
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black),
                          color: selectedIndex == 3
                              ? const Color.fromARGB(255, 254, 205, 10)
                              : const Color.fromARGB(255, 237, 229, 229),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Center(
                            child: Text(
                              "Cold drinks",
                              style: TextStyle(
                                color: selectedIndex == 3
                                    ? Colors.black
                                    : const Color.fromARGB(255, 99, 98, 98),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = 4;
                        });
                      },
                      child: Container(
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black),
                          color: selectedIndex == 4
                              ? const Color.fromARGB(255, 254, 205, 10)
                              : const Color.fromARGB(255, 237, 229, 229),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Center(
                            child: Text(
                              "Hot drinks",
                              style: TextStyle(
                                color: selectedIndex == 4
                                    ? Colors.black
                                    : const Color.fromARGB(255, 99, 98, 98),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //main part
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 47,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //fast food
                  if (selectedIndex == 0)
                    TweenAnimationBuilder(
                      builder:
                          (BuildContext context, double value, Widget? child) {
                        return Opacity(
                          opacity: value,
                          child: Padding(
                            padding: EdgeInsets.only(left: value * 18),
                            child: const Text(
                              "Fast food",
                              style: TextStyle(
                                color: Color.fromARGB(255, 99, 98, 98),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        );
                      },
                      duration: const Duration(milliseconds: 900),
                      tween: Tween<double>(begin: 0, end: 1),
                    ),
                  if (selectedIndex == 0)
                    TweenAnimationBuilder(
                      builder:
                          (BuildContext context, double value, Widget? child) {
                        return Opacity(
                          opacity: value,
                          child: Padding(
                            padding: EdgeInsets.only(left: value * 18),
                            child: const FoodList(
                                firstTitle: "Hamburger",
                                secondTitle: "Cheeseburger",
                                firstPrice: "€ 10",
                                secondPrice: "€ 13"),
                          ),
                        );
                      },
                      duration: const Duration(milliseconds: 900),
                      tween: Tween<double>(begin: 0, end: 1),
                    ),
                  //pasta
                  if (selectedIndex == 1)
                    TweenAnimationBuilder(
                      builder:
                          (BuildContext context, double value, Widget? child) {
                        return Opacity(
                          opacity: value,
                          child: Padding(
                            padding: EdgeInsets.only(left: value * 18),
                            child: const Text(
                              "Pasta",
                              style: TextStyle(
                                color: Color.fromARGB(255, 99, 98, 98),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        );
                      },
                      duration: const Duration(milliseconds: 900),
                      tween: Tween<double>(begin: 0, end: 1),
                    ),
                  if (selectedIndex == 1)
                    TweenAnimationBuilder(
                      builder:
                          (BuildContext context, double value, Widget? child) {
                        return Opacity(
                          opacity: value,
                          child: Padding(
                            padding: EdgeInsets.only(left: value * 18),
                            child: const FoodList(
                                firstTitle: "Spaghetti",
                                secondTitle: "Noodles",
                                firstPrice: "€ 10",
                                secondPrice: "€ 13"),
                          ),
                        );
                      },
                      duration: const Duration(milliseconds: 900),
                      tween: Tween<double>(begin: 0, end: 1),
                    ),
                  //sushi
                  if (selectedIndex == 2)
                    TweenAnimationBuilder(
                      builder:
                          (BuildContext context, double value, Widget? child) {
                        return Opacity(
                          opacity: value,
                          child: Padding(
                            padding: EdgeInsets.only(left: value * 18),
                            child: const Text(
                              "Sushi",
                              style: TextStyle(
                                color: Color.fromARGB(255, 99, 98, 98),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        );
                      },
                      duration: const Duration(milliseconds: 900),
                      tween: Tween<double>(begin: 0, end: 1),
                    ),
                  if (selectedIndex == 2)
                    TweenAnimationBuilder(
                      builder:
                          (BuildContext context, double value, Widget? child) {
                        return Opacity(
                          opacity: value,
                          child: Padding(
                            padding: EdgeInsets.only(left: value * 18),
                            child: const FoodList(
                                firstTitle: "Tunarolls",
                                secondTitle: "Nigirizushi",
                                firstPrice: "€ 10",
                                secondPrice: "€ 13"),
                          ),
                        );
                      },
                      duration: const Duration(milliseconds: 900),
                      tween: Tween<double>(begin: 0, end: 1),
                    ),
                  //cold drinks
                  if (selectedIndex == 3)
                    TweenAnimationBuilder(
                      builder:
                          (BuildContext context, double value, Widget? child) {
                        return Opacity(
                          opacity: value,
                          child: Padding(
                            padding: EdgeInsets.only(left: value * 18),
                            child: const Text(
                              "Cold drinks",
                              style: TextStyle(
                                color: Color.fromARGB(255, 99, 98, 98),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        );
                      },
                      duration: const Duration(milliseconds: 900),
                      tween: Tween<double>(begin: 0, end: 1),
                    ),
                  if (selectedIndex == 3)
                    TweenAnimationBuilder(
                      builder:
                          (BuildContext context, double value, Widget? child) {
                        return Opacity(
                          opacity: value,
                          child: Padding(
                            padding: EdgeInsets.only(left: value * 18),
                            child: const FoodList(
                                firstTitle: "CocaCola",
                                secondTitle: "Fanta",
                                firstPrice: "€ 10",
                                secondPrice: "€ 13"),
                          ),
                        );
                      },
                      duration: const Duration(milliseconds: 900),
                      tween: Tween<double>(begin: 0, end: 1),
                    ),
                  //hot drinks
                  if (selectedIndex == 4)
                    TweenAnimationBuilder(
                      builder:
                          (BuildContext context, double value, Widget? child) {
                        return Opacity(
                          opacity: value,
                          child: Padding(
                            padding: EdgeInsets.only(left: value * 18),
                            child: const Text(
                              "Hot drinks",
                              style: TextStyle(
                                color: Color.fromARGB(255, 99, 98, 98),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        );
                      },
                      duration: const Duration(milliseconds: 900),
                      tween: Tween<double>(begin: 0, end: 1),
                    ),
                  if (selectedIndex == 4)
                    TweenAnimationBuilder(
                      builder:
                          (BuildContext context, double value, Widget? child) {
                        return Opacity(
                          opacity: value,
                          child: Padding(
                            padding: EdgeInsets.only(left: value * 18),
                            child: const FoodList(
                                firstTitle: "Espresso",
                                secondTitle: "Coffee",
                                firstPrice: "€ 10",
                                secondPrice: "€ 13"),
                          ),
                        );
                      },
                      duration: const Duration(milliseconds: 900),
                      tween: Tween<double>(begin: 0, end: 1),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
