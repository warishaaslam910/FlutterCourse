import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapAnimation {
  void animate(
      Completer<GoogleMapController> mapcompleter, LatLng latLng) async {
    GoogleMapController googleMapController = await mapcompleter.future;
    googleMapController.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: latLng, zoom: 14.25)));
  }
}
