import 'package:e_commerce/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

class FilterIcon extends StatelessWidget {
  const FilterIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Find your\nFavorie food",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    offset: const Offset(12, 26),
                    blurRadius: 50,
                    spreadRadius: 0,
                    color: Colors.grey.withOpacity(.25)),
              ]),
            child: Container(
              child: Padding(
                padding: EdgeInsets.only(
                    left: 10
                ),
                child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
                  },
                    icon: Image.asset('assets/IconNotifiaction.png'),
                  ),
                ),
              ),
            ),
              )
        ],
      ),
    );
  }
}
