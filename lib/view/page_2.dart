import 'package:flutter/material.dart';
import 'package:native_webview/native_webview.dart';

import '../model/zoopla_search.dart';

class PropertyDetailsWidget extends StatelessWidget {
  const PropertyDetailsWidget({Key? key, required this.propertyListing})
      : super(key: key);
  final PropertyListing propertyListing;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: propertyListing.detailsUrl,
      ),
    );
  }

  Widget getBulletsWidget() {
    var widgets = <Widget>[];
    for (var item in propertyListing.bullet) {
      var widget = Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.circle,
              size: 5,
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              item,
              maxLines: 3,
              style: const TextStyle(fontSize: 18),
            ),
          ))
        ],
      );

      widgets.add(widget);
    }

    return Padding(
      padding: const EdgeInsets.only(left: 10.0, top: 10),
      child: Column(children: widgets),
    );
  }
}
