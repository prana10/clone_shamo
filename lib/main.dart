import 'package:clone_shamo/pages/home/chat_page.dart';
import 'package:clone_shamo/pages/home/home_page.dart';
import 'package:clone_shamo/pages/home/profile_page.dart';
import 'package:clone_shamo/pages/home/wishlist_page.dart';
import 'package:clone_shamo/pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:clone_shamo/pages/splash_screen.dart';
import 'package:clone_shamo/pages/sign_in.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "cloning shamo E-Commerce App",
      routes: {
        '/': (context) => SplashScreen(),
        '/sign_in': (context) => SignIn(),
        '/sign_up': (context) => SignUp(),
        '/home': (context) => HomePage(),
        '/chat': (context) => ChatPage(),
        '/wishlist': (context) => WishlistPage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
