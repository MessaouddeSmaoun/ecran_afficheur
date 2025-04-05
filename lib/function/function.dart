import 'dart:io';

import 'package:ecran_afficheur/function/function_server.dart';
import 'package:ecran_afficheur/function/isar_function.dart';
import 'package:ecran_afficheur/isar/modal_mode_appel.dart';
import 'package:ecran_afficheur/isar/modal_mode_video.dart';
import 'package:ecran_afficheur/modal/modal_icon.dart';
import 'package:ecran_afficheur/modal/modal_service.dart';
import 'package:ecran_afficheur/state_manager/state_ecran.dart';
import 'package:ecran_afficheur/variable.dart';
import 'package:ecran_afficheur/widget/connection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:path/path.dart' as p;
import 'package:permission_handler/permission_handler.dart';
import '../isar/modal_entete_ecran.dart';
import '../modal/modal_text.dart';
import '../mode_appel/state_mode_appel.dart';
import '../mode_video/state_mode_video.dart';
import '../state_manager/state_provider_ecran.dart';
import 'package:audioplayers/audioplayers.dart' as pl;

Future<void> newAppel(
  WidgetRef ref,
  List<Map<String, dynamic>> jsonObject,
) async {
ref.read(isAppel.notifier).state = true;
  ref.read(textNumeroNumero.notifier).state.titre = jsonObject.first["numero"];
  ref.read(textGuichetNumero.notifier).state.titre =
      jsonObject.first["n°Bureau"];
  for (var index = 0; index < ref.watch(listServiceModeVideo).length; index++) {
    debugPrint(
        "listService : ${ref.watch(listServiceModeVideo)[index].index} ${ref.watch(listServiceModeVideo)[index].titreFrAff}");
    if (ref.watch(listServiceModeVideo)[index].index == jsonObject.first["index"]) {
      ref.read(listServiceModeVideo.notifier).state[index].appeler = jsonObject.first["numero"];
      ref.read(listServiceModeVideo.notifier).state[index].reste = jsonObject.first["reste"];
    }
  }

debugPrint("start Clignotement");
startClignotement(ref, 22);
setSound(ref);

debugPrint("end Clignotement");
 // setPlay(ref);
}

void startClignotement(WidgetRef ref, int count) {



  if (count <= 0) {
    return;
  }

  Future.delayed(const Duration(milliseconds: 350), () {
    ref.read(isClignot.notifier).state = !ref.read(isClignot);
    startClignotement(ref, count - 1);
  });
}

void updateMedia(
  WidgetRef ref,
  List<String> splitData,
) {}

void updateSetting(WidgetRef ref, Map<String, dynamic> jsonObject) {
  ModalEnteteEcran modalEnteteEcran = ModalEnteteEcran(
    enteteArab: jsonObject["enteteArab"],
    fontArab: jsonObject["fontArab"],
    colorTextArab: jsonObject["colorDateHorloge"], // jsonObject["colorTextArab"],
    isBoldArab:  true, // jsonObject["isBoldArab"],
    isItalicArab: jsonObject["isItalicArab"],
    enteteFrancais: jsonObject["enteteFrancais"],
    fontFrancais: jsonObject["fontFrancais"],
    colorTextFrancais: jsonObject["colorDateHorloge"], // jsonObject["colorTextFrancais"],
    isBoldFrancais: true, // jsonObject["isBoldFrancais"],
    isItalicFrancais: jsonObject["isItalicFrancais"],
    colorFond: jsonObject["colorFond"],
    isFondImage: jsonObject["isFondImage"],
    colorIcon: jsonObject["colorIcon"],
    isIconRight: jsonObject["isIconRight"],
    isIconLeft: jsonObject["isIconLeft"],
    isDateHorloge: jsonObject["IsDateHorloge"],
    colorDateHorloge: jsonObject["colorDateHorloge"],
    isArab: jsonObject["isArab"],
    isFrancais: jsonObject["isFrancais"],
    delayChange: jsonObject["delayChange"],
    delayAttenteVocal: jsonObject["delayAttenteVocal"],
  );


  setEnteteSetting(ref,modalEnteteEcran);
  IsarFunction().saveEnteteEcran(modalEnteteEcran);
  IsarFunction().setLastUpdateSetting(DateTime.parse(jsonObject["updateSetting"]));
  ref.read(updateSettingState.notifier).state = DateTime.parse(jsonObject["updateSetting"]);
}

