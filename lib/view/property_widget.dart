import 'package:flutter/material.dart';
import 'package:zoopla_app/model/zoopla_search.dart';

class PropertyWidget extends StatefulWidget {
  const PropertyWidget({Key? key, required this.propertyListing})
      : super(key: key);
  final PropertyListing propertyListing;
  @override
  _PropertyWidgetState createState() => _PropertyWidgetState();
}

class _PropertyWidgetState extends State<PropertyWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Image.network(
      widget.propertyListing.images.first.original!,
      width: 200,
    ));
  }
}
