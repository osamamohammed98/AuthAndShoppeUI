import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_ui_app/ui/pages/signup_page.dart';
import 'package:shopping_ui_app/ui/widget/input_field.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController _controllerPhone, _controllerPassword;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _controllerPhone = TextEditingController();
    _controllerPassword = TextEditingController();
  }

  checkInputs() {
    bool isTrue = formKey.currentState.validate();
    if (isTrue) {
      formKey.currentState.save();
      checkValues();
    } else {
      return;
    }
  }

  checkValues() {
    if (_controllerPhone.text == "0591231231" &&
        _controllerPassword.text == "123456") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage(),),);
    } else {
      print("there are error");
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.080,
                        ),
                        Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          width: size.width,
                          margin: EdgeInsets.symmetric(
                              horizontal: size.width * 0.044,
                              vertical: size.height * 0.116),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  " Enter your data",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.030,
                              ),
                              Form(
                                key: formKey,
                                child: Column(
                                  children: [
                                    CustomTextFormField(
                                      controller: _controllerPhone,
                                      keyboardType: TextInputType.phone,
                                      labelText: "Phone",
                                    ),
                                    SizedBox(
                                      height: size.height * 0.010,
                                    ),
                                    CustomTextFormField(
                                      controller: _controllerPassword,
                                      keyboardType: TextInputType.text,
                                      isObscureText: true,
                                      labelText: "Password",
                                    ),
                                    SizedBox(
                                      height: size.height * 0.005,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.030),
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          "Forgot password?",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color:   Color(0xff000000).withOpacity(0.56),
                                            decoration:
                                                TextDecoration.underline,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),


                                    Container(
                                      margin: EdgeInsets.only(top: size.height * 0.10),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.019),
                                      width: size.width * 0.70,
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
                                          checkInputs();
                                        },
                                        child: Text(
                                          "log in",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Text("Don't have account?" , style: TextStyle(color: Colors.black ,  fontSize: 13),),
                                  SizedBox(width: size.width * 0.012,),
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
                                      "Sign up",
                                      style: TextStyle(color: Colors.black , decoration: TextDecoration.underline , fontSize: 13),
                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
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

