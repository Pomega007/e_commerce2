import 'dart:convert';

import 'package:e_commerce/Config/Model/LoginModel.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height/3/4,
      child: Column(
        children: <Widget>[
          Text(
              '',
            style: TextStyle(

            ),
          ),
        ],
      ),
    );
  }
}