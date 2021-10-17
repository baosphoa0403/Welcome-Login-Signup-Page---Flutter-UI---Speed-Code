import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key,
    required this.country,
    required this.title,
    required this.price,
  }) : super(key: key);
  final String country, title;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: "$title\n",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: kTextColor, fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: "$country\n",
              style: const TextStyle(
                  fontSize: 20,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ])),
          const Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: kTextColor, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
