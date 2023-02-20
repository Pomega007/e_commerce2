import 'package:e_commerce/Screens/Accounts/Contacs.dart';
import 'package:e_commerce/Screens/Accounts/SuccessRegistration.dart';
import 'package:e_commerce/Screens/OnBoarding1.dart';
import 'package:e_commerce/Screens/Order%20Confirmation.dart';
import 'package:e_commerce/Screens/OrderDetails.dart';
import 'package:e_commerce/Screens/ProductScreen.dart';
import 'package:e_commerce/Screens/SetLocationScreen.dart';
import 'package:e_commerce/Screens/ShopView.dart';
import 'package:flutter/material.dart';
import 'Accounts/Profile Screen.dart';
import 'ChatScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff29313C),
      body: DefaultTabController(
        length: 4,
        child: Scaffold(
          bottomNavigationBar: menu(),
          body: TabBarView(
              children:
              <Widget>[
                ShopScreen(),
                ProfileScreen(),
                ConfirmOrder(),
                ContactsScreen(),
              ]
          ),
        ),
      ),
    );
  }

  Widget menu() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(20)
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 20,
      ),
        child: TabBar(
          indicator: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xFF53E88B).withOpacity(0.1),
                  Color(0xFF15BE77).withOpacity(0.1),
                ]),
            borderRadius: BorderRadius.circular(20),
          ),
          labelColor: Color(0xffBABEC4),
          unselectedLabelColor: Color(0xffBABEC4),
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: EdgeInsets.all(5.0),
          indicatorColor: Theme.of(context).primaryColor,
          tabs: [
            Tab(
              icon: Image.asset(
                  'assets/Home.png'
              ),
            ),
            Tab(
              icon: Image.asset(
                  'assets/Profile.png'
              ),
            ),
            Tab(
              icon: Image.asset(
                  'assets/Cart.png'
              ),
            ),
            Tab(
              icon: Image.asset(
                  'assets/Chat.png'
              ),
            ),
          ],
        ));
  }}
