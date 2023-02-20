import 'package:e_commerce/Screens/ChatScreen.dart';
import 'package:e_commerce/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  String? Anamwp;
  String? Leslie_Alexander;
  String? Guy_Hawkins;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Pattern (1).png'),
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
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
                  },
                    icon: Image.asset('assets/BackButton.png',),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 650,
              height: 100,
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(30),
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      'Chat',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Container(
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
                  trailing: Text(
                      '20:00',
                    style: TextStyle(
                        color: Colors.white60
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  leading: Image.asset('assets/PhotoProfile(1).png'),
                  subtitle: Text('Your Order Just Arrived!',),
                  title: Text('Anamwp'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => ChatScreen(Name: Anamwp),
                        ),
                    );
                  },
                )
              ),
            ),

            Divider(
              height: 20,
              color: Colors.transparent,
            ),

            Padding(
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Container(
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
                    trailing: Text(
                      '20:00',
                      style: TextStyle(
                          color: Colors.white60
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    leading: Image.asset('assets/PhotoProfile(2).png'),
                    subtitle: Text('Your Order Just Arrived!',),
                    title: Text('Guy Hawkins'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatScreen(Name: Guy_Hawkins),
                        ),
                      );
                    },
                  )
              ),
            ),
            Divider(
              height: 20,
              color: Colors.transparent,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Container(
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
                    trailing: Text(
                        '20:00',
                    style: TextStyle(
                      color: Colors.white60
                    ),
                    ),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    leading: Image.asset('assets/PhotoProfile(3).png'),
                    subtitle: Text('Your Order Just Arrived!',),
                    title: Text('Leslie Alexander'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatScreen(Name: Leslie_Alexander),
                        ),
                      );
                    },
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
