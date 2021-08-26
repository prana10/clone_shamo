import 'package:clone_shamo/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: defaultMargin,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                headingText(),
                SizedBox(height: MediaQuery.of(context).size.height / 9),
                CustomTextField("Email Address", "assets/icon_email.png",
                    "Your Email Address"),
                SizedBox(height: 20),
                CustomInputField(
                    "Password", "assets/icon_password.png", "Your Password"),
                SizedBox(height: 40),
                buttonSubmit("Sign In"),
                SizedBox(height: MediaQuery.of(context).size.height / 2.8),
                account(),
                SizedBox(height: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget account() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "You don't have account? ",
          style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xff504f5e),
          ),
        ),
        SizedBox(width: 5),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/sign_up');
          },
          child: Text(
            "Sign Up",
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: primaryColor,
            ),
          ),
        ),
      ],
    );
  }

  Widget buttonSubmit(String titleButton) => InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/home');
        },
        child: Container(
          width: MediaQuery.of(context).size.width / 1,
          height: MediaQuery.of(context).size.height / 13,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: primaryColor,
          ),
          child: Center(
            child: Text(
              titleButton,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      );

  // ignore: non_constant_identifier_names
  Widget CustomTextField(String title, String iconName, String subtitle) =>
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // width: MediaQuery.of(context).size.width / 1,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xff2b2937),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 19,
                      bottom: 19,
                      left: 17,
                      right: 18,
                    ),
                    child: Image.asset(
                      iconName,
                      width: 17,
                      height: 12,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      decoration: InputDecoration.collapsed(
                        hintText: subtitle,
                        hintStyle: GoogleFonts.poppins(
                          color: Color(0xff504f5e),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  Widget CustomInputField(String title, String iconName, String subtitle) =>
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // width: MediaQuery.of(context).size.width / 1,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xff2b2937),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 19,
                      bottom: 19,
                      left: 17,
                      right: 18,
                    ),
                    child: Image.asset(
                      iconName,
                      width: 17,
                      height: 12,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      decoration: InputDecoration.collapsed(
                        hintText: subtitle,
                        hintStyle: GoogleFonts.poppins(
                          color: Color(0xff504f5e),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Widget headingText() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Login",
            style: GoogleFonts.poppins(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            "Sign in to continue",
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff504f5e),
            ),
          ),
        ],
      );
}
