import 'package:e_commerce/Screens/Accounts/LoginScreen.dart';
import 'package:e_commerce/Screens/Accounts/SignUp_BioScreen.dart';
import 'package:e_commerce/Screens/Accounts/UploadPhotoScreen.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => BioScreen()));
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
                    child: Text('Payment Method',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
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
                  top: 15,
                  left: 30,
                  right: 30,
                ),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(470, 100),
                            primary: Colors.transparent,
                            onSurface: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PaymentScreen(),));

                          },
                          child: Image.asset('assets/paypal.png')
                        )
                    ),
              ),
            ),

            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  left: 30,
                  right: 30,
                ),
                child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(470, 100),
                          primary: Colors.transparent,
                          onSurface: Colors.transparent,
                          shadowColor: Colors.transparent,
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PaymentScreen(),));

                        },
                        child: Image.asset('assets/visa.png')
                    )
                ),
              ),
            ),

            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  left: 30,
                  right: 30,
                ),
                child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(470, 100),
                          primary: Colors.transparent,
                          onSurface: Colors.transparent,
                          shadowColor: Colors.transparent,
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PaymentScreen(),));

                        },
                        child: Image.asset('assets/payoneer.png')
                    )
                ),
              ),
            ),

            Flexible(
              flex: 2,
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
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => UploadPhotoScreen(),));
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

            Divider(
              height: 30,
              color: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
