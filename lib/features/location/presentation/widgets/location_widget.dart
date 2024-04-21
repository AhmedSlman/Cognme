import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: const MapOptions(
        initialCenter: LatLng(31.2333, 30.0444),
        initialZoom: 8.0,
        interactionOptions:
            InteractionOptions(flags: ~InteractiveFlag.scrollWheelZoom),
      ),
      children: [
        openStreetMapTileLayer,
        const MarkerLayer(markers: [
          Marker(
            point: LatLng(31.2333, 30.0444),
            child: Icon(
              Icons.location_pin,
              size: 60,
              color: Colors.red,
            ),
          ),
          Marker(
            point: LatLng(31.0, 30.0404),
            child: Icon(
              Icons.location_pin,
              size: 60,
              color: Colors.red,
            ),
          )
        ])
      ],
    );
  }
}

TileLayer get openStreetMapTileLayer => TileLayer(
      urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
      userAgentPackageName: 'dev.fleatflet.flutter_map.example',
    );
