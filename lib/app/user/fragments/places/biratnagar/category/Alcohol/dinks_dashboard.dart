import 'package:flutter/material.dart';

class DrinksCategory extends StatefulWidget {
  const DrinksCategory({super.key});

  @override
  State<DrinksCategory> createState() => DrinksCategoryState();
}

class DrinksCategoryState extends State<DrinksCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.search)],
        title: const Text("Drinks ",style: TextStyle(color: Colors.white),),
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
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(10),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Ink.image(
                        image: const AssetImage(
                            "lib/assets/images/pepsi.jpg"),
                        height: 150,
                        width: 400,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text('Hotel Tom and Jerry',
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                          const Icon(Icons.place,color: Colors.red,),
                          const Text('Mahendra choke',
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Material(
                elevation: 20,
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(10),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Ink.image(
                        image: const AssetImage(
                            "lib/assets/images/fanta.jpg"),
                        height: 150,
                        width: 400,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text('Hotel Unique',
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                          const Icon(Icons.place,color: Colors.red,),
                          const Text('jaljala mode',
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Material(
                elevation: 20,
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(10),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Ink.image(
                        image: const AssetImage(
                            "lib/assets/images/8848.jpeg"),
                        height: 150,
                        width: 400,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text('Hotel Grill to Chill',
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                          const Icon(Icons.place,color: Colors.red,),
                          const Text('Jaljala mode',
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Material(
                elevation: 20,
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(10),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Ink.image(
                        image: const AssetImage(
                            "lib/assets/images/wine.jpg"),
                        height: 150,
                        width: 400,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text('Hotel Darjeeling',
                          style: TextStyle(fontSize: 20, color: Colors.black)),
                          const Icon(Icons.place,color: Colors.red,),
                          const Text('Kanchanbari',
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15,),
            ],
          ),
        ),
      ),
    );
  }
}
