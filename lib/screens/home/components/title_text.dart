import 'package:flutter/material.dart';
import 'package:furniture_app/size_config.dart';

class TitleText extends StatelessWidget {
  final String title;
  const TitleText({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Text(
      title,
      style:
          TextStyle(fontSize: defaultSize * 1.6, fontWeight: FontWeight.bold),
    );
  }
}
