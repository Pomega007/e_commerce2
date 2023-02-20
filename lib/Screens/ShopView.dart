import 'package:flutter/material.dart';
import 'package:e_commerce/Widgets/FilterIcon.dart';
import 'package:e_commerce/Widgets/SearchBar.dart';
import 'package:e_commerce/Widgets/OfferCard.dart';
import 'package:e_commerce/Widgets/Recommended Food.dart';
import 'package:e_commerce/Widgets/CardListView.dart';
import 'package:e_commerce/Widgets/SHeadline.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              FilterIcon(),
              SearchBar(),
              OfferCard(),
              RecommendedFood(),
              CardListView(),
              SHeadline(),
            ],
          ),
        ),
      ),
    );
  }
}



