// ignore_for_file: library_private_types_in_public_api

import 'package:cognme/core/common/functions/notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class LocationWidget extends StatefulWidget {
  const LocationWidget({super.key});

  @override
  _LocationWidgetState createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  final List<LatLng> _points = [
    const LatLng(31.04117733704053, 31.379250077010045),
    const LatLng(31.04117733704053, 31.388233077010045),
    const LatLng(31.05016033704053, 31.388233077010045),
    const LatLng(31.05016033704053, 31.379250077010045),
  ];

  LatLng _extraPoint = const LatLng(31.04567066704053, 31.384116577010044);

  @override
  void initState() {
    super.initState();
    const initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);
    flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  void _checkIfPointIsInside() {
    if (_extraPoint.latitude < _points[0].latitude ||
        _extraPoint.latitude > _points[2].latitude ||
        _extraPoint.longitude < _points[0].longitude ||
        _extraPoint.longitude > _points[1].longitude) {
      LocalNotificationService.showNotification(
          "Take Care", "The Person Is OutSide The Safe Zone");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: FlutterMap(
              options: MapOptions(
                initialCenter:
                    const LatLng(31.04117733704053, 31.379250077010045),
                initialZoom: 12.0,
                onTap: (tapPosition, point) {
                  setState(() {
                    _extraPoint = point;
                    _checkIfPointIsInside();
                  });
                },
                interactionOptions: const InteractionOptions(
                  flags: InteractiveFlag.all & ~InteractiveFlag.scrollWheelZoom,
                ),
              ),
              children: [
                openStreetMapTileLayer,
                PolygonLayer(
                  polygons: [
                    Polygon(
                      disableHolesBorder: true,
                      isDotted: true,
                      isFilled: true,
                      points: _points,
                      color: Colors.green.withOpacity(0.3),
                      borderStrokeWidth: 3,
                      borderColor: const Color.fromARGB(255, 156, 231, 158),
                    ),
                  ],
                ),
                MarkerLayer(
                  markers: [
                    Marker(
                      point: _extraPoint,
                      child: const Icon(
                        Icons.location_pin,
                        size: 60,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                MarkerLayer(
                  markers: _points
                      .map((point) => Marker(
                            point: point,
                            child: const Icon(
                              Icons.location_pin,
                              size: 60,
                              color: Colors.red,
                            ),
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: List.generate(4, (index) {
              return Row(
                children: [
                  Text('Point ${index + 1}',
                      style: const TextStyle(fontSize: 18)),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Latitude',
                        ),
                        keyboardType: TextInputType.number,
                        initialValue: _points[index].latitude.toString(),
                        onChanged: (value) {
                          setState(() {
                            _points[index] = LatLng(
                                double.parse(value), _points[index].longitude);
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Longitude',
                        ),
                        keyboardType: TextInputType.number,
                        initialValue: _points[index].longitude.toString(),
                        onChanged: (value) {
                          setState(() {
                            _points[index] = LatLng(
                                _points[index].latitude, double.parse(value));
                          });
                        },
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}

TileLayer get openStreetMapTileLayer => TileLayer(
      urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
      userAgentPackageName: 'dev.fleatflet.flutter_map.example',
    );
