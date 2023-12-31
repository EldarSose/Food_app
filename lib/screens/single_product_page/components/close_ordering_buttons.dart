import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(),
            child: TextButton(
              onPressed: () {
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.warning,
                  animType: AnimType.bottomSlide,
                  showCloseIcon: true,
                  desc:
                      "You are leaving this page, orders that arent places will be lost. Are you sure?",
                  btnCancelOnPress: () {},
                  btnOkOnPress: () {
                    Navigator.of(context).pop();
                  },
                ).show();
              },
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 237, 229, 229),
                fixedSize: const Size(175, 50),
                shadowColor: const Color.fromARGB(255, 237, 229, 229),
                elevation: 10,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                "Cancel",
                style: TextStyle(
                  color: Color.fromARGB(255, 99, 98, 98),
                  fontSize: 20,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.question,
                animType: AnimType.bottomSlide,
                showCloseIcon: true,
                desc: "Are you sure?",
                btnCancelOnPress: () {},
                btnOkOnPress: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.success,
                    animType: AnimType.bottomSlide,
                    showCloseIcon: true,
                    desc: "You have succesfully placed an order",
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {
                      Navigator.of(context).pop();
                    },
                  ).show();
                },
              ).show();
            },
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 254, 205, 10),
              fixedSize: const Size(175, 50),
              shadowColor: const Color.fromARGB(255, 254, 205, 10),
              elevation: 10,
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text(
              "Place order",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
