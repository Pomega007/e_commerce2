import 'package:e_commerce/Screens/Order%20Confirmation.dart';
import 'package:e_commerce/Screens/Rating.dart';
import 'package:flutter/material.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
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
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ConfirmOrder()));
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
                  'Find Your\n Favorite Food',
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

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),

                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsetsDirectional.only(start: 12.0),
                          child: Icon(Icons.search),
                        ),
                        label: Text(
                            'What do you want to order?',
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 12,
                          ),
                        ),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'field is required';
                        }
                        return null;
                      },
                    ),
                  ),
                ),

                Container(
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                      color: Theme.of(context).canvasColor  ,
                  ),
                height: 50,
                    child: Align(
                      alignment: Alignment.center,
                      child: Image.asset('assets/Filter.png'),
                    ),
                  ),
              ],
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
                  leading: Image.asset('assets/Pasta.png'),
                  trailing: Image.asset('assets/Process.png'),
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
                  leading: Image.asset('assets/Pasta.png'),
                  trailing: Image.asset('assets/Process.png'),
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
                  leading: Image.asset('assets/Pasta.png'),
                  trailing: Image.asset('assets/Reorder.png'),
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
                  leading: Image.asset('assets/Pasta.png'),
                  trailing: Image.asset('assets/Reorder.png'),
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
              height: 50,
              color: Colors.transparent,
            ),

            Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                      colors: <Color> [
                        Color(0xFF53E88B),
                        Color(0xFF15BE77),
                      ]
                  ),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(50),
                    primary: Colors.transparent,
                    onSurface: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                    onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => Rating()));
                    },
                    child: Text('Check Out',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