void updateModeAppel(WidgetRef ref, Map<String, dynamic> jsonObject) {

  ModalModeAppel modeAppel = ModalModeAppel(
      guichetTitreColorText: jsonObject["guichetTitreColorText"],
      guichetTitreIsBold: jsonObject["guichetTitreIsBold"],
      guichetTitreIsItalic: jsonObject["guichetTitreIsItalic"],
      guichetNumeroColorText: jsonObject["guichetNumeroColorText"],
      guichetNumeroIsBold: jsonObject["guichetNumeroIsBold"],
      guichetNumeroIsItalic: jsonObject["guichetNumeroIsItalic"],
      numeroTitreColorText: jsonObject["numeroTitreColorText"],
      numeroTitreIsBold: jsonObject["numeroTitreIsBold"],
      numeroTitreIsItalic: jsonObject["numeroTitreIsItalic"],
      numeroNumeroColorText: jsonObject["numeroNumeroColorText"],
      numeroNumeroIsBold: jsonObject["numeroNumeroIsBold"],
      numeroNumeroIsItalic: jsonObject["numeroNumeroIsItalic"],
      guichetTitreStyleBoite: jsonObject["guichetTitreStyleBoite"],
      guichetTitreCouleurFond: jsonObject["guichetTitreCouleurFond"],
      guichetTitreCouleurClignotment: jsonObject["guichetTitreCouleurClignotment"],
      guichetNumeroStyleBoite: jsonObject["guichetNumeroStyleBoite"],
      guichetNumeroCouleurFond: jsonObject["guichetNumeroCouleurFond"],
      guichetNumeroCouleurClignotment: jsonObject["guichetNumeroCouleurClignotment"],
      numeroTitreStyleBoite: jsonObject["numeroTitreStyleBoite"],
      numeroTitreCouleurFond: jsonObject["numeroTitreCouleurFond"],
      numeroTitreCouleurClignotment: jsonObject["numeroTitreCouleurClignotment"],
      numeroNumeroStyleBoite: jsonObject["numeroNumeroStyleBoite"],
      numeroNumeroCouleurFond: jsonObject["numeroNumeroCouleurFond"],
      numeroNumeroCouleurClignotment: jsonObject["numeroNumeroCouleurClignotment"],
      intervalleClignotment: jsonObject["intervalleClignotment"]);

  setModeAppel(ref, modeAppel);

  IsarFunction().saveModeAppelEcran(modeAppel);
  IsarFunction().setLastUpdateModeAppel(DateTime.parse(jsonObject["updateModeAppel"]));
  ref.read(updateModeAppelState.notifier).state = DateTime.parse(jsonObject["updateModeAppel"]);
}

void updateModeVideo(WidgetRef ref, Map<String, dynamic> jsonObject) {

  ModalModeVideo modeVideo = ModalModeVideo(
      positionAffichageService: jsonObject["positionAffichageService"],
      modeAffichageMultimedia: jsonObject["modeAffichageMultimedia"],
      isServiceVisible: jsonObject["isServiceVisible"],
      isResteVisible: jsonObject["isResteVisible"],
      durerImage: jsonObject["durerImage"],
      volume: jsonObject["volume"],
      isBold: jsonObject["isBold"],
      isItalic: jsonObject["isItalic"],
      colorText: jsonObject["colorText"],
      listMedia: jsonObject["listMedia"].cast<String>()
  );


  setModeVideo(ref,modeVideo);

  IsarFunction().saveModeVideoEcran(modeVideo);
  IsarFunction().setLastUpdateModeVideo(DateTime.parse(jsonObject["updateModeVideo"]));
  ref.read(updateModeVideoState.notifier).state = DateTime.parse(jsonObject["updateModeVideo"]);
}

void updateNowService(WidgetRef ref, Map<String, dynamic> jsonObject) {
  List<ModalService> listService = [];
  for (var numberList = 1;
      numberList <= jsonObject['nombreList'];
      numberList++) {
    ModalService service = ModalService(
        index: jsonObject['index$numberList'],
        appeler: jsonObject['appeler$numberList'],
        reste: jsonObject['reste$numberList'],
        titreArAff: jsonObject['titreArAff$numberList'],
        titreFrAff: jsonObject['titreFrAff$numberList']);
    listService.add(service);
  }
  ref.read(listServiceModeVideo.notifier).state = [...listService];

  debugPrint("ref.read(listServiceModeVideo ${ref.read(listServiceModeVideo).length}");

}

