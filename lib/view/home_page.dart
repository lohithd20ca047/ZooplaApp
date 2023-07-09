import 'package:flutter/material.dart';
import 'package:zoopla_app/model/zoopla_search.dart';
import 'package:zoopla_app/view/property_widget.dart';

import '../service/house_price.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('ZOOPLA APP'))),
      body: getbody(),
    );
  }

  Widget getbody() {
    return FutureBuilder(
      future: lisitingHomes(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return ListView(children: getListWidget(snapshot.data!));
        }
      },
    );
  }

  List<Widget> getListWidget(List<PropertyListing> propertyListing) {
    var widgets = <Widget>[];
    for (var propertyList in propertyListing) {
      var widget = PropertyWidget(propertyListing: propertyList);
      widgets.add(widget);
    }
    return widgets;
  }
}
