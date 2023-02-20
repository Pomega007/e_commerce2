import 'package:e_commerce/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

class Rating extends StatefulWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Pattern.png'),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [

            Divider(
              height: 250,
              color: Colors.transparent,
            ),
            Center(
              child: Image.asset('assets/Image(3).png'),
            ),
            Divider(
              height: 30,
              color: Colors.transparent,
            ),
            Align(
              alignment: Alignment.center,
            child: Text(
                '     Thank You!\nEnjoy Your Meal',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
            ),

            Divider(height: 20,
            color: Colors.transparent,
            ),

            Align(
              alignment: Alignment.center,
              child: Text(
                'Please rate your Food',
              ),
            ),

            Divider(
              height: 20,
              color: Colors.transparent,
            ),

            Center(
              child: Image.asset('assets/Star.png'),
            ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 15,
                ),

                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 12.0),
                      child: Image.asset('assets/EditIcon.png'),
                    ),
                    label: Text('Leave a feedback'),
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

            Divider(
              height: 20,
              color: Colors.transparent,
            ),

            Container(
                  child: Align(
                    alignment: Alignment.center,
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
                            padding: EdgeInsets.symmetric(horizontal: 130,vertical: 20,),
                            primary: Colors.transparent,
                            onSurface: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomeScreen(),));
                          },
                          child: Text("Submit",
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
          ],
        ),
      ),
    );
  }
}
