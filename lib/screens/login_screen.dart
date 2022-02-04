import 'package:first/utils/colors.dart';
import 'package:first/widgets/text_field_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //image
              Flexible(
                child: Container(),
                flex: 1,
              ),
              SvgPicture.asset(
                'assets/ic_instagram.svg',
                color: primaryColor,
                height: 64,
              ),
              //login form
              const SizedBox(height: 64.0),
              TextFieldInput(
                  hintText: 'enter your email',
                  textEditingController: _emailController,
                  textInputType: TextInputType.emailAddress),
              //transitioning to signup
              TextFieldInput(
                  hintText: 'enter your password',
                  textEditingController: _passwordController,
                  textInputType: TextInputType.text,
                  isPass: true),
              //transitioning to signup
            ],
          ),
        ),
      ),
    );
  }
}
