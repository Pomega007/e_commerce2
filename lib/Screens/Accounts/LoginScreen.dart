import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/Config/GoogleSignInProvider.dart';
import 'package:e_commerce/Config/SharedPrefrences.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:e_commerce/Config/Model/UserProvider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final prefs = SharedPreferences.getInstance();
  final fireStore = FirebaseFirestore.instance;
  final User = UserID.getUser();
  bool _isLoggedIn = false;
  Map _UserObj = {};


  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
    child: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Pattern.png'),
            alignment: Alignment.topCenter,
          ),
        ),
        child: Column(
          children: [
            Divider(height: 20,
            color: Colors.transparent,
            ),
            Container(
              child: Image.asset('assets/Full Logo.png'),
              height: 200,
            ),

            Divider(height: 50,
              color: Colors.transparent,
            ),

            Text('Login To Your Account',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
            ),

            Flexible(
            child: Padding(
              padding: const EdgeInsets.only(
                right: 30,
                left: 30,
                top:  30,
              ),
              child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    label: Text('Email'),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Theme.of(context).primaryColor),
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
                top: 30,
              ),
              child: TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  label: Text('Password'),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Theme.of(context).primaryColor),
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

            Divider(
              height: 30,
              color: Colors.transparent,
            ),
            
            Text('Or Continue With',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Center(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 20,
                                  blurStyle: BlurStyle.normal,
                                ),
                              ],
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(135, 50),
                                primary: Colors.transparent,
                                onSurface: Colors.transparent,
                                shadowColor: Colors.transparent,
                              ),
                              onPressed: () async {
                               FacebookAuth.instance.login(
                                 permissions: ["public_profile", "email"]
                               ).then((value){
                                 FacebookAuth.instance.getUserData().then((value){
                                   setState(() {
                                     _isLoggedIn = false;
                                     _UserObj = {};
                                   });
                                 });
                               });
                              }, icon: Icon(Icons.facebook,
                            color: Colors.blue,
                            ),
                              label: Text('Facebook',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.onBackground,
                              ),
                              ),
                            )
                        ),
                      ),
                    ),
                  ),
                ),

                Flexible(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child:ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(140, 52),
                        primary: Colors.transparent,
                        onSurface: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {
                        final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                        provider.googleLogin();
                      },
                      label: Text('Google',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                      ),
                      icon: Image.asset('assets/google.png'),
                    ),
                  ),
                ),

              ],
            ),

            TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LoginScreen()));
                }, child: Text(' ',
              style: TextStyle(
                color: Color(0xFF15BE77),
                decoration: TextDecoration.underline,
              ),
            )),

            Flexible(
              child: Center(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Align(
                    alignment: Alignment.bottomCenter,
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
                            padding: EdgeInsets.symmetric(horizontal: 75,vertical: 25,),
                            primary: Colors.transparent,
                            onSurface: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomeScreen(),));
                          },
                          child: Text("Next",
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
          ],
        ),
      ),
    ),
  );
}
