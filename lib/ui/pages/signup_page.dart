import 'package:flutter/material.dart';
import 'package:shopping_ui_app/ui/widget/input_field.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  int groupValue = 1;

  final formKey = GlobalKey<FormState>();

  checkInputs() {
    bool isTrue = formKey.currentState.validate();
    if (isTrue) {
      formKey.currentState.save();
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width,
              child: Stack(
                children: [
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
                    child: SingleChildScrollView(
                      physics: NeverScrollableScrollPhysics(),
                      child: Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.080,
                          ),
                          Text(
                            "Sign Up",
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
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: RadioListTile(
                                        activeColor: Color(0xff606060),
                                        title: Text(
                                            "Company",
                                            style:  TextStyle(
                                                color:   Color(0xff6c738a),
                                                fontWeight: FontWeight.w400,
                                                fontStyle:  FontStyle.normal,
                                                fontSize: 13.0
                                            ),
                                            textAlign: TextAlign.left
                                        ),
                                        value: 1,
                                        groupValue: groupValue,
                                        onChanged: (value) {
                                          setState(() {
                                            groupValue = value;
                                          });
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: RadioListTile(
                                        activeColor: Color(0xff606060),
                                        title: Text(
                                            "Name",
                                            style:  TextStyle(
                                                color:   Color(0xff6c738a),
                                                fontWeight: FontWeight.w400,
                                                fontStyle:  FontStyle.normal,
                                                fontSize: 13.0
                                            ),
                                            textAlign: TextAlign.left
                                        ),
                                        value: 2,
                                        groupValue: groupValue,
                                        onChanged: (value) {
                                          setState(() {
                                            groupValue = value;
                                          });
                                        },
                                      ),
                                    ),
                                    Expanded(flex: 1,child: Container()),
                                  ],
                                ),

                               groupValue == 1 ? Form(
                                  key: formKey,
                                  child: Column(
                                    children: [
                                      CustomTextFormField(
                                        keyboardType: TextInputType.text,
                                        labelText: "Company name",
                                      ),
                                      SizedBox(
                                        height: size.height * 0.010,
                                      ),
                                      DropButton(),
                                      SizedBox(
                                        height: size.height * 0.010,
                                      ),
                                      CustomTextFormField(
                                        keyboardType: TextInputType.text,
                                        labelText: "@ Account name",
                                      ),
                                      SizedBox(
                                        height: size.height * 0.010,
                                      ),
                                      CustomTextFormField(
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        labelText: "Instagram Account ",
                                      ),
                                      SizedBox(
                                        height: size.height * 0.010,
                                      ),
                                      CustomTextFormField(
                                        keyboardType: TextInputType.phone,
                                        labelText: "Mobile",
                                      ),
                                      SizedBox(
                                        height: size.height * 0.010,
                                      ),
                                      CustomTextFormField(
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        labelText: "Email",
                                      ),
                                      SizedBox(
                                        height: size.height * 0.010,
                                      ),
                                      DropCountryButton(),
                                      SizedBox(
                                        height: size.height * 0.010,
                                      ),
                                      CustomTextFormField(
                                        keyboardType: TextInputType.text,
                                        labelText: "City",
                                      ),
                                      SizedBox(
                                        height: size.height * 0.010,
                                      ),
                                      CustomTextFormField(
                                        keyboardType: TextInputType.text,
                                        labelText: "Password",
                                        isObscureText: true,
                                      ),
                                      SizedBox(
                                        height: size.height * 0.010,
                                      ),
                                      CustomTextFormField(
                                        keyboardType: TextInputType.text,
                                        labelText: "Confirm password",
                                        isObscureText: true,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: size.height * 0.050),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: size.width * 0.019),
                                        width: size.width * 0.70,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
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
                                            "sign up",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ) :Form(
                                 key: formKey,
                                 child: Column(
                                   children: [
                                     CustomTextFormField(
                                       keyboardType: TextInputType.text,
                                       labelText: "Company name",
                                     ),
                                     SizedBox(
                                       height: size.height * 0.010,
                                     ),
                                     DropButton(),
                                     SizedBox(
                                       height: size.height * 0.010,
                                     ),
                                     CustomTextFormField(
                                       keyboardType: TextInputType.text,
                                       labelText: "@ Account name",
                                     ),
                                     SizedBox(
                                       height: size.height * 0.010,
                                     ),
                                     CustomTextFormField(
                                       keyboardType:
                                       TextInputType.emailAddress,
                                       labelText: "Instagram Account ",
                                     ),
                                     SizedBox(
                                       height: size.height * 0.010,
                                     ),
                                     CustomTextFormField(
                                       keyboardType: TextInputType.phone,
                                       labelText: "Mobile",
                                     ),
                                     SizedBox(
                                       height: size.height * 0.010,
                                     ),
                                     CustomTextFormField(
                                       keyboardType:
                                       TextInputType.emailAddress,
                                       labelText: "Email",
                                     ),
                                     SizedBox(
                                       height: size.height * 0.010,
                                     ),
                                     DropCountryButton(),
                                     SizedBox(
                                       height: size.height * 0.010,
                                     ),
                                     CustomTextFormField(
                                       keyboardType: TextInputType.text,
                                       labelText: "City",
                                     ),
                                     SizedBox(
                                       height: size.height * 0.010,
                                     ),
                                     CustomTextFormField(
                                       keyboardType: TextInputType.text,
                                       labelText: "Password",
                                       isObscureText: true,
                                     ),
                                     SizedBox(
                                       height: size.height * 0.010,
                                     ),
                                     CustomTextFormField(
                                       keyboardType: TextInputType.text,
                                       labelText: "Confirm password",
                                       isObscureText: true,
                                     ),
                                     Container(
                                       margin: EdgeInsets.only(
                                           top: size.height * 0.050),
                                       padding: EdgeInsets.symmetric(
                                           horizontal: size.width * 0.019),
                                       width: size.width * 0.70,
                                       decoration: BoxDecoration(
                                         borderRadius:
                                         BorderRadius.circular(30),
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
                                           "sign up",
                                           style:
                                           TextStyle(color: Colors.white),
                                         ),
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

class DropButton extends StatefulWidget {
  @override
  _DropButtonState createState() => _DropButtonState();
}

class _DropButtonState extends State<DropButton> {
  String currantGender = "Gender";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.044),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Color(0xffe2e2e2), width: 1),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
            value: currantGender,
            isExpanded: true,
            items: [
              DropdownMenuItem(
                child: Text("Gender"),
                value: "Gender",
              ),
              DropdownMenuItem(
                child: Text("Meal"),
                value: "Meal",
              ),
              DropdownMenuItem(
                child: Text("Female"),
                value: "Female",
              ),
            ],
            onChanged: (value) {
              setState(() {
                currantGender = value;
              });
            }),
      ),
    );
  }
}

class DropCountryButton extends StatefulWidget {
  @override
  _DropCountryButtonState createState() => _DropCountryButtonState();
}

class _DropCountryButtonState extends State<DropCountryButton> {
  String currantGender = "Country";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.044),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Color(0xffe2e2e2), width: 1),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
            value: currantGender,
            isExpanded: true,
            items: [
              DropdownMenuItem(
                child: Text("Country"),
                value: "Country",
              ),
              DropdownMenuItem(
                child: Text("Gaza"),
                value: "Gaza",
              ),
              DropdownMenuItem(
                child: Text("Khan younies"),
                value: "Khan younies",
              ),
            ],
            onChanged: (value) {
              setState(() {
                currantGender = value;
              });
            }),
      ),
    );
  }
}
