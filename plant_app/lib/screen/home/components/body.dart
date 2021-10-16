import 'package:flutter/material.dart';
import 'package:plant_app/screen/home/components/feature_plants.dart';
import 'package:plant_app/screen/home/components/header_with_searchbox.dart';
import 'package:plant_app/screen/home/components/recommend_plants.dart';
import 'package:plant_app/screen/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // it will provide height vs width of screen
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(
            press: () {},
            title: "recommend",
          ),
          const RecommendPlants(),
          TitleWithMoreButton(title: "Feature Plants", press: () {}),
          const FeaturePlants(),
        ],
      ),
    );
  }
}
