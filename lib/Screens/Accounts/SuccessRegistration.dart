import 'package:flutter/material.dart';
import '../ChatScreen.dart';
import '../HomeScreen.dart';

class SuccessRegistration extends StatefulWidget {
  const SuccessRegistration({Key? key}) : super(key: key);

  @override
  State<SuccessRegistration> createState() => _SuccessRegistrationState();
}

class _SuccessRegistrationState extends State<SuccessRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Pattern.png'),
            alignment: Alignment.topCenter,
          ),
        ),
        child: Column(
          children: [
            Divider(
              height: 200,
              color: Colors.transparent,
            ),
            Container(
              alignment: Alignment.center,
              height: 250,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 20,
                        color: Theme.of(context).scaffoldBackgroundColor
                    )
                  ]
              ),
              child: Image.asset('assets/checkmark.png'),
            ),
            
            Text(
              'Congrats!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF30d180),
                fontSize: 30,
              ),
            ),

            Text(
              'Your Profile Is Ready To Use',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),

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
                            padding: EdgeInsets.symmetric(horizontal: 55,vertical: 25,),
                            primary: Colors.transparent,
                            onSurface: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
                          },
                          child: Text("Try Order",
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
