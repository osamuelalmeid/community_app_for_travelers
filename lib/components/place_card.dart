import 'package:community_app_for_travelers/models/travel.dart';
import 'package:community_app_for_travelers/screens/home/components/popular_places.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    Key key,
    @required this.travel,
    @required this.press,
  }) : super(key: key);

  final Travel travel;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(137),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.29,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage(travel.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: getProportionateScreenWidth(137),
            padding: EdgeInsets.all(
              getProportionateScreenHeight(kDefaultPadding),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                boxShadow: [kDefualtShadow]),
            child: Column(
              children: [
                Text(
                  travel.name,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                VerticalSpacing(
                  of: 10,
                ),
                Travelers(
                  users: travel.users,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}