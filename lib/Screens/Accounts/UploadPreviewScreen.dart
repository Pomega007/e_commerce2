import 'dart:io';
import 'package:e_commerce/Screens/Accounts/SetLocation.dart';
import 'package:e_commerce/Screens/Accounts/UploadPhotoScreen.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class UploadPreviewScreen extends StatefulWidget {

  final PreviewImage;

  UploadPreviewScreen({
    this.PreviewImage
});

  @override
  State<UploadPreviewScreen> createState() => _UploadPreviewScreenState();

}

class _UploadPreviewScreenState extends State<UploadPreviewScreen> {
  File? image;

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
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => UploadPhotoScreen()));
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
                    child: Text('Upload Your Photo Profile',
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

            Divider(
              height: 30,
              color: Colors.transparent,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/profilepic.png'
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
                                  builder: (_) => SetLocation(),
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
}
