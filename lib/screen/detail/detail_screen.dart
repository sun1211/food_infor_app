import 'package:flutter/material.dart';
import 'package:food_infor_app/models/Food.dart';
import 'package:food_infor_app/screen/detail/components/body.dart';

class DetailScreen extends StatelessWidget {
  final Food food;
  const DetailScreen({Key key, this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        food: food,
      ),
    );
  }
}
