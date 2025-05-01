import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../modal/modal_boite.dart';
import '../../../../modal/modal_text.dart';
import '../isar/modal_mode_video.dart';
import '../modal/list_nom.dart';
import '../variable.dart';

final textGuichetTitre = StateProvider<ModalText>((ref) {
  return  ModalText(titre: 'Bureau', fontFr: 'Amiri', fontAr: 'Amiri', colorText: Colors.white, isBold: true);
});

final textNumeroTitre = StateProvider<ModalText>((ref) {
  return  ModalText(titre: 'Numero', fontFr: 'normal', colorText: Colors.white, isBold: true, fontAr: 'Amiri');
});

final textListAppelMA = StateProvider<ModalText>((ref) {
  return
ModalText(titre: 'guichet', fontFr: 'normal', colorText: Colors.white, isBold: true, fontAr: 'Amiri');});

final boiteGuichetTitre = StateProvider<ModalBoite>((ref) {
  return  ModalBoite("", Colors.red, Colors.yellow);
});


final textGuichetNumero = StateProvider<ModalText>((ref) {
  return  ModalText(titre: '--', fontFr: 'Amiri', fontAr: 'Amiri', colorText: Colors.white, isBold: true);
});

final boiteGuichetNumero = StateProvider<ModalBoite>((ref) {
  return  ModalBoite("", Colors.blue, Colors.yellow);
});




final boiteNumeroTitre = StateProvider<ModalBoite>((ref) {
  return  ModalBoite("", Colors.red, Colors.yellow);
});

final textNumeroNumero = StateProvider<ModalText>((ref) {
  return  ModalText(titre: '---', fontFr: 'Amiri', fontAr: 'Amiri', colorText: Colors.white, isBold: true);
});

final boiteNumeroNumero = StateProvider<ModalBoite>((ref) {
  return  ModalBoite("", Colors.blue, Colors.yellow);
});

final intervalleClignotment = StateProvider<int>((ref) {
  return  1;
});


final nomGuichet = StateProvider<ListNom>((ref) {
  return  ListNom(nomAr: listItemGuichetAr.first, nomFr: listItemGuichetFr.first);
});

final nomNumero = StateProvider<ListNom>((ref) {
  return ListNom(nomAr: listItemNumeroAr.first, nomFr: listItemNumeroFr.first);
});

final positionAffichageServiceMA = StateProvider<String>((ref) {
  return "droite";
});

final fontNumeroSelected = StateProvider<String>((ref) {
  return "Arimi";
});

final isListGuchetVisible = StateProvider<bool>((ref) {
  return  true;
});

final coleurGuichetMA = StateProvider<Color>((ref) {
  return Colors.amber;
});


final coleurNumeroMA = StateProvider<Color>((ref) {
  return Colors.amber;
});

final visibleTextServiceBandeMA = StateProvider<bool>((ref) {
  return true;
});

final textServiceBandeMA = StateProvider<ModalText>((ref) {
  return ModalText(titre: 'service', fontFr: 'Amiri', fontAr: 'Amiri', colorText: Colors.white, isBold: true);
});

final boiteServiceBandeMA = StateProvider<ModalBoite>((ref) {
  return  ModalBoite("", Colors.red, Colors.yellow);
});

final isFrench = StateProvider<bool>((ref) {
  return true;
});


final modalServiceAppel = StateProvider<ModalServiceEcran>((ref) {
  return ModalServiceEcran(index: 0, appeler: '--', reste: '--', serviceAr: '', serviceFr: '', guichet: '--');
});