import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      width: 130,
      height: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(65),
          image: const DecorationImage(
              image: AssetImage("assets/images/profile.jpeg"),
              fit: BoxFit.cover)),
    );
  }
}
