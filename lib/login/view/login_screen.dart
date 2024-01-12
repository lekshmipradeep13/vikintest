import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:vikn_test/login/controller/login_cntrl.dart';
import 'package:vikn_test/widget/error%20_snackbar_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<LoginController>(
      builder: (context, value, child) => Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/background_img.png'),
                    fit: BoxFit.fill)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/icon.png',
                        scale: 4,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'English',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff090909)),
                      ),
                      SizedBox(width: 36),
                    ],
                  ),
                  SizedBox(height: 195),
                  Text('Login',
                      style: GoogleFonts.poppins(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000))),
                  Text(
                    'Login to your vikn account',
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff838383)),
                  ),
                  SizedBox(height: 27),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 36),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffE6E6E6)),
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.white),
                      child: Column(
                        children: [
                          TextField(
                              controller: value.usernameCntrl,
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide.none),
                                  prefixIcon: Image.asset(
                                    'assets/profileicon.png',
                                    scale: 4,
                                  ),
                                  hintText: 'Username',
                                  hintStyle: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400))),
                          Container(
                            height: 1,
                            width: double.infinity,
                            color: Color(0xffE6E6E6),
                          ),
                          TextField(
                              controller: value.passwordCntrl,
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide.none),
                                  prefixIcon: Image.asset(
                                    'assets/keyicon.png',
                                    scale: 4,
                                  ),
                                  hintText: 'Password',
                                  hintStyle: GoogleFonts.poppins(
                                      fontSize: 14, fontWeight: FontWeight.w400),
                                  suffixIcon: Image.asset(
                                    'assets/eyeicon.png',
                                    scale: 4,
                                  ))),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 29),
                  Text(
                    'Forgotten Password?',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff0A9EF3)),
                  ),
                  SizedBox(height: 35),
                value.isLoading ? CircularProgressIndicator() : CupertinoButton(
                    minSize: 0,
                    padding: EdgeInsets.zero,
                    onPressed: () {

                      
                      Provider.of<LoginController>(context, listen: false).login(
                          value.usernameCntrl.text,
                          value.passwordCntrl.text,
                          context);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                      height: 48,
                      width: 125,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(125),
                          color: Color(0xff0E75F4)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sign in',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffFFFFFF)),
                          ),
                          Image.asset(
                            'assets/arrowicon.png',
                            scale: 4,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 168),
                  Text(
                    'Don’t have an Account?',
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000)),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Sign up now!',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xff0A9EF3)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

