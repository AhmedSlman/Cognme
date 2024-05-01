import 'package:cognme/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class Missions {
  final String image;
  final String title;
  final String subTitle;
  final Color background;

  Missions(
    this.image,
    this.title,
    this.subTitle,
    this.background,
  );
}

List<Missions> missions = [
  // ignore: avoid_types_as_parameter_names
  Missions(
    AppAssets.p1,
    'Carsail 35 mg',
    '2 tablets',
    const Color.fromARGB(255, 192, 206, 219),
  ),
  Missions(
    AppAssets.p5,
    'Roaccutane 30 mg',
    '1 capsule ',
    const Color.fromARGB(255, 145, 170, 152),
  ),
  Missions(
    AppAssets.p3,
    'check your insulen',
    'ing  2ml',
    const Color.fromARGB(255, 226, 200, 200),
  ),
  Missions(
    AppAssets.p4,
    'TV Program ',
    'channel 46',
    const Color.fromARGB(255, 219, 240, 209),
  ),

  Missions(
    AppAssets.p2,
    'Go for a walk',
    '3c park',
    const Color.fromARGB(255, 230, 220, 247),
  ),
];

class Times {
  final String time;
  final String period;

  Times(this.time, this.period);
}

List<Times> times = [
  Times('10:00', 'AM'),
  Times('11:00', 'AM'),
  Times('12:00', 'PM'),
  Times('01:00', 'PM'),
  Times('02:00', 'PM'),
];
