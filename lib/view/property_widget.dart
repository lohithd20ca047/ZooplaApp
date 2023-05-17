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
            return PropertyDetailsWidget(propertyListing: widget.propertyListing);
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
                ? Image.network('https://static.vecteezy.com/system/resources/previews/004/141/669/non_2x/no-photo-or-blank-image-icon-loading-images-or-missing-image-mark-image-not-available-or-image-coming-soon-sign-simple-nature-silhouette-in-frame-isolated-illustration-vector.jpg',width: double.infinity,)
                : Image.network(
                    widget.propertyListing.images.first.original!,
                    width: double.infinity,
                  ),
            Text(widget.propertyListing.title!),            
          ],
        ),
      ),
    );
  }
}
