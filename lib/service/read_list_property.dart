import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:zoopla_app/model/zoopla_search.dart';

const fileName = 'PropertyList.json';

Future<String> getPath() async {
  var directory = await getExternalStorageDirectory();
  var path = '${directory!.path}/$fileName';
  return path;
}

Future<List<PropertyListing>> readPropertyList() async {
  var filePath = await getPath();

  var property = <PropertyListing>[];

  var fileObj = File(filePath);
  if (fileObj.existsSync()) {
    var jsonString = fileObj.readAsStringSync();
    var propertyJson = jsonDecode(jsonString);

    for (var propertyJson in propertyJson) {
      var Obj = PropertyListing.fromJson(propertyJson);
      property.add(Obj);
    }
  }
  return property;
}
