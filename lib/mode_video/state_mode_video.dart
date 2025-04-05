
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../modal/modal_service.dart';
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
  return ModalText(titre: 'Guichet', font: 'normal', colorText: Colors.blue, isBold: true, isItalic: false);
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

final listServiceModeVideo = StateProvider<List<ModalService>>((ref) {
  return [];
});


final hauteurBodyWidget = StateProvider<double>((ref) {
  return 5;
});

final listMediaState = StateProvider<List<String>>((ref) {
  return [];
});
