import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:foody/app/user/fragments/places/biratnagar/category/Alcohol/dinks_dashboard.dart';
import 'package:foody/app/user/fragments/places/biratnagar/category/food/food_dashboard.dart';
import 'package:foody/app/user/presentation/authentication/location/select_location.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BHomeFragmentsScreen extends StatefulWidget {
  const BHomeFragmentsScreen({super.key});

  @override
  State<BHomeFragmentsScreen> createState() => _BHomeFragmentsScreenState();
}

class _BHomeFragmentsScreenState extends State<BHomeFragmentsScreen> {
  int activeIndex = 0;
  final urlImage = [
    "lib/assets/images/pizza_offer.png",
    "lib/assets/images/kfc.png",
    "lib/assets/images/burger_offer.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 64, 99),
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.off(const SelectLocation());
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CarouselSlider.builder(
                options: CarouselOptions(
                  height: 200,
                  viewportFraction: 1,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  autoPlayInterval: const Duration(seconds: 3),
                  onPageChanged: (index, reason) =>
                      setState(() => activeIndex = index),
                ),
                itemCount: urlImage.length,
                itemBuilder: (context, index, realIndex) {
                  final UrlImage = urlImage[index];
                  return buildImage(UrlImage, index);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              buildIndicator(),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "choose your food you like",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const FoodItem(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Material(
            child: Ink.image(
              image: AssetImage(urlImage),
              fit: BoxFit.cover,
              width: 400,
              child: InkWell(
                onTap: () {},
              ),
            ),
          ),
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImage.length,
        effect: const JumpingDotEffect(
            dotWidth: 10, dotHeight: 10, activeDotColor: Colors.black),
      );
}

class FoodItem extends StatelessWidget {
  const FoodItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              elevation: 20,
              color: Colors.black26,
              borderRadius: BorderRadius.circular(28),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.black26,
                onTap: () {
                  Get.to(const FoodCategory());
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Ink.image(
                      image: const AssetImage("lib/assets/images/food.jpg"),
                      height: 200,
                      width: 300,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text('Food',
                        style: TextStyle(fontSize: 32, color: Colors.white)),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Material(
              elevation: 20,
              color: Colors.black26,
              borderRadius: BorderRadius.circular(28),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.black26,
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Ink.image(
                      image: const AssetImage("lib/assets/images/grocery.jpg"),
                      height: 200,
                      width: 300,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text('Grocery',
                        style: TextStyle(fontSize: 32, color: Colors.white)),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Material(
              elevation: 20,
              color: Colors.black26,
              borderRadius: BorderRadius.circular(28),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.black26,
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Ink.image(
                      image: const AssetImage("lib/assets/images/cake.jpg"),
                      height: 200,
                      width: 300,
                      fit: BoxFit.fitWidth,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text('Cake',
                        style: TextStyle(fontSize: 32, color: Colors.white)),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Material(
              elevation: 20,
              color: Colors.black26,
              borderRadius: BorderRadius.circular(28),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.black26,
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Ink.image(
                      image: const AssetImage(
                          "lib/assets/images/froozen_food.jpg"),
                      height: 200,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text('Froozen Food',
                        style: TextStyle(fontSize: 32, color: Colors.white)),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Material(
              elevation: 20,
              color: Colors.black26,
              borderRadius: BorderRadius.circular(28),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.black26,
                onTap: () {
                  Get.to(DrinksCategory());
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Ink.image(
                      image: const AssetImage("lib/assets/images/alcohol.jpg"),
                      height: 185,
                      width: 306,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text('Alcohol',
                        style: TextStyle(fontSize: 32, color: Colors.white)),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Material(
              elevation: 20,
              color: Colors.black26,
              borderRadius: BorderRadius.circular(28),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.black26,
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Ink.image(
                      image: const AssetImage("lib/assets/images/fast.jpg"),
                      height: 200,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text('Parcel',
                        style: TextStyle(fontSize: 32, color: Colors.white)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}