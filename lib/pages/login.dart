import 'package:auth_app/widgets/text-form-field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
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
                        height: 33,
                      ),
                      const Text(
                        "Login",
                        style: TextStyle(fontSize: 24),
                      ),
                      const SizedBox(
                        height: 33,
                      ),
                      SvgPicture.asset("assets/icons/login.svg"),
                      const SizedBox(
                        height: 10,
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
                            EdgeInsets.symmetric(horizontal: 130, vertical: 10),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27),
                            ),
                          ),
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Dont have an Account ? ",
                            style: TextStyle(
                              color: Colors.purple,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/signup");
                            },
                            child: const Text(
                              "SIGNUP",
                              style: TextStyle(
                                color: Colors.purple,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            // top image
            Positioned(
              left: 0,
              child: Image.asset(
                "assets/images/main_top.png",
                width: 111,
              ),
            ),
            // bottom image
            Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset("assets/images/login_bottom.png", width: 111),
            ),
          ]),
        ),
      ),
    );
  }
}
