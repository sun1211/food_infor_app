import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_infor_app/constants.dart';

class Foot extends StatelessWidget {
  const Foot({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 27),
            decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(.19),
              borderRadius: BorderRadius.circular(27),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  "Add to bag",
                  style: Theme.of(context).textTheme.button,
                ),
                SizedBox(width: 30),
                SvgPicture.asset(
                  "assets/icons/forward.svg",
                  height: 11,
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kPrimaryColor.withOpacity(.26),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(15),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kPrimaryColor,
                  ),
                  child: SvgPicture.asset("assets/icons/bag.svg"),
                ),
                Positioned(
                  right: 15,
                  bottom: 10,
                  child: Container(
                    alignment: Alignment.center,
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kWhiteColor,
                    ),
                    child: Text(
                      "0",
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: kPrimaryColor, fontSize: 16),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
