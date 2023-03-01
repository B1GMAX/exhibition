import 'dart:convert';

import 'package:exhibit/exhibit_model/exhibit.dart';
import 'package:http/http.dart';

import 'exhibits_loader.dart';

class RestExhibitsLoader extends ExhibitsLoader {
  final List<Exhibit> _exhibits = [];

  @override
  Future<List<Exhibit>> getExhibitList() async {
    final response = await get(
        Uri.parse('https://my-json-server.typicode.com/Reyst/exhibit_db/list'));
    final List results = jsonDecode(response.body);
    if (response.statusCode == 200) {
      for (int i = 0; i < results.length; i++) {
        final exhibit = Exhibit.fromJson(results[i]);
        _exhibits.add(exhibit);
      }
    }

    return _exhibits;
  }
}
