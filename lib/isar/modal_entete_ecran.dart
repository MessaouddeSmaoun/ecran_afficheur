import 'package:isar/isar.dart';

part 'modal_entete_ecran.g.dart';

@collection
class ModalEnteteEcran {
  ModalEnteteEcran({
    required this.enteteArab,
    required this.fontArab,
    required this.colorTextArab,
    required this.isBoldArab,
    required this.isItalicArab,
    required this.enteteFrancais,
    required this.fontFrancais,
    required this.colorTextFrancais,
    required this.isBoldFrancais,
    required this.isItalicFrancais,
    required this.colorFond,
    required this.isFondImage,
    required this.colorIcon,
    required this.isIconRight,
    required this.isIconLeft,
    required this.isDateHorloge,
    required this.colorDateHorloge,
    required this.isArab,
    required this.isFrancais,
    required this.delayChange,
    required this.delayAttenteVocal,
  });

  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  String enteteArab;
  String fontArab;
  int colorTextArab;
  bool isBoldArab;
  bool isItalicArab;

  String enteteFrancais;
  String fontFrancais;
  int colorTextFrancais;
  bool isBoldFrancais;
  bool isItalicFrancais;

  int colorFond;
  bool isFondImage;
  int colorIcon;
  bool isIconRight;
  bool isIconLeft;

  bool isDateHorloge;
  int colorDateHorloge;

  bool isArab;
  bool isFrancais;
  int delayChange;
  int delayAttenteVocal;
}