Future<void> setSound(WidgetRef ref) async {
  debugPrint("debut setSound");
  await playerSound.play(pl.AssetSource('audio/sound1.mp3'),volume: 100);
  debugPrint("fin setSound");

  Future.delayed(const Duration(seconds: 4), (){
    setPlay(ref);
  });


}

Future<void> setPlay(WidgetRef ref) async {
  String symbol = ref.watch(textNumeroNumero).titre.replaceAll(RegExp(r'[^a-zA-Z]'), '');
  String numbers = ref.watch(textNumeroNumero).titre.replaceAll(RegExp(r'[^0-9]'), '');

  numbers = int.parse(numbers).toString();

  debugPrint("langueFrancaisDisp $langueFrancaisDisp");
  debugPrint("langueArabDisp ${ref.watch(isFrancais)}");
  debugPrint("langueFrancaisDisp $langueFrancaisDisp");
  debugPrint("langueArabDisp ${ref.watch(isArab)}");

  if (ref.watch(isFrancais) && langueFrancaisDisp) {

    await flutterTts.setLanguage("fr-FR");
    await flutterTts.speak("numero",);
    await Future.delayed(Duration(milliseconds: 150));
    if (symbol != "") {
      await flutterTts.speak(symbol);
      await Future.delayed(Duration(milliseconds: 30));
    }
    await flutterTts.speak(numbers);
    await Future.delayed(Duration(milliseconds: 700));
    await flutterTts.speak("bureau");
    await Future.delayed(Duration(milliseconds: 20));
    await flutterTts.speak(ref.watch(textGuichetNumero).titre);

    debugPrint("isFrancais");
  }



  if (ref.watch(isArab) && langueArabDisp){
    if (ref.watch(isFrancais) && langueFrancaisDisp) {
      await Future.delayed(Duration(milliseconds: 900));
    }
    await flutterTts.setLanguage("ar");
    await flutterTts.speak("رقم",);
    await Future.delayed(Duration(milliseconds: 150));
    if (symbol != "") {
      await flutterTts.speak(symbol);
      await Future.delayed(Duration(milliseconds: 30));
    }
    await flutterTts.speak(numbers);
    await Future.delayed(Duration(milliseconds: 700));
    await flutterTts.speak("رقم مكتب");
    await Future.delayed(Duration(milliseconds: 20));
    await flutterTts.speak(ref.watch(textGuichetNumero).titre);
    debugPrint("isArab");
  }



  await Future.delayed(Duration(seconds: delayAttenteVocal));
  if (listAppel.isNotEmpty) {
    listAppel.removeAt(0);
  }
  if (listAppel.isNotEmpty) {
    newAppel(ref, listAppel);
  } else {
    ref.read(isAppel.notifier).state = false;
  }

}

void initTts() async {
  flutterTts = FlutterTts();
  /*
  flutterTts.getVoices.then((data) {
    List<Map> voices = List<Map>.from(data);
    List<Map> frenchVoices =
    voices.where((v) => v["locale"].toString().startsWith("fr")).toList();

  });

  List<dynamic> languages = await flutterTts.getLanguages;
   */
  langueArabDisp = await flutterTts.isLanguageAvailable("ar-DZ");
  langueFrancaisDisp = await flutterTts.isLanguageAvailable("fr-FR");

  await flutterTts.setSpeechRate(0.45);
  await flutterTts.setVolume(1.0);
  await flutterTts.setPitch(1);
  await flutterTts.awaitSpeakCompletion(true);
}

Future<void> initVariable(WidgetRef ref) async {
  ModalEnteteEcran modeEntete = await IsarFunction().getEnteteEcran();
  setEnteteSetting(ref, modeEntete);

  ModalModeAppel modeAppel = await IsarFunction().getModeAppelEcran();
  setModeAppel(ref, modeAppel);

  ModalModeVideo modeVideo = await IsarFunction().getModeVideoEcran();
  setModeVideo(ref, modeVideo);



  /*
  ref.read(modalIconEntete.notifier).state = ModalIcon(
    pathIcon: '',
    colorIcon: Colors.transparent,
    isLeft: true,
    isRight: true,
    sizeIcon: 1,
  );

  titreFr = ModalText(
      titre: 'titre tv en francais',
      font: '',
      colorText: Colors.black,
      isBold: true,
      isItalic: false);
  titreAr = ModalText(
      titre: 'عنوان تلفاز بالعربية',
      font: '',
      colorText: Colors.black,
      isBold: true,
      isItalic: false);

  isReste = true;
  durerImage = 60;
   */

 // ref.read(listMediaState.notifier).state = await listUsbFiles();

}

