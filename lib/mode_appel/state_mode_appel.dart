import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../modal/modal_boite.dart';
import '../../../../modal/modal_text.dart';

final textGuichetTitre = StateProvider<ModalText>((ref) {
  return  ModalText(titre: 'Bureau', font: 'normal', colorText: Colors.white, isBold: true, isItalic: false);
});

final textNumeroTitre = StateProvider<ModalText>((ref) {
  return  ModalText(titre: 'Numero', font: 'normal', colorText: Colors.white, isBold: true, isItalic: false);
});

final boiteGuichetTitre = StateProvider<ModalBoite>((ref) {
  return  ModalBoite("", Colors.red, Colors.yellow);
});


final textGuichetNumero = StateProvider<ModalText>((ref) {
  return  ModalText(titre: '2', font: 'normal', colorText: Colors.white, isBold: true, isItalic: false);
});

final boiteGuichetNumero = StateProvider<ModalBoite>((ref) {
  return  ModalBoite("", Colors.blue, Colors.yellow);
});




final boiteNumeroTitre = StateProvider<ModalBoite>((ref) {
  return  ModalBoite("", Colors.red, Colors.yellow);
});

final textNumeroNumero = StateProvider<ModalText>((ref) {
  return  ModalText(titre: 'AS23', font: 'normal', colorText: Colors.white, isBold: true, isItalic: false);
});

final boiteNumeroNumero = StateProvider<ModalBoite>((ref) {
  return  ModalBoite("", Colors.blue, Colors.yellow);
});

final intervalleClignotment = StateProvider<int>((ref) {
  return  1;
});