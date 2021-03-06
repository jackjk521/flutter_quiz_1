// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_quiz_1/pages/Dashboard.dart';
import 'package:flutter_quiz_1/widgets/CustomTextInputField.dart';
import 'package:flutter_quiz_1/widgets/PasswordField.dart';
import 'package:flutter_quiz_1/widgets/PrimaryButton.dart';

class Login extends StatefulWidget {
  static const String routeName = "login";

  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                CustomTextInputField(
                  labelText: "Email Address",
                  hintText: "Enter Valid Email Address",
                  iconData: Icons.email,
                  textInputType: TextInputType.emailAddress,
                  textEditingController: emailTextController,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                PasswordField(
                  labelText: "Password",
                  hintText: "Enter Valid Password",
                  obscureText: obscureText,
                  onTap: setPasswordVisibility,
                  textEditingController: passwordTextController,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                PrimaryButton(
                    labelText: "Login",
                    iconData: Icons.login,
                    onPress: loginNoValidation),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  void setPasswordVisibility() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  void loginNoValidation() {
    Navigator.pushReplacementNamed(context, Dashboard.routeName);
  }
}

