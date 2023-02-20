import 'package:e_commerce/Screens/Accounts/LoginScreen.dart';
import 'package:e_commerce/Screens/Accounts/PaymentScreen.dart';
import 'package:e_commerce/Screens/Accounts/RegisterScreen.dart';
import 'package:flutter/material.dart';

class BioScreen extends StatefulWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  State<BioScreen> createState() => _BioScreenState();
}

class _BioScreenState extends State<BioScreen> {
  TextEditingController FirstName = TextEditingController();
  TextEditingController LastName =TextEditingController();
  TextEditingController MobileNumber = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Divider(
              height: 30,
              color: Colors.transparent,
            ),

              Container(
                child: Padding(
                padding: EdgeInsets.only(
                  left: 10
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => RegisterScreen()));
                  },
                    icon: Image.asset('assets/BackButton.png',),
                  ),
                      ),
                ),
              ),
            
            Container(
                height: 80,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 23,
                  right: 100,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                child: Text('Fill in your bio to get started',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                ),
            ),
              )
            ),

            Container(
                height: 80,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 23,
                    right: 100,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('This data will be displayed in your account profile for security',
                      style: TextStyle(
                      ),
                    ),
                  ),
                )
            ),

            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 15,
                ),

                child: TextFormField(
                  controller: FirstName,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    label: Text('First Name'),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
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
                  controller: LastName,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    label: Text('Last Name'),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
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
                  controller: MobileNumber,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    label: Text('Mobile Number'),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
              ),
            ),

            Flexible(
              flex: 3,
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
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PaymentScreen(),));

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
    );
  }
}
