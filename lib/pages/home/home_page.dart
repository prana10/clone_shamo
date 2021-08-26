import 'package:clone_shamo/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      // bottomNavigationBar: customBottomBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: customFAB(),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }

  FloatingActionButton customFAB() {
    return FloatingActionButton(
      backgroundColor: floatingButtonColor,
      onPressed: () {},
      child: Center(
        child: Image.asset(
          "assets/icon_cart.png",
          width: 20,
        ),
      ),
    );
  }
}
