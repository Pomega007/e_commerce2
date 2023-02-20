import 'package:e_commerce/Widgets/MneuWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WijieProduct extends StatefulWidget {
  const WijieProduct({Key? key}) : super(key: key);

  @override
  State<WijieProduct> createState() => _WijieProductState();
}

class _WijieProductState extends State<WijieProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Wiji Resturant.png'),
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
                height: 15,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Vegan Resto',
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
                'Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Divider(
                height: 20,
                color: Colors.transparent,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Popular Menu",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  const Text(
                    "View All",
                    style: TextStyle(
                        color: Color(0xFFFF8E4C), fontWeight: FontWeight.normal),
                  ),
                ],
              ),

          Padding(
            padding: const EdgeInsets.only(top: 25.0, right: 25.0, bottom: 15.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 175,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                    Card(
                        "Vegan Resto",
                        "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Resturant%20Image%20(1).png?alt=media&token=461162b1-686b-4b0e-a3ee-fae1cb8b5b33",
                        "12 min away"
                    ),
                  Card(
                      "Healthy Food",
                      "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Restaurant%20Image.png?alt=media&token=43509b4c-269e-4279-8c88-36dc9ed27a66",
                      "8 min away"),
                  Card(
                      "Vegan",
                      "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Resturant%20Image%20(1).png?alt=media&token=461162b1-686b-4b0e-a3ee-fae1cb8b5b33",
                      "15 min away"),
                ],
              ),
            ),
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
            ],
          ),
        ),
          ],
        ),
      ),
    );
  }
}



class Card extends StatelessWidget {
  final String text;
  final String imageUrl;
  final String subtitle;

  Card(this.text, this.imageUrl, this.subtitle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 15),
      child: Container(
        width: 150,
        height: 150,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(12.5),
          boxShadow: [
            BoxShadow(
                offset: const Offset(10, 20),
                blurRadius: 10,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.05)),
          ],
        ),
        child: Column(
          children: [
            Image.network(imageUrl, height: 70, fit: BoxFit.cover),
            Spacer(),
            Text(text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
            SizedBox(
              height: 5,
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 12),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
