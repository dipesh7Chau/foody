import 'package:flutter/material.dart';
import 'package:foody/app/user/presentation/authentication/login_screen.dart';
import 'package:foody/app/user/userPreferences/current_user_data.dart';
import 'package:foody/app/user/userPreferences/user_prferences.dart';
import 'package:get/get.dart';

class DProfileFragmentsScreen extends StatelessWidget {
  final CurrentUser _currentUser = Get.put(CurrentUser());

  logoutUser() async {
    var resultResponse = await Get.dialog(AlertDialog(
      backgroundColor: Colors.white,
      title: const Center(
        child: Text(
          "Logout",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      content: const Text("Are you sure you want to logout ?"),
      actions: [
        TextButton(
            onPressed: () {
              Get.back();
            },
            child: const Text(
              "Cancel",
              style: TextStyle(color: Colors.black),
            )),
        const SizedBox(
          width: 100,
        ),
        TextButton(
            onPressed: () {
              Get.back(result: "Logged Out");
            },
            child: const Text(
              "Yes",
              style: TextStyle(color: Colors.black),
            )),
      ],
    ));

    if (resultResponse == "Logged Out") {
      //delete-remove the user data from phone local storage
      RememberUserPrefs.removeUserInfo().then((value) {
        Get.off(const LoginScreen());
      });
    }
  }

  Widget userInfoItemProfile(IconData iconData, String userData) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Icon(
            iconData,
            size: 30,
            color: Colors.black,
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            userData,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 64, 99),
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          children: [
            Center(
              child: Image.asset(
                "lib/assets/images/profile.jpg",
                width: 200,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            userInfoItemProfile(Icons.person, _currentUser.user.user_name),
            const SizedBox(
              height: 20,
            ),
            userInfoItemProfile(Icons.email, _currentUser.user.user_email),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Material(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(8),
                child: InkWell(
                  onTap: () {
                    logoutUser();
                  },
                  borderRadius: BorderRadius.circular(32),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 12,
                    ),
                    child: Text(
                      "Logout",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
