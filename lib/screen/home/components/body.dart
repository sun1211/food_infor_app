import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_infor_app/constants.dart';
import 'package:food_infor_app/models/Food.dart';
import 'package:food_infor_app/screen/home/components/food_card.dart';

import 'category_title.dart';
import 'search_bar.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10),
            child: Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                "assets/icons/menu.svg",
                height: 11,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 35.0,
              bottom: 25.0,
            ),
            child: Text(
              "Simple way to find \nTasty food",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryTitle(title: "All", active: false),
                CategoryTitle(title: "Italian", active: true),
                CategoryTitle(title: "Asian"),
                CategoryTitle(title: "Chinese"),
                CategoryTitle(title: "Burgers"),
              ],
            ),
          ),
          SearchBar(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FoodCard(
                  press: () {},
                  food: listFood[0],
                ),
                FoodCard(
                  press: () {},
                  food: listFood[1],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
