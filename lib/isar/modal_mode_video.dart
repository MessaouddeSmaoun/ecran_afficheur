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
    required this.colorText,
    required this.listMedia,
    required this.fontArabServiceMV,
    required this.fontFrancaisServiceMV,

    required this.isBandeNumeroVisible,
    required this.coleurGuichetMV,
    required this.coleurNumeroMV,
  });

  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  int coleurGuichetMV;
  int coleurNumeroMV;
  bool isBandeNumeroVisible;

  String positionAffichageService;
  String modeAffichageMultimedia;
  bool isServiceVisible;
  bool isResteVisible;
  int durerImage;
  String volume;
  bool isBold;
  int colorText;
  String fontFrancaisServiceMV;
  String fontArabServiceMV;
  List<String> listMedia;

  final listService = IsarLinks<ModalServiceEcran>();
}




@collection
class ModalServiceEcran {
  ModalServiceEcran( {required this.index,
    required this.appeler,
    required this.reste,
    required this.guichet,
    required this.serviceAr,
    required this.serviceFr});

  Id id = Isar.autoIncrement;


int index;
String appeler;
String reste;
String guichet;
String serviceAr;
String serviceFr;
}

