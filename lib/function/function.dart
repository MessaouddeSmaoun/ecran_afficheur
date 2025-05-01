import 'dart:io';

import 'package:ecran_afficheur/function/function_server.dart';
import 'package:ecran_afficheur/function/isar_function.dart';
import 'package:ecran_afficheur/function/text_to_voice.dart';
import 'package:ecran_afficheur/isar/modal_mode_appel.dart';
import 'package:ecran_afficheur/isar/modal_mode_video.dart';
import 'package:ecran_afficheur/modal/modal_icon.dart';
import 'package:ecran_afficheur/state_manager/state_ecran.dart';
import 'package:ecran_afficheur/variable.dart';
import 'package:ecran_afficheur/widget/connection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:media_kit/media_kit.dart';
import 'package:path/path.dart' as p;
import 'package:permission_handler/permission_handler.dart';
import '../isar/modal_entete_ecran.dart';
import '../modal/list_nom.dart';
import '../modal/modal_boite.dart';
import '../modal/modal_text.dart';
import '../mode_appel/page_mode/apercue_mode_appel.dart';
import '../mode_appel/page_mode/apercue_mode_appel_2.dart';
import '../mode_appel/page_mode/apercue_mode_appel_3.dart';
import '../mode_appel/page_mode/apercue_mode_appel_4.dart';
import '../mode_appel/state_mode_appel.dart';
import '../mode_video/state_mode_video.dart';
import '../state_manager/state_provider_ecran.dart';
import 'package:audioplayers/audioplayers.dart' as pl;

Future<void> newAppel(
  WidgetRef ref,
  List<Map<String, dynamic>> jsonObject,
) async {
  numPlay = 0;
  CurrentIndexPlayer = 0;
  numPlayList = 0;
  numPlayCurrent = 0;
ref.read(isAppel.notifier).state = true;
  ref.read(textNumeroNumero.notifier).state.titre = jsonObject.first["numero"];
  ref.read(textGuichetNumero.notifier).state.titre = jsonObject.first["n°Bureau"];
  for (var index = 0; index < ref.watch(listServiceModeVideo).length; index++) {
    debugPrint(
        "listService : ${ref.watch(listServiceModeVideo)[index].index} ${ref.watch(listServiceModeVideo)[index].serviceFr}");
    if (ref.watch(listServiceModeVideo)[index].index == jsonObject.first["index"]) {
      ref.read(listServiceModeVideo.notifier).state[index].appeler = jsonObject.first["numero"];
      ref.read(listServiceModeVideo.notifier).state[index].reste = jsonObject.first["reste"];
      ref.read(listServiceModeVideo.notifier).state[index].guichet = jsonObject.first["n°Bureau"];
      ref.read(modalServiceAppel.notifier).state =   ref.read(listServiceModeVideo.notifier).state[index];
    }
  }
  if (ref.watch(isFrancais)) {
    ref
        .read(isFrench.notifier)
        .state = true;
  }
debugPrint("start Clignotement");
startClignotement(ref, 22);
  setSound(ref);
debugPrint("end Clignotement");

}

