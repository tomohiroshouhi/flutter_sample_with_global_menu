import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../common/constant.dart';
import 'components/search_componets.dart';

class HomeMainPage extends StatefulWidget {
  const HomeMainPage({super.key});

  @override
  State<HomeMainPage> createState() => _HomeMainPageState();
}

class _HomeMainPageState extends State<HomeMainPage> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(35.7265734, 139.576844);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 16.0,
                ),
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: headerHeader),
            child: SearchComponent(
              onSearchFromChanged: (value) {},
              onSearchToChanged: (value) {},
            ),
          ),
        ),
      ],
    );
  }
}
