import 'package:flutter/material.dart';
import 'package:foody/app/user/presentation/authentication/login_screen.dart';
import 'package:get/get.dart';

class AdminLoginScreen extends StatefulWidget {
  const AdminLoginScreen({super.key});
  @override
  State<AdminLoginScreen> createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen> {
  var forkey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var isObsecure = true.obs;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 64, 99),
      body: LayoutBuilder(builder: (context, cons) {
        return ConstrainedBox(
          constraints: BoxConstraints(minHeight: cons.maxHeight),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Login Hearder
                SizedBox(
                  width: double.infinity,
                  height: 430,
                  child: Image.asset(
                    "lib/assets/images/foob_boy.png",
                    fit: BoxFit.cover,
                  ),
                ),
                //email textform field
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    width: 380,
                    decoration: const BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.all(Radius.circular(60)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.black26,
                            offset: Offset(0, -3),
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 30, 30, 8.0),
                      child: Column(
                        children: [
                          Form(
                            key: forkey,
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: emailController,
                                  validator: (val) =>
                                      val == "" ? "please write email" : null,
                                  decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.email,
                                        color: Colors.black,
                                      ),
                                      hintText: "email",
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: const BorderSide(
                                            color: Colors.white60,
                                          )),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: const BorderSide(
                                            color: Colors.white60,
                                          )),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: const BorderSide(
                                            color: Colors.white60,
                                          )),
                                      disabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: const BorderSide(
                                            color: Colors.white60,
                                          )),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 14, vertical: 6),
                                      fillColor: Colors.white,
                                      filled: true),
                                ),
                                const SizedBox(
                                  height: 18,
                                ),
                                // password Textformfield
                                Obx(() => TextFormField(
                                      obscureText: isObsecure.value,
                                      controller: passwordController,
                                      validator: (val) => val == ""
                                          ? "please write Password"
                                          : null,
                                      decoration: InputDecoration(
                                          prefixIcon: const Icon(
                                            Icons.vpn_key_sharp,
                                            color: Colors.black,
                                          ),
                                          suffixIcon: Obx(() => GestureDetector(
                                                onTap: () {
                                                  isObsecure.value =
                                                      !isObsecure.value;
                                                },
                                                child: Icon(
                                                  isObsecure.value
                                                      ? Icons.visibility_off
                                                      : Icons.visibility,
                                                  color: Colors.black,
                                                ),
                                              )),
                                          hintText: "Password",
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide: const BorderSide(
                                                color: Colors.white60,
                                              )),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide: const BorderSide(
                                                color: Colors.white60,
                                              )),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide: const BorderSide(
                                                color: Colors.white60,
                                              )),
                                          disabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide: const BorderSide(
                                                color: Colors.white60,
                                              )),
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 14, vertical: 6),
                                          fillColor: Colors.white,
                                          filled: true),
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                //login button
                                Material(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(30),
                                  child: InkWell(
                                    onTap: () {
                                      if (forkey.currentState!.validate()) {
                                      }
                                    },
                                    borderRadius: BorderRadius.circular(30),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 28,
                                      ),
                                      child: Text(
                                        'Login',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ),
                          const Divider(),
                          //text button for Admin signup
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "For User account",
                                style: TextStyle(color: Colors.white),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Get.to(const LoginScreen());
                                  },
                                  child: const Text(
                                    "Click here",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 33, 33, 243),
                                        fontSize: 16),
                                  ))
                            ],
                          )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
