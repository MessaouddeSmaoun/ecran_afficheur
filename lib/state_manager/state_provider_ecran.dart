
import 'package:ecran_afficheur/modal/modal_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../modal/modal_icon.dart';

final modalTextEntete = StateProvider<ModalText>((ref) {
  return ModalText(titre: 'titre en francais', fontFr: 'Amiri', fontAr: 'Amiri',  colorText: Colors.black, isBold: true);

});

final modalSousTextEntete = StateProvider<ModalText>((ref) {
  return ModalText(titre: '', fontFr: 'Amiri', fontAr: 'Amiri',  colorText: Colors.black, isBold: true);
});

final modalIconEntete = StateProvider<ModalIcon>((ref) {
  return ModalIcon(pathIcon: '', colorIcon: Colors.transparent, isLeft: true, isRight: true, sizeIcon: 80);
});


final pathImageFondEcan = StateProvider<String>((ref) {
  return "";
});
final isImageFondEcan = StateProvider<bool>((ref) {
  return false;
});


final colorFondEcran = StateProvider<Color>((ref) {
  return Colors.lightGreenAccent;
});


final isClockDateVisible = StateProvider<bool>((ref) {
  return true;
});

final time = StateProvider<String>((ref) {
  return "";
});

final date = StateProvider<String>((ref) {
  return "";
});

final colorDateHorloge = StateProvider<Color>((ref) {
  return Colors.black;
});

final listEcran = StateProvider<List<String>>((ref) {
  return ["Ecran 1"];
});

final selectedEcran = StateProvider<int>((ref) {
  return 0;
});

final isArab = StateProvider<bool>((ref) {
  return true;
});
final isFrancais = StateProvider<bool>((ref) {
  return true;
});


final colorFondEntete= StateProvider<Color>((ref) {
  return Colors.green;
});






