import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foody/app/user/fragments/places/biratnagar/wallet_fragment_screen.dart';
import 'package:foody/app/user/fragments/places/biratnagar/home_fragment_screen.dart';
import 'package:foody/app/user/fragments/places/biratnagar/order_fragment_screen.dart';
import 'package:foody/app/user/fragments/places/biratnagar/profile_fragment_screen.dart';
import 'package:foody/app/user/userPreferences/current_user_data.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class BrtDashBoard extends StatelessWidget {
  CurrentUser _rememberCurrentUser = Get.put(CurrentUser());

 final List<Widget> _fragmentScreens =
  [
    const BHomeFragmentsScreen(),
    BOrderFragmentsScreen(),
    BWalletFragmentsScreen(),
    BProfileFragmentsScreen(),
  ];
  
  final List _navigationButtonProperties =
  [
    {
      "active_icon":Icons.home,
      "non_active_icon":Icons.home_outlined,
      "label":"Home",

    },
    {
      "active_icon":FontAwesomeIcons.boxOpen,
      "non_active_icon":FontAwesomeIcons.box,
      "label":"Order",
    

    },
    {
        "active_icon":Icons.account_balance_wallet,
      "non_active_icon":Icons.account_balance_wallet_outlined,
      "label":"Wallet",

    },
    {
      "active_icon":Icons.person,
      "non_active_icon":Icons.person_outline,
      "label":"Profile",

    },
  ];

 final RxInt _indexNumber = 0.obs;
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: CurrentUser(),
        initState: (currentState) {
          _rememberCurrentUser.getUserInfo();
        },
        builder: (controller) {
          return  Scaffold(
            backgroundColor: const Color.fromARGB(255, 240, 64, 99),
            body: SafeArea(
              child: Obx(() => _fragmentScreens[_indexNumber.value]),
            ),
            bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex:_indexNumber.value,
            onTap: (Value)
            {
              _indexNumber.value = Value;
            },
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black,
            items: List.generate(4, (index) 
            {
              var navBtnProperty= _navigationButtonProperties[index];
              return BottomNavigationBarItem
              (
                backgroundColor:const Color.fromARGB(255, 240, 64, 99),
                icon: Icon(navBtnProperty["non_active_icon"]),
                activeIcon: Icon(navBtnProperty["active_icon"]),
                label: navBtnProperty["label"],
              );
            }
            ),
            )),
          );
        });
  }
}