void ifileExiste(WidgetRef ref) {
  File leFichier = File(ref.watch(listMediaState)[ref.watch(indexSelected)]);

  if (leFichier.existsSync()) {
    final extFile = p.extension(ref.watch(listMediaState)[ref.watch(indexSelected)]);

    debugPrint("leFichier $extFile");

    if ((extFile == ".avi") ||
        (extFile == ".mp4") ||
        (extFile == ".wma") ||
        (extFile == ".flv") ||
        (extFile == ".mkv") ||
        (extFile == ".mov") ||
        (extFile == ".wmv") ||
        (extFile == ".3gp") ||
        (extFile == ".ts")) {
      ref.read(isImage.notifier).state = false;
    } else {
      ref.read(isImage.notifier).state = true;
    }
  }
}

Future<void> sendListMedia(Socket socket) async {
  final list = await listUsbFiles();
  Map<String, dynamic> jsonObject = {
    'source': 'fromEcran',
    'objet': 'getListMediaOk',
    'screen': 'screen1',
  };
  jsonObject["nombreMedia"] = list.length;

  int index = 1;
  for (var item in list) {
    jsonObject["media$index"] = item;
    debugPrint("list $item");
    index++;
  }
  await sendData(socket, jsonObject, null);

  debugPrint("sendListMedia");
}

Future<List<String>> listUsbFiles() async {
  List<String> list = [];
  if (externalDir != null) {
    String usbFolderPath = "${externalDir?.path}";
    Directory usbDir = Directory(usbFolderPath);
    for (var item in usbDir.listSync()) {
      list.add(item.path.split("/").last);
    }
    list.remove("logo_entete");
    list.remove("image_fond");
    return list;
  }
  return [];
}

Future<String?> createUsbDirectory() async {

  debugPrint("createUsbDirectory");

  if (await Permission.storage.request().isGranted) {
    externalDir = Directory("/storage/emulated/0/appaznay/ressources_media");
    String? usbFolderPath = externalDir?.path;
    if (!externalDir!.existsSync()) {
      externalDir?.createSync(recursive: true);
    }
    return usbFolderPath;
  }
/*
  if (await Permission.videos.request().isGranted) {

  }

  if (await Permission.photos.request().isGranted) {


  }
 */

  if (await Permission.location.request().isGranted) {

  }

  return null;
}

