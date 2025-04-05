import 'dart:ui';

interface class ModalText {
  ModalText({required this.titre, required this.font, required this.colorText, required this.isBold, required this.isItalic,});

  String titre;
  String font;
  Color colorText;
  bool isBold;
  bool isItalic;

}