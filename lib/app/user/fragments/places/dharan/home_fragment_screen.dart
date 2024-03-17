import 'package:flutter/material.dart';
import 'package:foody/app/user/presentation/authentication/location/select_location.dart';
import 'package:get/get.dart';

class DHomeFragmentsScreen extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 64, 99),
        title:const Text('Home',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Get.off(const SelectLocation());
        },icon:const Icon(Icons.arrow_back),color: Colors.white,),
      ) ,
      body:const Center(
        child: Text
        (
          "Dharan Home Fragment Screen",
          
        ),
      ),
    );
  }
}