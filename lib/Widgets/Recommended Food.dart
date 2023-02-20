import 'package:flutter/material.dart';

class RecommendedFood extends StatelessWidget {
  const RecommendedFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Nearest Restaurants",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
              Text(
                "The best food close to you",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
          const Text(
            "View More",
            style: TextStyle(
                color: Color(0xFFFF8E4C), fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}