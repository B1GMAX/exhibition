import '../exhibit_model/exhibit.dart';

abstract class ExhibitsLoader {
  Future<List<Exhibit>> getExhibitList();
}
