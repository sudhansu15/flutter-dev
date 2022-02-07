import 'package:first/utils/colors.dart';
import 'package:first/widgets/text_field_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _bioController.dispose();
    _usernameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //main design
      body: SafeArea(
        //below the notch or visible area
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
              const SizedBox(height: 64.0),
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1644169342452-a127938af7d1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1168&q=80'),
                  ),
                  Positioned(
                    bottom: -10,
                    left: 80,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add_a_photo),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 32.0),
              //login form
              //textfield for username
              TextFieldInput(
                  hintText: 'enter your username',
                  textEditingController: _usernameController,
                  textInputType: TextInputType.text),
              const SizedBox(height: 24.0),
              TextFieldInput(
                  hintText: 'enter your email',
                  textEditingController: _emailController,
                  textInputType: TextInputType.emailAddress),
              const SizedBox(height: 24.0),
              //textfield for bio
              TextFieldInput(
                  hintText: 'enter your bio',
                  textEditingController: _bioController,
                  textInputType: TextInputType.text),
              const SizedBox(height: 24.0),
              TextFieldInput(
                  hintText: 'enter your password',
                  textEditingController: _passwordController,
                  textInputType: TextInputType.text,
                  isPass: true),
              const SizedBox(
                height: 24.0,
              ),
              //button login
              InkWell(
                child: Container(
                  child: const Text('Signup'),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      color: blueColor),
                ),
              ),
              //transitioning to signup
              /* Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Text('don\'t have an account ?'),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  //signup gesture detector
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: const Text(' sign In',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                    ),
                  ),
                ],
              ), */
              const SizedBox(
                height: 24.0,
              ),
              Flexible(
                child: Container(),
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
