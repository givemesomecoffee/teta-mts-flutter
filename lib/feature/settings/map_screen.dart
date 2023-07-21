import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatelessWidget {
  MapScreen({super.key, required this.position});

  LatLng position;

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: position,
        zoom: 9.2,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: position,
              width: 40,
              height: 40,
              builder: (context) => const Icon(Icons.location_pin),
            ),
          ],
        ),
      ],
    );
  }
}
