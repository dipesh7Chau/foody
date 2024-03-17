import 'package:flutter/material.dart';

class BWalletFragmentsScreen extends StatefulWidget {
  const BWalletFragmentsScreen({super.key});

  @override
  State<BWalletFragmentsScreen> createState() => _BWalletFragmentsScreenState();
}

class _BWalletFragmentsScreenState extends State<BWalletFragmentsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 30.0),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Material(
            elevation: 2,
            child: Container(
              padding: const EdgeInsets.only(bottom: 10),
              child: const Center(child: Text("Wallet",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
              ),
            ),
          ),
          const SizedBox(height: 30,),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color(0xFFF2F2F2)
            ),
            child:  Row(
              children: [
                Image.asset('lib/assets/images/wallet.jpg',height: 60,width: 60,fit: BoxFit.cover,),
                const SizedBox(height: 40,),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 100),
                   child: Text("Your Wallet",style: TextStyle(fontSize: 20),),
                    ),
                    SizedBox(height: 5,),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 100),
                    child: Text("\$"+"100",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
                    ),
                  ],

                )
              ],
            ),
          ),
          const SizedBox(height: 20,),
          const Padding(
            padding:  EdgeInsets.only(left: 20),
            child:  Text("Add mondy",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration:  BoxDecoration(
                  border: Border.all(color: const Color(0xFFE9E2E2)),borderRadius: BorderRadius.circular(5),
                ),
                child: const Text("\$"+"100",style: TextStyle(color:Colors.black,fontWeight: FontWeight.w900,fontSize: 20),),
              ),
               Container(
                padding: const EdgeInsets.all(5),
                decoration:  BoxDecoration(
                  border: Border.all(color: const Color(0xFFE9E2E2)),borderRadius: BorderRadius.circular(5),
                ),
                child: const Text("\$"+"200",style: TextStyle(color:Colors.black,fontWeight: FontWeight.w900,fontSize: 20),),
              ),
               Container(
                padding: const EdgeInsets.all(5),
                decoration:  BoxDecoration(
                  border: Border.all(color: const Color(0xFFE9E2E2)),borderRadius: BorderRadius.circular(5),
                ),
                child: const Text("\$"+"500",style: TextStyle(color:Colors.black,fontWeight: FontWeight.w900,fontSize: 20),),
              ),
               Container(
                padding: const EdgeInsets.all(5),
                decoration:  BoxDecoration(
                  border: Border.all(color: const Color(0xFFE9E2E2)),borderRadius: BorderRadius.circular(5),
                ),
                child: const Text("\$"+"1000",style: TextStyle(color:Colors.black,fontWeight: FontWeight.w900,fontSize: 20),),
              )
            ],
          ),
          SizedBox(height: 40,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(vertical: 12),
            width: MediaQuery.of(context).size.width,
            decoration:  BoxDecoration(
              color: const Color(0xFF008080),borderRadius: BorderRadius.circular(10)
            ),
            child: const Center(child: Text("Add Money ",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),),
          )
        ]),
      ),
    );
  }
}