import 'package:e_commerce/Screens/Edit%20Location.dart';
import 'package:e_commerce/Screens/OrderDetails.dart';
import 'package:flutter/material.dart';

import 'Edit Payment.dart';
import 'My Orders.dart';

class ConfirmOrder extends StatefulWidget {
  const ConfirmOrder({Key? key}) : super(key: key);

  @override
  State<ConfirmOrder> createState() => _ConfirmOrderState();
}

class _ConfirmOrderState extends State<ConfirmOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Pattern (1).png'),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topRight,
          ),
        ),
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
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => OrderDetail()));
                  },
                    icon: Image.asset('assets/BackButton.png'),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 20,
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Confirm Order',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
            ),

            Divider(
              height: 30,
              color: Colors.transparent,
            ),

            Container(
                width: 350,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).primaryColor,
                ),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Deliver To'),
                      TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_) => LocationEdit()));
                          },
                          child: Text(
                              'Edit',
                            style: TextStyle(
                              color: Color(0xFF53E88B),
                            ),
                          ),
                      )
                    ],
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                            Image.asset('assets/pin.png'),
                            Text(
                                '4517 Washington Ave. Manchester, \nKentucky 39495',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    ],
                  ),
                )
            ),

            Divider(
              height: 20,
              color: Colors.transparent,
            ),

            Container(
                width: 350,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).primaryColor,
                ),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Payment Method'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => PaymentEdit()));
                        },
                        child: Text(
                          'Edit',
                          style: TextStyle(
                            color: Color(0xFF53E88B),
                          ),
                        ),
                      )
                    ],
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/paypal.png'),
                      Text(
                        '2121 6352 8465 ****',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )
            ),

            Divider(
              height: 100,
              color: Colors.transparent,
            ),

            Container(
              padding: EdgeInsets.only(
                left: 30,
                top: 20,
                right: 30,
              ),
              height: 230,
              width: 370,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/Backround.png'),
                    fit: BoxFit.fill
                ),
                borderRadius: BorderRadius.circular(25),
                gradient: LinearGradient(
                    colors: <Color> [
                      Color(0xFF53E88B),
                      Color(0xFF15BE77),
                    ]
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sub-Total',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        '120 \$',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 10,
                    color: Colors.transparent,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Charge',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        '10 \$',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 10,
                    color: Colors.transparent,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discount',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        '20 \$',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 30,
                    color: Colors.transparent,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        '150 \$',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 15,
                    color: Colors.transparent,
                  ),
                  Container(
                    height: 65,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(50),
                        primary: Colors.transparent,
                        onSurface: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => MyOrders()));
                      },
                      child: Text(
                        'Place My Order',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF53E88B),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

          ],
        )
      )
    );
  }
}
