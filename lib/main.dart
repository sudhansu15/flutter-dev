import 'package:firebase_core/firebase_core.dart';
import 'package:first/responsive/responsive_layout_screen.dart';
import 'package:first/screens/login_screen.dart';
import 'package:first/utils/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:first/responsive/mobile_screen_layout.dart';
import 'package:first/responsive/web_screen_layout.dart';
// import 'package:first/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyAl5eDRttHXOrV5hmnYCYcBXgmcMY4v70o',
          appId: '1:709272424270:web:2577d92592be052b09981f',
          messagingSenderId: '709272424270',
          projectId: 'demoproject-c2963'),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'instagram clone',
      // home: const ResponsiveLayout(
      //     mobileScreenLayout: MobileScreenLayout(),
      //     webScreenLayout: WebScreenLayout()),
      home: LoginScreen(),
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
    );
  }
}
