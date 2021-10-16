import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class FeaturePlants extends StatelessWidget {
  const FeaturePlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlant(
            img: "assets/images/bottom_img_1.png",
            press: () {},
          ),
          FeaturePlant(
            img: "assets/images/bottom_img_2.png",
            press: () {},
          )
        ],
      ),
    );
  }
}

class FeaturePlant extends StatelessWidget {
  final String img;
  final VoidCallback press;
  const FeaturePlant({
    Key? key,
    required this.img,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
            left: kDefaultPadding, top: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
      ),
    );
  }
}
