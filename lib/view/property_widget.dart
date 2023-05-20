import 'package:flutter/material.dart';
import 'package:zoopla_app/model/zoopla_search.dart';
import 'package:zoopla_app/view/page_2.dart';

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
    return GestureDetector(
      onTap: () async {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return PropertyDetailsWidget(
                propertyListing: widget.propertyListing);
          },
        ));
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
              child: Text(
                widget.propertyListing.title!,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.bed_sharp),
                ),
                Text('${widget.propertyListing.numBedrooms}'),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.bathtub),
                ),
                Text('${widget.propertyListing.numBathrooms}'),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Image.network(widget.propertyListing.agentLogo!),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