void startClignotement(WidgetRef ref, int count) {



  if (count <= 0) {
    setPlay(ref);
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
    isBoldArab:  jsonObject["isBoldArab"],
    enteteFrancais: jsonObject["enteteFrancais"],
    fontFrancais: jsonObject["fontFrancais"],
    colorTextFrancais: jsonObject["colorDateHorloge"], // jsonObject["colorTextFrancais"],
    isBoldFrancais: jsonObject["isBoldFrancais"],
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


      boiteServiceBandeMAFond: jsonObject["boiteServiceBandeMAFond"],
      boiteServiceBandeMAClignotment: jsonObject["boiteServiceBandeMAClignotment"],
      textServiceBandeMAisBold: jsonObject["textServiceBandeMAisBold"],
      textServiceBandeMAColor: jsonObject["textServiceBandeMAColor"],
      textServiceBandeMAfontFr: jsonObject["textServiceBandeMAfontFr"],
      textServiceBandeMAfontAr: jsonObject["textServiceBandeMAfontAr"],
      visibleTextServiceBandeMA: jsonObject["visibleTextServiceBandeMA"],

      nomGuichetAr: jsonObject["nomGuichetAr"],
      nomGuichetFr: jsonObject["nomGuichetFr"],
      nomNumeroAr: jsonObject["nomNumeroAr"],
      nomNumeroFr: jsonObject["nomNumeroFr"],
      modeAppelSelected: jsonObject["modeAppelSelected"],
      fontNumeroSelected: jsonObject["fontNumeroSelected"],
      isListGuchetVisible: jsonObject["isListGuchetVisible"],
      positionAffichageServiceMA: jsonObject["positionAffichageServiceMA"],
      textListAppelMAColor: jsonObject["textListAppelMAColor"],
      textListAppelMAisBold: jsonObject["textListAppelMAisBold"],
      textListAppelMAfontFr: jsonObject["textListAppelMAfontFr"],
      textListAppelMAfontAr: jsonObject["textListAppelMAfontAr"],
      coleurGuichetMA: jsonObject["coleurGuichetMA"],
      coleurNumeroMA: jsonObject["coleurNumeroMA"],

      guichetTitreColorText: jsonObject["guichetTitreColorText"],
      guichetTitreIsBold: jsonObject["guichetTitreIsBold"],
      guichetNumeroColorText: jsonObject["guichetNumeroColorText"],
      guichetNumeroIsBold: jsonObject["guichetNumeroIsBold"],
      numeroTitreColorText: jsonObject["numeroTitreColorText"],
      numeroTitreIsBold: jsonObject["numeroTitreIsBold"],
      numeroNumeroColorText: jsonObject["numeroNumeroColorText"],
      numeroNumeroIsBold: jsonObject["numeroNumeroIsBold"],
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

Future<void> updateModeVideo(WidgetRef ref, Map<String, dynamic> jsonObject) async {

  ModalModeVideo modeVideo = ModalModeVideo(
      positionAffichageService: jsonObject["positionAffichageServiceMV"],
      modeAffichageMultimedia: jsonObject["modeAffichageMultimedia"],
      isServiceVisible: jsonObject["isServiceVisible"],
      isResteVisible: jsonObject["isResteVisible"],
      durerImage: jsonObject["durerImage"],
      volume: jsonObject["volume"],
      isBold: jsonObject["textListAppelMVisBold"],
      colorText: jsonObject["textListAppelMVColor"],
      fontArabServiceMV: jsonObject["textListAppelMVfontAr"],
      fontFrancaisServiceMV: jsonObject["textListAppelMVfontFr"],
      isBandeNumeroVisible: jsonObject["isBandeNumeroVisible"],
      coleurGuichetMV: jsonObject["coleurGuichetMV"],
      coleurNumeroMV: jsonObject["coleurNumeroMV"],
      listMedia: jsonObject["listMedia"].cast<String>()
  );


  List<ModalServiceEcran> listService = [];
  for (var numberList = 1;
  numberList <= jsonObject['listService'];
  numberList++) {
    ModalServiceEcran service = ModalServiceEcran(
        index: jsonObject['index$numberList'],
        appeler: "--",
        guichet: '--',
        reste: "--",
        serviceAr: jsonObject['serviceAr$numberList'],
        serviceFr: jsonObject['serviceFr$numberList'],);
    listService.add(service);



  }

  listService.sort((a, b) => a.index.compareTo(b.index));

 await IsarFunction().saveModeVideoEcran(modeVideo, listService);
  IsarFunction().setLastUpdateModeVideo(DateTime.parse(jsonObject["updateModeVideo"]));

  setModeVideo(ref,modeVideo);

  ref.read(updateModeVideoState.notifier).state = DateTime.parse(jsonObject["updateModeVideo"]);
}

void updateNowService(WidgetRef ref, Map<String, dynamic> jsonObject) {
  List<ModalServiceEcran> listService = ref.watch(listServiceModeVideo);
  for (var numberList = 1;
      numberList <= jsonObject['nombreList'];
      numberList++) {

    int indexService = listService.indexWhere((test) => test.index == jsonObject['index$numberList']);
    if (indexService != -1) {

      listService[indexService]
         ..guichet = '--'
     ..reste = jsonObject['reste$numberList']
     ..appeler = jsonObject['appeler$numberList'];

    }

  }
  ref.read(listServiceModeVideo.notifier).state = [...listService];

}

Future<void> setSound(WidgetRef ref) async {
  debugPrint("debut setSound");
  await playerSound.play(pl.AssetSource('audio/song_notifier/sound2.mp3'),volume: 100);
  debugPrint("fin setSound");


}

Future<void> setPlay(WidgetRef ref) async {
  String symbol = ref.watch(textNumeroNumero).titre.replaceAll(RegExp(r'[^a-zA-Z]'), '');
  String numbers = ref.watch(textNumeroNumero).titre.replaceAll(RegExp(r'[^0-9]'), '');

  numbers = int.parse(numbers).toString();

  String pathFile = Directory.current.path;
  final String path = '$pathFile\\assets\\audio';

  final playerMedia = TextToVoice();
  listPlayVoice = Playlist([]);

  debugPrint("symbol $symbol");
  debugPrint("numbers $numbers");

  isFinish = false;

  if (ref.watch(isFrancais)) {
    Playlist list = await playerMedia.textFrench(false, "numero");
    numPlayList += list.medias.length;
    listPlayVoice.medias.addAll(list.medias);
    list = await playerMedia.attente("silence150");
    numPlayList += list.medias.length;
    listPlayVoice.medias.addAll(list.medias);
    if (symbol != "") {
      Playlist list = await playerMedia.textFrench(true, symbol);
      numPlayList += list.medias.length;
      listPlayVoice.medias.addAll(list.medias);
      list = await playerMedia.attente("silence25");
      numPlayList += list.medias.length;
      listPlayVoice.medias.addAll(list.medias);
    }
    list = await playerMedia.numberFrench(numbers);
    numPlayList += list.medias.length;
    listPlayVoice.medias.addAll(list.medias);
    list = await playerMedia.attente("silence700");
    numPlayList += list.medias.length;
    listPlayVoice.medias.addAll(list.medias);
    list = await playerMedia.textFrench(false, "guichet");
    numPlayList += list.medias.length;
    listPlayVoice.medias.addAll(list.medias);
    list = await playerMedia.attente("silence25");
    numPlayList += list.medias.length;
    listPlayVoice.medias.addAll(list.medias);
    list = await playerMedia.numberFrench(ref.watch(textGuichetNumero).titre);
    numPlayList += list.medias.length;
    listPlayVoice.medias.addAll(list.medias);

    debugPrint("isFrancais  ${ listPlayVoice.medias.first.start} ${ listPlayVoice.medias.first.end}");
  }

  if (ref.watch(isArab) && ref.watch(isFrancais)) {
    Playlist list = await playerMedia.attente("silence1500");
    listPlayVoice.medias.addAll(list.medias);
  }

  if (ref.watch(isArab)) {
    Playlist list = await playerMedia.textArab(false, "numero");
    listPlayVoice.medias.addAll(list.medias);
    listPlayVoice.medias.add(Media('$path\\silence150.wav'));
    if (symbol != "") {
      Playlist list = await playerMedia.textArab(true, symbol);
      listPlayVoice.medias.addAll(list.medias);
      list = await playerMedia.attente("silence25");
      listPlayVoice.medias.addAll(list.medias);
    }
    list = await playerMedia.numberArab(numbers);
    listPlayVoice.medias.addAll(list.medias);
    list = await playerMedia.attente("silence700");
    listPlayVoice.medias.addAll(list.medias);
    list = await playerMedia.textArab(false, "guichet");
    listPlayVoice.medias.addAll(list.medias);
    list = await playerMedia.attente("silence25");
    listPlayVoice.medias.addAll(list.medias);
    list = await playerMedia.numberArab(ref.watch(textGuichetNumero).titre);
    listPlayVoice.medias.addAll(list.medias);

    debugPrint("isArab");
  }

  debugPrint("numPlayList $numPlayList");

  await playerNumber.open(listPlayVoice);

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
    debugPrint("usbFolderPath $usbFolderPath");
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
  //  externalDir = Directory("/storage/emulated/0/appaznay/ressources_media");
    final dir = Directory.current.path;
    externalDir = Directory("$dir\\ressources_media");
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

  switch(modeAppel.modeAppelSelected) {
    case 'mode 1' : ref.read(widgetAppel.notifier).state = ApercueModeAppel();
    case 'mode 2' : ref.read(widgetAppel.notifier).state = ApercueModeAppel2();
    case 'mode 3' : ref.read(widgetAppel.notifier).state = ApercueModeAppel3();
    case 'mode 4' : ref.read(widgetAppel.notifier).state = ApercueModeAppel4();
  }

  ModalText interModalText = ModalText(titre: 'service',
      fontFr: modeAppel.textServiceBandeMAfontFr,
      fontAr: modeAppel.textServiceBandeMAfontAr,
      colorText: Color(modeAppel.textServiceBandeMAColor),
      isBold: modeAppel.textServiceBandeMAisBold);

  ref.read(textServiceBandeMA.notifier).state = interModalText;

  ref.read(boiteServiceBandeMA.notifier).state = ModalBoite("", Color(modeAppel.boiteServiceBandeMAFond), Color(modeAppel.boiteServiceBandeMAClignotment));
  ref.read(isListGuchetVisible.notifier).state = modeAppel.isListGuchetVisible;
  ref.read(coleurGuichetMA.notifier).state = Color(modeAppel.coleurGuichetMA);
  ref.read(coleurNumeroMA.notifier).state = Color(modeAppel.coleurNumeroMA);
  ref.read(visibleTextServiceBandeMA.notifier).state = modeAppel.visibleTextServiceBandeMA;

  ref.read(nomGuichet.notifier).state = ListNom(nomAr: modeAppel.nomGuichetAr, nomFr: modeAppel.nomGuichetFr);
  ref.read(nomNumero.notifier).state = ListNom(nomAr: modeAppel.nomNumeroAr, nomFr: modeAppel.nomNumeroFr);
  ref.read(positionAffichageServiceMA.notifier).state = modeAppel.positionAffichageServiceMA;
  ref.read(fontNumeroSelected.notifier).state = modeAppel.fontNumeroSelected;

  ref.read(textNumeroTitre.notifier).state.colorText =
      Color(modeAppel.numeroTitreColorText);

  ref.read(textNumeroTitre.notifier).state.isBold =
      modeAppel.numeroTitreIsBold;

  ref.read(textNumeroNumero.notifier).state.colorText =
      Color(modeAppel.numeroNumeroColorText);

  ref.read(textNumeroNumero.notifier).state.isBold =
      modeAppel.numeroNumeroIsBold;

  ref.read(textGuichetTitre.notifier).state.colorText =
      Color(modeAppel.guichetTitreColorText);

  ref.read(textGuichetTitre.notifier).state.isBold =
      modeAppel.guichetTitreIsBold;

  ref.read(textGuichetNumero.notifier).state.colorText =
      Color(modeAppel.guichetNumeroColorText);

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
      fontFr: modalEnteteEcran.fontFrancais,
      colorText: Color(modalEnteteEcran.colorTextFrancais),
      isBold: modalEnteteEcran.isBoldFrancais, fontAr: modalEnteteEcran.fontArab);
  titreAr = ModalText(
      titre: modalEnteteEcran.enteteArab,
      fontAr: modalEnteteEcran.fontArab,
      colorText: Color(modalEnteteEcran.colorTextArab),
      isBold: modalEnteteEcran.isBoldArab, fontFr: modalEnteteEcran.fontFrancais);

  ref.read(modalIconEntete.notifier).state = ModalIcon(
      pathIcon: '',
      colorIcon: Color(modalEnteteEcran.colorIcon),
      isLeft: modalEnteteEcran.isIconLeft,
      isRight: modalEnteteEcran.isIconRight,
      sizeIcon: 1);

}
Future<void> setModeVideo(WidgetRef ref, ModalModeVideo modeVideo) async {

  ref.read(isBandeVisibleMV.notifier).state = modeVideo.isBandeNumeroVisible;
  ref.read(coleurServiceMV.notifier).state = Color(modeVideo.coleurGuichetMV);
  ref.read(coleurNumeroMV.notifier).state = Color(modeVideo.coleurNumeroMV);

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

  List<ModalServiceEcran> listService = [];
  for (var item in modeVideo.listService) {listService.add(item);}
  ref.read(listServiceModeVideo.notifier).state = [...listService];
  debugPrint("listServiceModeVideo ${ref.read(listServiceModeVideo.notifier).state.length}");
  debugPrint("modeVideo.listService ${modeVideo.listService.length}");

  ref.read(volume.notifier).state = double.parse(modeVideo.volume);



}