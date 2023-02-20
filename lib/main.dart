import 'package:e_commerce/Config/GoogleSignInProvider.dart';
import 'package:e_commerce/Controller/Dio/DioHelper.dart';
import 'package:e_commerce/Screens/SplashScreen.dart';
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Config/SharedPrefrences.dart';
import 'Utilities/ThemeProvider.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:e_commerce/Config/Model/UserProvider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  await UserSharedPrefrences.init();
  runApp(MyApp());
  DioHelper.init();
}

class MyApp extends StatelessWidget {
  final User = UserID.getUser();
  String url = 'https://reqres.in/api/users?page=2';
  Dio dio = Dio();


  @override
  Widget build(BuildContext context) {
      return ThemeProvider(
      initTheme: User.isDark ? MyThemes.darkTheme : MyThemes.lightTheme,
      child: Builder(
        builder: (themeContext) =>ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        darkTheme: MyThemes.darkTheme,
        themeMode: ThemeMode.system,
        theme: User.isDark ? MyThemes.darkTheme : MyThemes.lightTheme,
        home: SplashScreen()
        // AnimatedSplashScreen(
        //   backgroundColor: Theme.of(context).primaryColor
        //   duration: 3000,
        //   splashIconSize: 174,
        //   splash: Center(
        //     child: Column(
        //       children: [
        //         Container(
        //         ),
        //         Container(
        //           child: Image.asset('assets/Logo.png',
        //             fit: BoxFit.fill,
        //           ),
        //         ),
        //         Container(
        //           child: Center(
        //               child: Container(
        //                 child: Text(
        //                     "FoodNinja",
        //                     style: TextStyle(
        //                         fontSize: 30.0,
        //                         fontWeight: FontWeight.bold,
        //                         foreground: Paint()
        //                           ..shader = LinearGradient(
        //                             colors: <Color>[
        //                               Color(0xFF53E88B),
        //                               Color(0xFF15BE77),
        //                             ],
        //                           ).createShader(
        //                               Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))
        //                     )
        //                 ),
        //               )
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        //   pageTransitionType: PageTransitionType.rightToLeft,
        //   nextScreen: OnBoarding1(),
        // ),
        // onGenerateRoute: onGenerate,
        // initialRoute: AppRoutes.loginRoute,
      ),
    ),
      ),
    );
}
}