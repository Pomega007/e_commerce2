import 'package:e_commerce/Config/LocationService.dart';
import 'package:e_commerce/Screens/Accounts/SuccessRegistration.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'UploadPreviewScreen.dart';
import 'package:e_commerce/Screens/SetLocationScreen.dart';

class SetLocation extends StatefulWidget {
  const SetLocation({Key? key}) : super(key: key);

  @override
  State<SetLocation> createState() => _SetLocationState();
}

class _SetLocationState extends State<SetLocation> {
  String? lat, long, country, adminArea;
  @override
  void initState() {
    super.initState();
    getLocation();
  }

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
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => UploadPreviewScreen()));
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
                    child: Text('Set Your Location',
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

            Container(
              alignment: Alignment.topLeft,
              height: 147,
              width: 320,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      ListTile(
                        leading: Image.asset('assets/pin.png',
                        height: 60),
                        title: Text(
                          'Your Location',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),

                    ],
                  ),

                  Container(
                    alignment: Alignment.bottomCenter,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFf6f6f6).withOpacity(0.2),
                          )
                        ]
                    ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          onSurface: Colors.transparent,
                          minimumSize: Size(270, 50),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                        ),
                        onPressed: (){
                          getLocation(
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (_) => SetLocationScreen(),
                                  )
                              ),
                          );
                        },
                        child: Text('Set Location'),
                      ),
                    ),
                  ),

                ],
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
                            padding: EdgeInsets.symmetric(horizontal: 75,vertical: 25,),
                            primary: Colors.transparent,
                            onSurface: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                          onPressed: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => SuccessRegistration(),
                                )
                            );
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

  void getLocation([Future<dynamic>? push]) async{
    final service = LocationService();
    final LocationData = await service.getLocation();
    if(LocationData != null ){
      setState(() {
        lat = LocationData.latitude!.toStringAsFixed(2);
        long = LocationData.longitude!.toStringAsFixed(2);
      });
    }
  }
}