Future<void> setModeAppel(WidgetRef ref, ModalModeAppel modeAppel) async {

  ref.read(textNumeroTitre.notifier).state.colorText =
      Color(modeAppel.numeroTitreColorText);
  ref.read(textNumeroTitre.notifier).state.isItalic =
      modeAppel.numeroTitreIsItalic;
  ref.read(textNumeroTitre.notifier).state.isBold =
      modeAppel.numeroTitreIsBold;

  ref.read(textNumeroNumero.notifier).state.colorText =
      Color(modeAppel.numeroNumeroColorText);
  ref.read(textNumeroNumero.notifier).state.isItalic =
      modeAppel.numeroNumeroIsItalic;
  ref.read(textNumeroNumero.notifier).state.isBold =
      modeAppel.numeroNumeroIsBold;

  ref.read(textGuichetTitre.notifier).state.colorText =
      Color(modeAppel.guichetTitreColorText);
  ref.read(textGuichetTitre.notifier).state.isItalic =
      modeAppel.guichetTitreIsItalic;
  ref.read(textGuichetTitre.notifier).state.isBold =
      modeAppel.guichetTitreIsBold;

  ref.read(textGuichetNumero.notifier).state.colorText =
      Color(modeAppel.guichetNumeroColorText);
  ref.read(textGuichetNumero.notifier).state.isItalic =
      modeAppel.guichetNumeroIsItalic;
  ref.read(textGuichetNumero.notifier).state.isBold =
      modeAppel.guichetNumeroIsBold;

  ref.read(boiteNumeroTitre.notifier).state.styleBoite =
  (modeAppel.numeroTitreStyleBoite);
  ref.read(boiteNumeroTitre.notifier).state.couleurFond =
      Color(modeAppel.numeroTitreCouleurFond);
  ref.read(boiteNumeroTitre.notifier).state.couleurClignotment =
      Color(modeAppel.numeroTitreCouleurClignotment);

  ref.read(boiteNumeroNumero.notifier).state.styleBoite =
  (modeAppel.numeroNumeroStyleBoite);
  ref.read(boiteNumeroNumero.notifier).state.couleurFond =
      Color(modeAppel.numeroNumeroCouleurFond);
  ref.read(boiteNumeroNumero.notifier).state.couleurClignotment =
      Color(modeAppel.numeroNumeroCouleurClignotment);

  ref.read(boiteGuichetTitre.notifier).state.styleBoite =
  (modeAppel.guichetTitreStyleBoite);
  ref.read(boiteGuichetTitre.notifier).state.couleurFond =
      Color(modeAppel.guichetTitreCouleurFond);
  ref.read(boiteGuichetTitre.notifier).state.couleurClignotment =
      Color(modeAppel.guichetTitreCouleurClignotment);

  ref.read(boiteGuichetNumero.notifier).state.styleBoite =
  (modeAppel.guichetNumeroStyleBoite);
  ref.read(boiteGuichetNumero.notifier).state.couleurFond =
      Color(modeAppel.guichetNumeroCouleurFond);
  ref.read(boiteGuichetNumero.notifier).state.couleurClignotment =
      Color(modeAppel.guichetNumeroCouleurClignotment);

}
Future<void> setEnteteSetting(WidgetRef ref, ModalEnteteEcran modalEnteteEcran) async {

  delayChange = modalEnteteEcran.delayChange;
  delayAttenteVocal = modalEnteteEcran.delayAttenteVocal;
  ref.read(isArab.notifier).state = modalEnteteEcran.isArab;
  ref.read(isFrancais.notifier).state = modalEnteteEcran.isFrancais;

  if (ref.watch(isFrancais) && !ref.watch(isArab)) {
    ref.read(modalTextEntete.notifier).state = titreFr;
  } else if (!ref.watch(isFrancais) && ref.watch(isArab)) {
    ref.read(modalTextEntete.notifier).state = titreAr;
  }

  ref.read(isImageFondEcan.notifier).state = modalEnteteEcran.isFondImage;
  ref.read(colorFondEcran.notifier).state = Color(modalEnteteEcran.colorFond);
  ref.read(colorDateHorloge.notifier).state =
      Color(modalEnteteEcran.colorDateHorloge);
  ref.read(isClockDateVisible.notifier).state = modalEnteteEcran.isDateHorloge;
  ref.read(colorDateHorloge.notifier).state =
      Color(modalEnteteEcran.colorDateHorloge);

  titreFr = ModalText(
      titre: modalEnteteEcran.enteteFrancais,
      font: modalEnteteEcran.fontFrancais,
      colorText: Color(modalEnteteEcran.colorTextFrancais),
      isBold: modalEnteteEcran.isBoldFrancais,
      isItalic: modalEnteteEcran.isItalicFrancais);
  titreAr = ModalText(
      titre: modalEnteteEcran.enteteArab,
      font: modalEnteteEcran.fontArab,
      colorText: Color(modalEnteteEcran.colorTextArab),
      isBold: modalEnteteEcran.isBoldArab,
      isItalic: modalEnteteEcran.isItalicArab);

  ref.read(modalIconEntete.notifier).state = ModalIcon(
      pathIcon: '',
      colorIcon: Color(modalEnteteEcran.colorIcon),
      isLeft: modalEnteteEcran.isIconLeft,
      isRight: modalEnteteEcran.isIconRight,
      sizeIcon: 1);

}
Future<void> setModeVideo(WidgetRef ref, ModalModeVideo modeVideo) async {


  ref.read(positionAffichageService.notifier).state =modeVideo.positionAffichageService;
  ref.read(isServiceVisible.notifier).state = modeVideo.isServiceVisible;
  durerImage = modeVideo.durerImage;
  ref.read(listMediaState.notifier).state = [...modeVideo.listMedia];

  ref.read(isReste.notifier).state = modeVideo.isResteVisible;
  ref.read(indexSelected.notifier).state = 0;
  ref.read(modalTextService.notifier).state.colorText =
      Color(modeVideo.colorText);

  debugPrint("modeVideo.volume ${modeVideo.volume}");
  debugPrint("listMediaState ${ref.read(listMediaState.notifier).state.toString()}");

  ref.read(volume.notifier).state = double.parse(modeVideo.volume);



}