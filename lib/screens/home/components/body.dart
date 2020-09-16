import 'package:community_app_for_travelers/screens/home/components/home_header.dart';
import 'package:community_app_for_travelers/screens/home/components/popular_places.dart';
import 'package:community_app_for_travelers/screens/home/components/top_travelers.dart';
import 'package:community_app_for_travelers/size_config.dart';
import 'package:flutter/material.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: Column(
        children: [
          HomeHeader(),
          VerticalSpacing(),
          PopularPlaces(),
          VerticalSpacing(),
          TopTravelers(),
          VerticalSpacing()
        ],
      ),
    );
  }
}