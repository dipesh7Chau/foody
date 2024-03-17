import 'package:flutter/material.dart';

class IOrderFragmentsScreen extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 64, 99),
        title:const Text('Order',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ) ,
      body:const Center(
        child: Text
        (
          "Ithari Order Fragment Screen"
        ),
      ),
    );
  }
}