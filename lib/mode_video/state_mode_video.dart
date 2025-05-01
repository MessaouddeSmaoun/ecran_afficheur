
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../isar/modal_mode_video.dart';
import '../modal/modal_text.dart';
import 'modal_list_media.dart';

final modeAppercueModeVideo = StateProvider<bool>((ref) {
  return false;
});



final isServiceVisible = StateProvider<bool>((ref) {
  return true;
});

final isResteVisible = StateProvider<bool>((ref) {
  return false;
});

final positionAffichageService = StateProvider<String>((ref) {
  return "droite";
});

final modalTextService = StateProvider<ModalText>((ref) {
  return ModalText(titre: 'Guichet', fontFr: 'Amiri', fontAr: 'Amiri', colorText: Colors.blue, isBold: true);
});

final modeAffichageMultimedia = StateProvider<String>((ref) {
  return "etirer";
});

final volume = StateProvider<double>((ref) {
  return 20;
});

final listMedia2 = StateProvider<List<ModalListMedia>>((ref) {
  return [];
});

final listServiceModeVideo = StateProvider<List<ModalServiceEcran>>((ref) {
  return [];
});


final hauteurBodyWidget = StateProvider<double>((ref) {
  return 5;
});

final listMediaState = StateProvider<List<String>>((ref) {
  return [];
});

final isBandeVisibleMV = StateProvider<bool>((ref) {
  return true;
});


final coleurServiceMV = StateProvider<Color>((ref) {
  return Colors.amber;
});

final coleurNumeroMV = StateProvider<Color>((ref) {
  return Colors.amber;
});