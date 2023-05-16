import 'package:dio/dio.dart';
import 'package:zoopla_app/model/zoopla_search.dart';

var zooplaUrl = 'https://zoopla.p.rapidapi.com/properties/list';

var headers = {
  'X-RapidAPI-Key': 'b396080d4bmsh95c5a42f117ae03p15b135jsnc62f0b3ce073',
  'X-RapidAPI-Host': 'zoopla.p.rapidapi.com'
};
String area = "area='Oxford,Oxfordshire'";
String identifier = "identifier='oxford'";
String category = "category='residential'";
String order_by = "order_by='age'";
String ordering = "ordering='descending'";
String page_number = "page_number='1'";
String page_size = "page_size='40'";

String zooplaUrlPath =
      '$zooplaUrl?$area&$identifier&$category&$order_by&$ordering&$page_number&$page_size';

Future<List<PropertyListing>> lisitingHomes() async {
  var homes = <PropertyListing>[];
  var dio = Dio();
  var response = await dio.get(zooplaUrlPath);
  if (response.statusCode == 200) {
    var listOfDatas = response.data['listing'];
    for (var listOfData in listOfDatas) {
      var dataObj = PropertyListing.fromJson(listOfData);
      homes.add(dataObj);
    }
  }
  return homes;
}
