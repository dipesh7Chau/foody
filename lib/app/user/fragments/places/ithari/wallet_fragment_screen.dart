import 'package:flutter/material.dart';

class IwalletFragmentsScreen extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 64, 99),
        title:const Text('Favorite',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ) ,
      body:const Center(
        child: Text
        (
          "Ithari Favorite Fragment Screen"
        ),
      ),
    );
  }
}