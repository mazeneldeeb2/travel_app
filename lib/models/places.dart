import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:travel_app/models/place.dart';

class Places with ChangeNotifier {
  List<Place> _places = [];
  List<Place> get places {
    return _places;
  }

  Future<void> getPlaces() async {
    final Uri url = Uri.parse('http://mark.bslmeiyu.com/api/getplaces');
    http.Response response;

    try {
      response = await http.get(url);
      var data = json.decode(response.body);
      List<Place> fetchedPlaces = [];
      for (var place in data) {
        fetchedPlaces.add(
          Place(
            title: place['name'],
            price: place['price'].toString(),
            image: 'http://mark.bslmeiyu.com/uploads/${place['img']}',
            description: place['description'],
            id: place['id'],
            stars: place['stars'],
            location: place['location'],
          ),
        );
      }
      _places = fetchedPlaces;
      notifyListeners();
    } catch (error) {
      rethrow;
    }
  }

  Place findPlaceById(id) {
    return _places.firstWhere((element) => element.id == id);
  }
}
