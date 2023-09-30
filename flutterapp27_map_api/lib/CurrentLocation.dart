import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterapp27_map_api/MapAnimation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CurrentLocation {
  Future<Position> getmylocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) {
      Geolocator.requestPermission();
      print("Error WA910" + error.toString());
    });
    return await Geolocator.getCurrentPosition();
  }

  calllocation(
      List<Marker> markers, Completer<GoogleMapController> mapcompleter) {
    getmylocation().then((value) {
      print(value.latitude.toString() + "," + value.longitude.toString());
      markers.add(Marker(
          markerId: MarkerId("myloc"),
          position: LatLng(value.latitude, value.longitude),
          infoWindow: InfoWindow(title: "My Current Location")));
      MapAnimation()
          .animate(mapcompleter, LatLng(value.latitude, value.longitude));
    });
  }
}
