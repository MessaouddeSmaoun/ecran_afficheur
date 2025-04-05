import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final isServerConnected = StateProvider<bool>((ref) {
  return false;
});


final isUpdate = StateProvider<bool>((ref) {
  return false;
});

final socketServer = StateProvider<Socket?>((ref) {
  return null;
});

final addressIp = StateProvider<String>((ref) {
  return '192.168.1.0';
});

final nomTv = StateProvider<String>((ref) {
  return 'ecran 1';
});

final isConfig = StateProvider<bool>((ref) {
  return false;
});

final updateModeVideoState = StateProvider<DateTime>((ref) {
  return DateTime(0, 0, 0, 0, 0, 0, 0, 0);
});

final updateModeAppelState = StateProvider<DateTime>((ref) {
  return DateTime(0, 0, 0, 0, 0, 0, 0, 0);
});

final updateSettingState = StateProvider<DateTime>((ref) {
  return DateTime(0, 0, 0, 0, 0, 0, 0, 0);
});

final updateServiceState = StateProvider<DateTime>((ref) {
  return DateTime(0, 0, 0, 0, 0, 0, 0, 0);
});