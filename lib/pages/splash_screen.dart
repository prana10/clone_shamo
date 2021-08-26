import 'package:flutter/material.dart';
import 'dart:async';
class SplashScreen extends StatefulWidget {
	@override
	_SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
	@override
	void initState() {
		Timer(
			Duration(seconds: 3),
			() => Navigator.pushNamed(context, '/sign_in'),
		);
		super.initState();
	}
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Center(
				child: Container(
					width: 130,
					height: 150,
					decoration: BoxDecoration(
						image: DecorationImage(
							image: AssetImage("assets/image_splash.png"),
						),
					),
				),
			),
		);
	}
}

