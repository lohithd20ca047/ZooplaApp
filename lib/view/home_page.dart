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
  bool searching = false;
  var searchTerm = <PropertyListing>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: getSearchField()),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_aAlvXLZ-gJe5xhljLgpEJNbUqHiP1RF4EQ&usqp=CAU'),
                fit: BoxFit.fitHeight)),
        child: searching
            ? const Center(child: CircularProgressIndicator())
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: getbody(searchTerm)),
      ),
    );
  }

  Widget getSearchField() {
    return TextField(
      decoration: const InputDecoration(
          icon: Icon(Icons.search),
          hintText: 'SEARCH',
          labelText: 'Search a Location'),
      onSubmitted: (value) async {
        setState(() {
          searching = true;
        });

        searchTerm = await lisitingHomes(value);

        setState(() {
          searching = false;
        });
      },
    );
  }

  List<Widget> getbody(List<PropertyListing> propertyListing) {
    var widgets = <Widget>[];
    for (var propertylist in propertyListing) {
      var widget = PropertyWidget(propertyListing: propertylist);
      widgets.add(widget);
    }
    return widgets;
  }
}
