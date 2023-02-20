import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/profilepic.png'),
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
              height: 500,
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
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Anam Wusono',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 15,
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
                                'Member Gold',
                                style: TextStyle(
                                  color: Color(0xFFFEAD1D),
                                ),
                              ),
                              height: 40,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Color(0xFFFEAD1D).withOpacity(0.2),
                                // gradient: LinearGradient(
                                //     colors: <Color>[
                                //       Color(0xFF53E88B).withOpacity(0.2),
                                //       Color(0xFF15BE77).withOpacity(0.2),
                                //     ]
                                // ),
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
                            child: Image.asset('assets/Edit.png'),
                          )
                        ],
                      ),
                    ],
                  ),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('anamwp66@gmail.com',
                      style: TextStyle(
                        color: Colors.grey.shade500
                      ),
                    ),
                  ),

                  Divider(
                    color: Colors.transparent,
                    height: 20,
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset('assets/Voucher.png'),
                      ),
                      Text(
                          'You Have 3 Voucher',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                        ],
                    ),
                  ),
                  ),
                  Divider(height: 20, color: Colors.transparent,),
                  Align(
                    alignment: Alignment.centerLeft,
                  child: Text(
                      'Favorite',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  ),

                  Divider(height: 30, color: Colors.transparent,),

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
                        trailing: Image.asset('assets/Buy.png'),
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

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
