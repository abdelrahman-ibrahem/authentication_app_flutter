import 'package:auth_app/widgets/text-form-field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(children: [
          // main content
          SizedBox(
              width: double.infinity,
              child: Form(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "SIGNUP",
                        style: TextStyle(fontSize: 24),
                      ),
                      SvgPicture.asset("assets/icons/signup.svg"),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextFormField(
                        controller: emailController,
                        label: "Email",
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextFormField(
                        controller: passwordController,
                        label: "Password",
                        keyboardType: TextInputType.visiblePassword,
                        secure: true,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple),
                          padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 110, vertical: 10),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27),
                            ),
                          ),
                        ),
                        child: const Text(
                          "SIGNUP",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an Account ? ",
                            style: TextStyle(
                              color: Colors.purple,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/login");
                            },
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.purple,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: SvgPicture.asset(
                              "assets/icons/facebook.svg",
                              width: 30,
                              color: Colors.purple[400],
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: SvgPicture.asset(
                              "assets/icons/twitter.svg",
                              width: 30,
                              color: Colors.purple[400],
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: SvgPicture.asset(
                              "assets/icons/google-plus.svg",
                              width: 30,
                              color: Colors.purple[400],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )),
          // top image
          Positioned(
            left: 0,
            child: Image.asset(
              "assets/images/signup_top.png",
              width: 111,
            ),
          ),
          // bottom image
          Positioned(
            bottom: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: 111,
            ),
          ),
        ]),
      ),
    ));
  }
}
