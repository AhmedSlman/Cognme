import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Category {
  final IconData iconData;
  final String title;
  final String subTitle;

  Category(
    this.iconData,
    this.title,
    this.subTitle,
  );
}

List<Category> categories = [
  // ignore: avoid_types_as_parameter_names
  Category(
    FontAwesomeIcons.userDoctor,
    'Physician',
    '3 physician',
  ),
  Category(
    FontAwesomeIcons.locationCrosshairs,
    'Location',
    '1 located',
  ),
  Category(
    FontAwesomeIcons.calendarCheck,
    'Appointments',
    '4 appointments',
  ),
  Category(
    FontAwesomeIcons.clock,
    'Smart Watch',
    '1 connected',
  ),

  Category(
    // ignore: deprecated_member_use
    FontAwesomeIcons.broadcastTower,
    'Sensors',
    '2 sensors',
  ),
];
