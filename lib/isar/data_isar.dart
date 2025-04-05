import 'package:isar/isar.dart';
part 'data_isar.g.dart';

@collection
class DataIsar {
  DataIsar({required this.adressServer, required this.nomTv,});


  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  String adressServer;
  String nomTv;

  DateTime? ecranEnteteSetting;
  DateTime? ecranModeVideo;
  DateTime? ecranModeAppel;
  DateTime? ecranListMedia;
}