import 'package:community_app_for_travelers/screens/home/components/body.dart';
import 'package:community_app_for_travelers/size_config.dart';
import 'package:flutter/material.dart';

import '../../components/app_bar.dart';
import 'components/custom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}