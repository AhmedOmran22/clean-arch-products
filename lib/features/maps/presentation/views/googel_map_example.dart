import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:maps/features/maps/presentation/widgets/custom_google_maps_app_bar.dart';

class GoogelMapExample extends StatefulWidget {
  const GoogelMapExample({super.key});

  @override
  State<GoogelMapExample> createState() => _GoogelMapExampleState();
}

class _GoogelMapExampleState extends State<GoogelMapExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CustomGoogleMapsAppBar(titleText: 'Google Map Example'),
      body: GoogleMap(
        polylines: {
          const Polyline(
            width: 5,
            color: Colors.blueAccent,

            endCap: Cap.roundCap,
            startCap: Cap.roundCap,
            polylineId: PolylineId("1"),
            points: [
              LatLng(31.114115638666128, 29.758278158000127),
              LatLng(31.105671472280928, 29.765826089750814),
            ],
          ),
        },
        zoomControlsEnabled: false,
        initialCameraPosition: const CameraPosition(
          target: LatLng(31.092795979608535, 29.760375638261934),
          zoom: 14,
        ),
      ),
    );
  }
}
