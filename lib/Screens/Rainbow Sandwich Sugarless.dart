import 'package:e_commerce/Screens/OrderDetails.dart';
import 'package:e_commerce/Widgets/MneuWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RainbowSandwichProduct extends StatefulWidget {
  const RainbowSandwichProduct({Key? key}) : super(key: key);

  @override
  State<RainbowSandwichProduct> createState() => _RainbowSandwichProductState();
}

class _RainbowSandwichProductState extends State<RainbowSandwichProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/MenuPhoto.png'),
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          children: [
            Spacer(),
            Container(
              padding: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              alignment: Alignment.bottomCenter,
              height: 700,
              decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.zero,
                      bottomRight: Radius.zero
                  )
              ),
              child: Column(
                children: [
                  Divider(
                    height: 20,
                    color: Colors.transparent,
                  ),
                  Container(
                    height: 10,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Healthy Food',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(
                    height: 20,
                    color: Colors.transparent,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                'Popular',
                                style: TextStyle(
                                  color: Color(0xFF53E88B),
                                ),
                              ),
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: <Color>[
                                      Color(0xFF53E88B).withOpacity(0.2),
                                      Color(0xFF15BE77).withOpacity(0.2),
                                    ]
                                ),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              // child: Text('Poplar'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                              child: CircleAvatar(
                                backgroundColor: Color(0xFF53E88B).withOpacity(0.2),
                                child: Image.asset('assets/LocationPin.png'),
                              )
                          ),
                          Align(
                              child: CircleAvatar(
                                backgroundColor: Colors.red.withOpacity(0.2),
                                child: Icon(
                                  CupertinoIcons.heart_fill,
                                  color: Colors.red,
                                ),
                              )
                          ),
                        ],
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      CircleAvatar(
                          child: Image.asset('assets/IconMap.png'),
                          backgroundColor: Colors.transparent
                      ),
                      Text(
                        '19 Km',
                        style: TextStyle(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      CircleAvatar(
                          child: Image.asset('assets/IconStar.png'),
                          backgroundColor: Colors.transparent
                      ),
                      Text(
                        '4,8 Rating',
                        style: TextStyle(
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),

                  Divider(
                    color: Colors.transparent,
                    height: 20,
                  ),
                  Text(
                    'Nulla occaecat velit laborum exercitation ullamco. lit labore eu aute elit nostrud culpa velit excepteur deserunt sunt. Velit non est cillum consequat cupidatat ex Lorem laboris labore aliqua ad duis eu laborum. \n\nStrowberry \n\nCream\n\nwheat\n \nNulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Divider(
                    height: 10,
                    color: Colors.transparent,
                  ),

                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Testimonials',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )
                  ),
                  Divider(
                    height: 20,
                    color: Colors.transparent,
                  ),
                  Container(
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Theme.of(context).primaryColor,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 20,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            )
                          ]
                      ),
                      child: ListTile(
                        trailing: Image.asset('assets/Rating.png'),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        leading: Image.asset('assets/PhotoProfile(4).png'),
                        subtitle: Column(
                          children: [
                            Text('12 April 2021'),
                            Divider(
                              height: 15,
                              color: Colors.transparent,
                            ),
                            Text('This Is great, So delicious! You Must Here, With Your family . . ')
                          ],
                        ),
                        title: Text('Dianne Russell'),
                      )
                  ),
                  FloatingActionButton.extended(
                    backgroundColor: Color(0xFF53E88B),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_) => OrderDetail()));
                      },
                    label: Text(
                        'Add To Cart',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
