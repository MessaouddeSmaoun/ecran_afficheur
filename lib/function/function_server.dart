import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widget/connection.dart';

Future<void> sendData(
    Socket? socket,
    Map<String, dynamic> header,
    File? file, {
      bool sendFile = false,
    }) async {
  try {
    // Création de l'en-tête JSON
    final headerJson = "${jsonEncode(header)}\r\n\r\n";
    socket?.add(utf8.encode(headerJson));
    await socket?.flush();
    debugPrint("Message envoyé : $headerJson");
    if (sendFile) {
      if (file == null || !file.existsSync()) {
        debugPrint("Fichier introuvable");
        return;
      }
      // Envoi du contenu du fichier
      await file.openRead().pipe(socket!);
      await socket.flush();
      debugPrint("Fichier envoyé");
    } else {
      debugPrint("Seul l'en-tête a été envoyé");
    }
  } catch (e) {
    debugPrint("Erreur lors de l'envoi : $e");
  }
}

void setNewConnection(WidgetRef ref) {
  debugPrint("setNewConnection");
  Map<String, dynamic> jsonObject = {
    'source': 'fromEcran',
    'objet': 'setNewConnection',
    'screen': 'screen1',
    'updateModeAppel': ref.watch(updateModeAppelState).toString(),
    'updateModeVideo': ref.watch(updateModeVideoState).toString(),
    'updateService': ref.watch(updateServiceState).toString(),
    'updateSetting': ref.watch(updateSettingState).toString(),
  };
  sendData(
    ref.watch(socketServer)!,
    jsonObject,
    null,
  );
}