import 'dart:async';
import 'package:flutter/material.dart';
import 'package:foody/app/user/presentation/authentication/login_screen.dart';

class MYSplashScreen extends StatefulWidget {
  const MYSplashScreen({super.key});

  @override
  State<MYSplashScreen> createState() => _MYSplashScreenState();
}

class _MYSplashScreenState extends State<MYSplashScreen> {

  startTimer(){
    Timer(const Duration(seconds:5),() async{
      Navigator.push(context, MaterialPageRoute(builder: (c)=>const LoginScreen()));
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Container(
        color: const Color.fromARGB(255, 240, 64, 99),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('lib/assets/images/burger.png'),
              ),
             const SizedBox(height: 10,),
             const Padding(
                padding:  EdgeInsets.all(8.0),
                child: Text(
                  'Good Food',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    letterSpacing: 3,
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}