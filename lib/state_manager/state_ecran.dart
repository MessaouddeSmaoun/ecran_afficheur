import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final isClignot = StateProvider<bool>((ref) {
  return false;
});
final numberClignotment = StateProvider<int>((ref) {
  return 10;
});

final isAppel = StateProvider<bool>((ref) {
  return false;
});

final langue = StateProvider<String>((ref) {
  return "";
});
final numero = StateProvider<String>((ref) {
  return "";
});
final guichet = StateProvider<String>((ref) {
  return "";
});

final indexSelected = StateProvider<int>((ref) {
  return 0;
});

final isImage = StateProvider<bool>((ref) {
  return false;
});


final isReste = StateProvider<bool>((ref) {
  return false;
});

final durerLectureMedia = StateProvider<int>((ref) {
  return 7;
});

final ecranAffichage = StateProvider<Widget>((ref) {
  return const SizedBox();
});