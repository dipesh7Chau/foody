import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
          appBar: AppBar(
            leading: IconButton(onPressed: (){Navigator.pop(context);}, icon:const Icon(Icons.arrow_back,color: Colors.white,)),
            title: const Text(
              'forgot password',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: AutofillHints.creditCardMiddleName),
            ),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body: const SingleChildScrollView(
            child: Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageSection(),
                TextSection(),
              ],
              ),
            ),
          ),
    );
  }
}

class TextSection extends StatefulWidget {
  const TextSection({super.key});

  @override
  State<TextSection> createState() => _TextSectionState();
}

class _TextSectionState extends State<TextSection> {
  final emailcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailcontroller.dispose();
    super.dispose();
  }

  // Future checkUser()async{
  //   var response = await http.post("http://192.168.249.50/forgot_password",
  //   body: {
  //     "user_email":user.text,
  //   });
  //   var link =json.decoder(response.body);
  //   print(link);
  // }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Center(
        child: Container(
          alignment: Alignment.center,
         height: 350,
         width: 350,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: TextFormField(
                  controller: emailcontroller,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'enter your email';
                    }
                    return null;
                  },
                  style: const TextStyle(color: Colors.black54),
                  decoration: InputDecoration(
                    prefixIcon:const Icon(Icons.person),
                      labelText: 'E-mail',
                      hintStyle: const TextStyle(color: Colors.black54),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: ElevatedButton /*TextButton*/ (
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('processing')));
                    }
                  },
                  style: TextButton.styleFrom(
                    side: const BorderSide(
                      color: Colors.black,
                    ),
                    shadowColor: Colors.black,
                    elevation: 10,
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Reset Password',
                    style: TextStyle(fontSize: 20),
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

class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 50,top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 45,
            backgroundImage: AssetImage('lib/assets/images/dc.jpg'),
          ),
        ],
      ),
    );
  }
}
