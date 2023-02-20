import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Controller/HomeController.dart';
import '../Controller/ProductModel.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final HomeController homeController = HomeController();

  @override
  void initState() {
    super.initState();
    homeController.getProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Pattern.png'),
            alignment: Alignment.topCenter,
          ),
        ),
        child: Column(
          children: [
            Divider(
              height: 35,
              color: Colors.transparent,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 25,
                              color: Theme
                                  .of(context)
                                  .scaffoldBackgroundColor
                          )
                        ]
                    ),
                    child: Text(
                      'Find Your Favorite Food',
                      style: TextStyle(
                          shadows: [
                          ],
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                      ),
                    ),
                  ),
                )
              ],
            ),
            FutureBuilder<List<ProductModel>>(
              builder: (context, snapshot) {
                return snapshot.hasData
                    ? productsList()
                    : snapshot.hasError
                    ? errorWidget()
                    : loadingWidget();
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget productsList() => Expanded(
    child: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
      ),
      itemCount: homeController.productList.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.network(
                  homeController.productList[index].Image ?? '',
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    // color: Colors.black.withOpacity(0.4),
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.1),
                        Colors.black.withOpacity(0.4),
                        Colors.black.withOpacity(0.9),
                      ],
                      end: Alignment.bottomCenter,
                      begin: Alignment.topCenter,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 200,
                      child: Text(
                        homeController.productList[index].Title ?? '',
                        style: TextStyle(
                          color: Colors.yellow[700],
                          fontSize: 12,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFBC02D).withOpacity(0.8),
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    homeController.productList[index].Price.toString(),
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );

  Widget errorWidget() => const Text(
    'Sorry, Something went wrong',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.red,
      fontSize: 16,
    ),
  );

  Widget loadingWidget() => const CupertinoActivityIndicator();
}
