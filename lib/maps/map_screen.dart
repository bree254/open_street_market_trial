import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:OSMFlutter(
          osmOption: OSMOption(
            userTrackingOption: UserTrackingOption(
              enableTracking: true,
              unFollowUser: false,
            ),
            zoomOption: ZoomOption(
              initZoom: 20.0,
              minZoomLevel: 3.0,
              maxZoomLevel: 19.0,
              stepZoom: 1.0,
            ),
            userLocationMarker: UserLocationMaker(
                personMarker: MarkerIcon(
                    icon: Icon(
                      Icons.person_pin_circle,
                      color: Colors.blue,
                      size: 40,
                    )
                ),
                directionArrowMarker: MarkerIcon(
                    icon: Icon(
                      Icons.location_searching,
                      color: Colors.blue,
                      size: 40,
                    )
                ),
            ),
            roadConfiguration: RoadOption(
                roadColor: Colors.red,
            ),

          ),
        controller: MapController.withUserPosition(
          trackUserLocation: UserTrackingOption(
            enableTracking: true,
            unFollowUser: false,
          ),
          useExternalTracking: true,
        ),

      )
    );
  }
}
