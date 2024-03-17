import 'package:flutter/material.dart';

class FoodCategory extends StatefulWidget {
  const FoodCategory({super.key});

  @override
  State<FoodCategory> createState() => FoodCategoryState();
}

class FoodCategoryState extends State<FoodCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.search,color: Colors.black,)],
        title: Text("Food"),
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
                            "lib/assets/images/biryani.jpg"),
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
              const SizedBox(height: 10,),
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
                            "lib/assets/images/rasbari.jpeg"),
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
              const SizedBox(height: 10,),
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
                            "lib/assets/images/ramen.png"),
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
              const SizedBox(height: 10,),
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
                            "lib/assets/images/samosa.jpg"),
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
              const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
