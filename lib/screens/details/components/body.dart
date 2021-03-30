import 'package:flutter/material.dart';
// import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/Product.dart';
import 'package:furniture_app/screens/details/components/product_decription.dart';
import 'package:furniture_app/screens/details/components/product_info.dart';
import 'package:furniture_app/size_config.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    // TextStyle lightTextStyle = TextStyle(color: kTextColor.withOpacity(0.6));
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: SizeConfig.orientation == Orientation.landscape
            ? SizeConfig.screenWidth
            : SizeConfig.screenHeight,
        child: Stack(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ProductInfo(product: product),
            Positioned(
              top: defaultSize * 37.5,
              left: 0,
              right: 0,
              child: ProductDescription(
                product: product,
                press: () {},
              ),
            ),
            Positioned(
              top: defaultSize * 9.5,
              right: -defaultSize * 7.5,
              child: Hero(
                tag: product.id,
                child: Image.network(
                  product.image,
                  fit: BoxFit.cover,
                  height: defaultSize * 37.8,
                  width: defaultSize * 36.4,
                ),
              ),
            ),
            // Positioned(
            //   top: defaultSize * 9.5,
            //   right: -defaultSize * 7.5,
            //   child: Hero(
            //     tag: product.id,
            //     child: Image.asset(
            //       "assets/image.png",
            //       fit: BoxFit.cover,
            //       height: defaultSize * 37.8,
            //       width: defaultSize * 36.4,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
