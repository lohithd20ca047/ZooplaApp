import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../model/zoopla_search.dart';

class WidgetMap extends StatefulWidget {
  const WidgetMap({Key? key, required this.propertyListing}) : super(key: key);
  final PropertyListing propertyListing;

  @override
  _WidgetMapState createState() => _WidgetMapState();
}

class _WidgetMapState extends State<WidgetMap> {
  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
        body: widget.propertyListing.latitude != null ||
                widget.propertyListing.longitude != null
            ? GoogleMap(
                mapType: MapType.hybrid,
                initialCameraPosition: CameraPosition(
                    target: LatLng(widget.propertyListing.latitude!,
                        widget.propertyListing.longitude!),
                    bearing: BitmapDescriptor.hueAzure,
                    zoom: 20))
            : const Text('NO MAP'));
  }
}
