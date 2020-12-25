import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_ui_app/ui/pages/profile.dart';
import 'package:shopping_ui_app/ui/pages/signin_page.dart';
import 'package:shopping_ui_app/ui/pages/signup_page.dart';
import 'package:shopping_ui_app/ui/widget/page_view.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height,
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Image.asset(
                      "assets/images/bottom_right_image.PNG",
                      width: size.width * 0.40,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    width: size.width * 0.40,
                    top: 0,
                    left: 0,
                    child: Image.asset(
                      "assets/images/top_left_image.PNG",
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.135,
                          ),
                          Text(
                            "Buy your favourites",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.015,
                          ),
                          Text(
                            " personalization of your\nshopping brands",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          PageViewer(),
                          Container(
                            margin: EdgeInsets.only(top: size.height * 0.07),
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.019),
                            width: size.width * 0.50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xff606060),
                                  Color(0xff131313),
                                ],
                              ),
                            ),
                            child: FlatButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Profile(),
                                ));
                              },
                              child: Text(
                                "Start Shopping",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignInPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.underline,
                                      fontSize: 13),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.012,
                              ),
                              Text(
                                "or",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13),
                              ),
                              SizedBox(
                                width: size.width * 0.012,
                              ),
                              FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUpPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.underline,
                                      fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
