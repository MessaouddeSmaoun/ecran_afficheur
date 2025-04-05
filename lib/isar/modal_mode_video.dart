import 'package:isar/isar.dart';

part 'modal_mode_video.g.dart';

@collection
class ModalModeVideo {
  ModalModeVideo({
    required this.positionAffichageService,
    required this.modeAffichageMultimedia,
    required this.isServiceVisible,
    required this.isResteVisible,
    required this.durerImage,
    required this.volume,
    required this.isBold,
    required this.isItalic,
    required this.colorText,
    required this.listMedia,
  });

  Id id = Isar.autoIncrement; // you can also use id = null to auto increment



  String positionAffichageService;
  String modeAffichageMultimedia;
  bool isServiceVisible;
  bool isResteVisible;
  int durerImage;
  String volume;
  bool isBold;
  bool isItalic;
  int colorText;
  List<String> listMedia;

  final listService = IsarLinks<ModalServiceEcran>();
}




@collection
class ModalServiceEcran {
  ModalServiceEcran({required this.indexService,required this.nomArab,required this.nomFrancais});

  Id id = Isar.autoIncrement;
  short indexService;
  String nomArab;
  String nomFrancais;
}
