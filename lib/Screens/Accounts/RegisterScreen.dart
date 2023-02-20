import 'package:e_commerce/Screens/Accounts/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'SignUp_BioScreen.dart';

import '../HomeScreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);


  @override
  State<RegisterScreen> createState() => _RegisterScreenState();

}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _Checked1 = true;
  bool _Checked2 = true;



  @override
  Widget build(BuildContext context) => Scaffold(
      body: Scaffold(
              body: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Pattern.png'),
                      alignment: Alignment.topCenter,
                    ),
                  ),
                child: Column(
                  children: [
                    Divider(height: 0,
                      color: Colors.transparent,
                    ),
                    Container(
                      child: Image.asset('assets/Full Logo.png'),
                      height: 200,
                    ),

                    Divider(height: 30,
                      color: Colors.transparent,
                    ),

                    Text('Sign Up For Free',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 30,
                          right: 30,
                          top: 15,
                        ),
                        child: TextFormField(
                          controller: nameController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsetsDirectional.only(start: 12.0),
                              child: Image.asset('assets/Profile.png'),
                            ),
                            label: Text('Name'),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'field is required';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),

                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 30,
                          left: 30,
                          top:  15,
                        ),
                        child: TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsetsDirectional.only(start: 12.0),
                              child: Image.asset('assets/Message.png'),
                            ),
                            label: Text('Email'),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'field is required';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 30,
                          right: 30,
                          top: 15,
                        ),

                        child: TextFormField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsetsDirectional.only(start: 12.0),
                              child: Image.asset('assets/Lock.png'),
                            ),
                            suffixIcon: Image.asset('assets/Shown.png'),
                            label: Text('Password'),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'field is required';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),

                    CheckboxListTile(
                      activeColor: Color(0xFF53E88B),
                      visualDensity: VisualDensity.compact,
                      value: _Checked1,
                      title: Text('Keep Me Signed In',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                      checkboxShape: CircleBorder(side: BorderSide(width: 35,)),
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (bool? value) {
                        setState(() {
                          _Checked1 = value!;
                        });
                        },
                    ),
                    CheckboxListTile(
                      activeColor: Color(0xFF53E88B),
                      visualDensity: VisualDensity.compact,
                      checkboxShape: CircleBorder(),
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text('Email Me About Pricing',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                      value: _Checked2,
                      selectedTileColor: Color(0xFF53E88B),
                      onChanged: (bool? value) {
                        setState(() {
                          _Checked2 = value!;
                        });
                        },
                    ),

                    Flexible(
                      child: Center(
                        child: Container(
                          child: Align(
                            child: DecoratedBox(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        Color(0xFF53E88B),
                                        Color(0xFF15BE77),
                                      ]),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15,),
                                    primary: Colors.transparent,
                                    onSurface: Colors.transparent,
                                    shadowColor: Colors.transparent,
                                  ),
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => BioScreen(),));
                                  },
                                  child: Text("Create Account",
                                    style: TextStyle(
                                      color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                )
                            ),
                          ),
                        ),
                      ),
                    ),

                    TextButton(
                        onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LoginScreen()));
                    }, child: Text('Already Have An Account?',
                    style: TextStyle(
                      color: Color(0xFF15BE77),
                      decoration: TextDecoration.underline,
                    ),
                    ))
                    
                  ]
                ),
              ),
            ),
  );
}
