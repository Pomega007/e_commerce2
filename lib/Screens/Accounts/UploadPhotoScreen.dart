import 'dart:io';
import 'package:e_commerce/Screens/Accounts/PaymentScreen.dart';
import 'package:e_commerce/Screens/Accounts/UploadPreviewScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class UploadPhotoScreen extends StatefulWidget {
  const UploadPhotoScreen({Key? key}) : super(key: key);

  @override
  State<UploadPhotoScreen> createState() => _UploadPhotoScreenState();
}

class _UploadPhotoScreenState extends State<UploadPhotoScreen> {
  File? image;

 Future getImage(ImageSource source) async{
   final image = await ImagePicker().pickImage(source: source);
   final imagePermanent = await saveImagePermanently(image!.path);
   setState(() {
   });
 }

 Future<File>saveImagePermanently(String imagePath) async{
   final directory = await getApplicationDocumentsDirectory();
   final name = basename(imagePath);
   final image = File('${directory.path}/$name');
   return File(imagePath).copy(image.path);
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
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PaymentScreen()));
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

            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                left: 30,
                right: 30,
              ),
              child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onSurface: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: (){
                        getImage(ImageSource.gallery);
                      },
                      child: Image.asset('assets/galleryicon.png')
                  )
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                left: 1,
                right: 1,
              ),
              child: DecoratedBox(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFF0F1F4).withOpacity(0.2),
                        spreadRadius: 6,
                        blurRadius: 10,
                        offset: Offset(0,3),
                      )
                    ],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onSurface: Colors.transparent,
                        shadowColor: Colors.transparent,
                        minimumSize: Size(300, 130),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                      ),
                      onPressed: (){
                        getImage(ImageSource.camera);
                      },
                      child: Image.asset('assets/camera.png')
                  )
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
                            Navigator.push(
                              context,
                                MaterialPageRoute(
                                builder: (context) => UploadPreviewScreen(
                                    // PreviewImage: image?.path,
                                )
                                ),
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
