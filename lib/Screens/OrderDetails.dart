import 'package:e_commerce/Screens/Accounts/PaymentScreen.dart';
import 'package:e_commerce/Screens/Order%20Confirmation.dart';
import 'package:e_commerce/Screens/Rainbow%20Sandwich%20Sugarless.dart';
import 'package:flutter/material.dart';

class OrderDetail extends StatefulWidget {
  const OrderDetail({Key? key}) : super(key: key);

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
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
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => RainbowSandwichProduct()));
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
                  'Order Details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              ),
            ),
            Divider(
              height: 20,
              color: Colors.transparent,
            ),
            Column(
              children: [
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
                    leading: Image.asset('assets/Food.png'),
                    subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Text('Waroenk kita'),
                        Divider(
                          height: 10,
                          color: Colors.transparent,
                        ),
                        Text(
                          '\$ 35',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF53E88B),
                          ),
                        )
                    ]
                    ),
                    title: Text('Spacy fresh crab'),
                  )
                ),

                Divider(
                  height: 15,
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
                      leading: Image.asset('assets/Pasta.png'),
                      subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Divider(
                              height: 15,
                              color: Colors.transparent,
                            ),
                            Text('Waroenk kita'),
                            Divider(
                              height: 10,
                              color: Colors.transparent,
                            ),
                            Text(
                              '\$ 35',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF53E88B),
                              ),
                            )
                          ]
                      ),
                      title: Text('Spacy fresh crab'),
                    )
                ),

                Divider(
                  height: 15,
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
                      leading: Image.asset('assets/Shawerma.png'),
                      subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Divider(
                              height: 15,
                              color: Colors.transparent,
                            ),
                            Text('Waroenk kita'),
                            Divider(
                              height: 10,
                              color: Colors.transparent,
                            ),
                            Text(
                              '\$ 35',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF53E88B),
                              ),
                            )
                          ]
                      ),
                      title: Text('Spacy fresh crab'),
                    )
                ),

                Divider(
                  height: 130,
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
                            Navigator.push(context, MaterialPageRoute(builder: (_) => ConfirmOrder()));
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
          ],
        ),
      ),
    );
  }
}
