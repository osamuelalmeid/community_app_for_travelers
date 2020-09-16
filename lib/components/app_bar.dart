import 'package:flutter/material.dart';

import '../constants.dart';

AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: kIconColor,
          ),
          onPressed: () {}),
      actions: [
        IconButton(
            icon: ClipOval(child: Image.asset("assets/images/profile.png")),
            onPressed: () {})
      ],
    );
  }