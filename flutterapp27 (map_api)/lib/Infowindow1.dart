import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Infowindow1 extends StatefulWidget {
  const Infowindow1({super.key});

  @override
  State<Infowindow1> createState() => _Infowindow1State();
}

class _Infowindow1State extends State<Infowindow1> {
  @override
  void initState() {
    getimageicon();
    super.initState();
  }

  BitmapDescriptor markericon = BitmapDescriptor.defaultMarker;
  List<Marker> markerslist = [];

  Future getmymarkericon(String image) async {
    await BitmapDescriptor.fromAssetImage(const ImageConfiguration(), image)
        .then((value) => {
              setState(() {
                markericon = value;
              })
            })
        .onError((error, stackTrace) => {print("Error1=>$markericon")});
  }

  getimageicon() async {
    await getmymarkericon("");
    markerslist.addAll([
      Marker(
        markerId: MarkerId("Home"),
        icon: markericon,
        position: const LatLng(24.882408312153768, 67.06721822424507),
        infoWindow: InfoWindow(title: "My fav location"),
      ),
      Marker(
          icon: markericon,
          markerId: MarkerId("wa"),
          position: LatLng(24.879350042154694, 67.07132740805048),
          infoWindow: InfoWindow(title: "Masjid Location  "))
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
            target: LatLng(24.882408312153768, 67.06721822424507), zoom: 14.25),
        markers: Set.of(markerslist),
      ),
    );
  }
}
