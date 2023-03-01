import 'package:exhibit/exhibit_model/exhibit.dart';
import 'package:rxdart/rxdart.dart';

import '../api/exhibits_loader.dart';
import '../api/rest_exhibits_loader.dart';

class ExhibitionBloc {
  final _exhibitsController = BehaviorSubject<List<Exhibit>>();

  Stream<List<Exhibit>> get exhibitStream => _exhibitsController.stream;

  final ExhibitsLoader _exhibitsLoader = RestExhibitsLoader();

  ExhibitionBloc() {
    _getExhibits();
  }

  void _getExhibits() async {
    final exhibits = await _exhibitsLoader.getExhibitList();
    _exhibitsController.add(exhibits);
  }

  void dispose() {
    _exhibitsController.close();
  }
}
