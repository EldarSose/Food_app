import 'package:flutter/material.dart';
import 'package:food/screens/navigation_bar/navigation_bar.dart';
import 'package:food/screens/profile_page/components/profile_picture.dart';
import 'package:food/screens/profile_page/components/profile_tab.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 241, 241),
      body: SingleChildScrollView(
        child: SizedBox(
          width: 400,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                ProfilePicture(),
                Padding(
                  padding: EdgeInsets.only(top: 12.0),
                  child: Text(
                    "Eldar Sose",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12.0),
                  child: Text(
                    "eldar.sose@edu.fit.ba",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 99, 98, 98),
                    ),
                  ),
                ),
                ProfileTabs(
                  tabText: "Privacy",
                  icon: Icons.admin_panel_settings,
                  padding: 120.0,
                ),
                ProfileTabs(
                  tabText: "Purchase history",
                  icon: FontAwesomeIcons.clockRotateLeft,
                  padding: 40.0,
                ),
                ProfileTabs(
                  tabText: "Help & Support",
                  icon: FontAwesomeIcons.circleQuestion,
                  padding: 58.0,
                ),
                ProfileTabs(
                  tabText: "Settings",
                  icon: Icons.settings,
                  padding: 120.0,
                ),
                ProfileTabs(
                  tabText: "Invite a friend",
                  icon: Icons.person_add_rounded,
                  padding: 70.0,
                ),
                ProfileTabs(
                  tabText: "Logout",
                  icon: Icons.logout,
                  padding: 120.0,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const NavigationBarPage(
        index: 2,
      ),
    );
  }
}
