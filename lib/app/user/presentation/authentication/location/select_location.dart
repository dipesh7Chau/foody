import 'package:flutter/material.dart';
import 'package:foody/app/user/fragments/places/biratnagar/dashboard_fragment.dart';
import 'package:foody/app/user/fragments/places/chitwan/dashboard_fragment.dart';
import 'package:foody/app/user/fragments/places/dharan/dashboard_fragment.dart';
import 'package:foody/app/user/fragments/places/ithari/dashboard_fragment.dart';
import 'package:foody/app/user/fragments/places/jhapa/dashboard_fragment.dart';
import 'package:foody/app/user/fragments/places/kathmandu/dashboard_fragment.dart';
import 'package:foody/app/user/fragments/places/pokhara/dashboard_fragment.dart';
import 'package:foody/app/user/fragments/places/tarahara/dashboard_fragment.dart';
import 'package:get/get.dart';

class SelectLocation extends StatelessWidget {
  const SelectLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Location",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 240, 64, 99),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                elevation: 20,
                color: Colors.red,
                borderRadius: BorderRadius.circular(28),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: () {
                    Get.to(BrtDashBoard());
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Ink.image(
                        image:
                            const AssetImage("lib/assets/images/Biratnagar_Drone_Footage.png"),
                        height: 250,
                        width: 380,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text('Biratnagar',
                          style: TextStyle(fontSize: 32, color: Colors.white)),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Material(
                elevation: 20,
                color: Colors.red,
                borderRadius: BorderRadius.circular(28),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: () {
                    Get.to(IthariDashBoard());
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Ink.image(
                        image: const AssetImage("lib/assets/images/ithari.jpg"),
                        height: 250,
                        width: 380,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text('Ithari',
                          style: TextStyle(fontSize: 32, color: Colors.white)),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Material(
                elevation: 20,
                color: Colors.red,
                borderRadius: BorderRadius.circular(28),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: () {
                    Get.to(DharanDashBoard());
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Ink.image(
                        image: const AssetImage("lib/assets/images/dharan.jpg"),
                        height: 250,
                        width: 380,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text('Dharan',
                          style: TextStyle(fontSize: 32, color: Colors.white)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
                 Material(
                  elevation: 20,
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(28),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: (){
                    Get.to(TaraharaDashBoard());
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Ink.image(image: const AssetImage("lib/assets/images/Tarahara.jpg"),
                      height: 250,
                      width: 380,
                      fit:BoxFit.cover,
                      ),
                      const SizedBox(height: 6,),
                      const Text('Tarahara',style: TextStyle(fontSize: 32,color: Colors.white)),
                    ],
                  ),
                  ),
                ),
                const SizedBox(height: 20,),
                 Material(
                  elevation: 20,
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(28),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: (){
                    Get.to(JhapaDashBoard());
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Ink.image(image: const AssetImage("lib/assets/images/jhapa.jpg"),
                      height: 250,
                      width: 380,
                      fit:BoxFit.cover,
                      ),
                      const SizedBox(height: 6,),
                      const Text('Jhapa',style: TextStyle(fontSize: 32,color: Colors.white)),
                    ],
                  ),
                  ),
                ), 
              const SizedBox(
                height: 20,
              ),
              Material(
                elevation: 20,
                color: Colors.red,
                borderRadius: BorderRadius.circular(28),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: () {
                    Get.to(ChitwanDashBoard());
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Ink.image(
                        image:
                            const AssetImage("lib/assets/images/chitwan.jpg"),
                        height: 250,
                        width: 380,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text('Chitwan',
                          style: TextStyle(fontSize: 32, color: Colors.white)),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Material(
                elevation: 20,
                color: Colors.red,
                borderRadius: BorderRadius.circular(28),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: () {
                    Get.to(KtmDashBoard());
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Ink.image(
                        image:
                            const AssetImage("lib/assets/images/kathmandu.jpg"),
                        height: 250,
                        width: 380,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text('Kathmandu',
                          style: TextStyle(fontSize: 32, color: Colors.white)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
                 Material(
                  elevation: 20,
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(28),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: (){
                    Get.to(PokharaDashBoard());
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Ink.image(image: const AssetImage("lib/assets/images/pokhara.jpg"),
                      height: 250,
                      width: 380,
                      fit:BoxFit.cover,
                      ),
                      const SizedBox(height: 6,),
                      const Text('Pokhara',style: TextStyle(fontSize: 32,color: Colors.white)),
                    ],
                  ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
