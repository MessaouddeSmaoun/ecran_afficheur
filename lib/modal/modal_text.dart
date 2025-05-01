import 'dart:ui';

interface class ModalText {
  ModalText({required this.titre, required this.fontFr, required this.fontAr, required this.colorText, required this.isBold,});

  String titre;
  String fontFr;
  Color colorText;
  bool isBold;
  String fontAr;


}