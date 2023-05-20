import 'package:flutter/material.dart';
import 'package:zoopla_app/view/map.dart';

import '../model/zoopla_search.dart';

class PropertyDetailsWidget extends StatefulWidget {
  const PropertyDetailsWidget({Key? key, required this.propertyListing})
      : super(key: key);
  final PropertyListing propertyListing;

  @override
  _PropertyDetailsWidgetState createState() => _PropertyDetailsWidgetState();
}

class _PropertyDetailsWidgetState extends State<PropertyDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          widget.propertyListing.images.isEmpty ||
                  widget.propertyListing.images.first.original == null
              ? Image.network(
                  'https://static.vecteezy.com/system/resources/previews/004/141/669/non_2x/no-photo-or-blank-image-icon-loading-images-or-missing-image-mark-image-not-available-or-image-coming-soon-sign-simple-nature-silhouette-in-frame-isolated-illustration-vector.jpg',
                  width: double.infinity,
                )
              : Image.network(
                  widget.propertyListing.images.first.original!,
                  width: double.infinity,
                ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '£${widget.propertyListing.price}',
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(widget.propertyListing.status!),
                )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    widget.propertyListing.title!,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.location_on),
                ),
                widget.propertyListing.streetName == "" ||
                        widget.propertyListing.country == null
                    ? const Text(
                        'Location not mentioned',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )
                    : Text(
                        '${widget.propertyListing.streetName!},${widget.propertyListing.country!}',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Text(
                  'SPECILATION :',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          getBulletsWidget(),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'DESCRIPITION :',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          Text(
            widget.propertyListing.shortDescription!,
            maxLines: 8,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return WidgetMap(propertyListing: widget.propertyListing);
                  },
                ));
              },
              child: const Text(
                'MAP',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    ));
  }

  Widget getBulletsWidget() {
    var widgets = <Widget>[];
    for (var item in widget.propertyListing.bullet) {
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
