import 'package:e_commerce/Screens/Order%20Confirmation.dart';
import 'package:flutter/material.dart';

class PaymentEdit extends StatefulWidget {
  const PaymentEdit({Key? key}) : super(key: key);

  @override
  State<PaymentEdit> createState() => _PaymentEditState();
}

class _PaymentEditState extends State<PaymentEdit> {
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
                height: 80,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 23,
                    right: 100,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Payment',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                      ),
                    ),
                  ),
                )
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
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/visa.png'),
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
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/payoneer.png'),
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

          ],
        ),
      ),
    );
  }
}
