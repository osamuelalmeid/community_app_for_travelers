import 'package:community_app_for_travelers/models/user.dart';
import 'package:flutter/material.dart';

class Travel {
  final String name, image;
  final DateTime date;
  final List<User> users;

  Travel({
    @required this.users,
    @required this.name,
    @required this.image,
    @required this.date,
  });
}

List<Travel> travels = [
  Travel(
    users: users..shuffle(),
    name: "Pedra Gávea",
    image: "assets/images/pedra_gavea.png",
    date: DateTime(2020, 10, 15),
  ),
  Travel(
    users: users..shuffle(),
    name: "Jalapão",
    image: "assets/images/jalapao.png",
    date: DateTime(2020, 3, 10),
  ),
  Travel(
    users: users..shuffle(),
    name: "Lago Negro",
    image: "assets/images/lago_negro.png",
    date: DateTime(2020, 10, 15),
  ),
];

List<User> users = [user1, user2, user3];