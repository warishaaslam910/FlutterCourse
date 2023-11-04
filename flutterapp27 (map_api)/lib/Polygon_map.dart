import 'dart:collection';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Polygon_map extends StatefulWidget {
  const Polygon_map({super.key});

  @override
  State<Polygon_map> createState() => _Polygon_mapState();
}

class _Polygon_mapState extends State<Polygon_map> {
  Set<Polygon> _polygon = HashSet<Polygon>();

  List<LatLng> points = [
    LatLng(24.879350042154694, 67.07132740805048),
    LatLng(24.882408312153768, 67.06721822424507),
    LatLng(24.882408312153768, 67.06721822424508),
    LatLng(24.87672327820584, 67.06265575222646),
    LatLng(24.879350042154694, 67.07132740805048)
  ];
  @override
  void initState() {
    super.initState();

    _polygon.add(Polygon(
        polygonId: PolygonId("1"),
        points: points,
        fillColor: Colors.blue,
        geodesic: true,
        strokeWidth: 2,
        strokeColor: Colors.indigo));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
            target: LatLng(24.882408312153768, 67.06721822424507), zoom: 14),
        polygons: _polygon,
      ),
    );
  }
}
