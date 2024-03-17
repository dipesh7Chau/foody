import 'package:flutter/material.dart';

class JFavoriteFragmentsScreen extends StatelessWidget 
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
          "Jhapa Favorite Fragment Screen"
        ),
      ),
    );
  }
}