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
      body: GoogleMap(
        markers: {
          const Marker(
            markerId: MarkerId("1"),
            position: LatLng(31.092795979608535, 29.760375638261934),
          ),
          const Marker(
            markerId: MarkerId("2"),
            position: LatLng(31.094880191383425, 29.75052654559378),
          ),
          const Marker(
            markerId: MarkerId("3"),
            position: LatLng(31.08922068041644, 29.746664164457798),
          ),
          const Marker(
            markerId: MarkerId("4"),
            position: LatLng(31.09627664223193, 29.75078403766952),
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
