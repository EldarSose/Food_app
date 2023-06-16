import 'package:flutter/material.dart';

class Sushi extends StatefulWidget {
  const Sushi({super.key});

  @override
  State<Sushi> createState() => _SushiState();
}

class _SushiState extends State<Sushi> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.9,
      child: ListView(
        scrollDirection: Axis.horizontal,
        primary: false,
        children: [
          //ovdje pocinje jedan
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //upper
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 255, 230, 0),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Tuna rolls",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "Ovo je najbolji opis ikad :D",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Image.asset(
                            "assets/tunaRolls.jpeg",
                            height: 80,
                            width: 80,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                //bottom
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.55,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                    color: Color.fromARGB(255, 255, 230, 0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            size: 17,
                          ),
                          Icon(
                            Icons.star,
                            size: 17,
                          ),
                          Icon(
                            Icons.star,
                            size: 17,
                          ),
                          Icon(
                            Icons.star,
                            size: 17,
                          ),
                          Icon(
                            Icons.star,
                            size: 17,
                          ),
                        ],
                      ),
                      const Text(
                        "14e",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          //ovdje zavrsava jedan
          //ovdje pocinje jedan
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //upper
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 255, 230, 0),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Tuna rolls",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "Ovo je najbolji opis ikad :D",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Image.asset(
                            "assets/tunaRolls.jpeg",
                            height: 80,
                            width: 80,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                //bottom
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.55,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                    color: Color.fromARGB(255, 255, 230, 0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            size: 17,
                          ),
                          Icon(
                            Icons.star,
                            size: 17,
                          ),
                          Icon(
                            Icons.star,
                            size: 17,
                          ),
                          Icon(
                            Icons.star,
                            size: 17,
                          ),
                          Icon(
                            Icons.star,
                            size: 17,
                          ),
                        ],
                      ),
                      const Text(
                        "14e",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          //ovdje zavrsava jedan
        ],
      ),
    );
  }
}
