import 'dart:io';

import 'package:ecran_afficheur/isar/modal_entete_ecran.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../isar/data_isar.dart';
import '../isar/modal_mode_appel.dart';
import '../isar/modal_mode_video.dart';
import '../variable.dart';
import '../widget/connection.dart';

class IsarFunction {
  late Future<Isar> db;

  IsarFunction() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationSupportDirectory();
      return await Isar.open(
        [
          DataIsarSchema,
          ModalEnteteEcranSchema,
          ModalModeAppelSchema,
          ModalServiceEcranSchema,
          ModalModeVideoSchema,
        ],
        inspector: true,
        directory: dir.path,
      );
    }
    return Future.value(Isar.getInstance());
  }

  Future<DataIsar> getListUpdate(WidgetRef ref) async {
    final isar = await db;
    late DataIsar result;
    final dataStore = await isar.dataIsars.where().findFirst();
    if (dataStore == null) {
      ref.read(isConfig.notifier).state = false;
      result =
          DataIsar(adressServer: '192.168.1.0', nomTv: 'ecran 1')
            ..ecranModeAppel = DateTime(0, 0, 0, 0, 0, 0, 0, 0)
            ..ecranModeVideo = DateTime(0, 0, 0, 0, 0, 0, 0, 0)
            ..ecranEnteteSetting = DateTime(0, 0, 0, 0, 0, 0, 0, 0)
            ..ecranListMedia = DateTime(0, 0, 0, 0, 0, 0, 0, 0);
    } else {
      ref.read(addressIp.notifier).state = dataStore.adressServer;
      ref.read(isConfig.notifier).state = true;
      result = dataStore;
    }

    debugPrint('ecranModeAppel ${result.ecranModeAppel}');
    debugPrint('ecranModeVideo ${result.ecranModeVideo}');
    debugPrint('ecranEnteteSetting ${result.ecranEnteteSetting}');
    ref.read(updateModeAppelState.notifier).state = result.ecranModeAppel??DateTime(0, 0, 0, 0, 0, 0, 0, 0);
    ref.read(updateModeVideoState.notifier).state = result.ecranModeVideo??DateTime(0, 0, 0, 0, 0, 0, 0, 0);
    ref.read(updateSettingState.notifier).state = result.ecranEnteteSetting??DateTime(0, 0, 0, 0, 0, 0, 0, 0);

    return result;
  }

  Future<void> setLastUpdateModeVideo(DateTime update) async {
    final isar = await db;
    miseAjour.ecranModeVideo = update;

    debugPrint('ecranModeVideo ${miseAjour.ecranModeVideo}');

    await isar.writeTxn(() async {
      await isar.dataIsars.put(miseAjour);
    });
  }

  Future<void> setLastUpdateModeAppel(DateTime update) async {
    final isar = await db;
    miseAjour.ecranModeAppel = update;
    debugPrint('ecranModeAppel ${miseAjour.ecranModeVideo}');
    await isar.writeTxn(() async {
      await isar.dataIsars.put(miseAjour);
    });
  }

  Future<void> setLastUpdateSetting(DateTime update) async {
    final isar = await db;
    miseAjour.ecranEnteteSetting = update;
    debugPrint('ecranSetting ${miseAjour.ecranEnteteSetting}');
    await isar.writeTxn(() async {
      await isar.dataIsars.put(miseAjour);
    });
  }

  void saveImage(String fileName, List<int> payload) async {
    String pathFile = Directory.current.path;

    final directory = Directory('$pathFile\\image\\');
    if (!await directory.exists()) {
      await directory.create(recursive: true);
    }

    File('$pathFile\\image\\$fileName').writeAsBytesSync(payload);
    debugPrint('Image sauvegardée sous le nom : $fileName');
  }

  void saveVideo(String fileName, List<int> payload) async {
    String pathFile = Directory.current.path;

    final directory = Directory('$pathFile\\video\\');
    if (!await directory.exists()) {
      await directory.create(recursive: true);
    }

    File('$pathFile\\video\\$fileName').writeAsBytesSync(payload);
    debugPrint('Image sauvegardée sous le nom : $fileName');
  }

  Future<void> saveConfig(
    WidgetRef ref,
    String adressServer,
    String numGuichet,
  ) async {
    ref.read(addressIp.notifier).state = adressServer;
    ref.read(isConfig.notifier).state = true;

    final isar = await db;
    DataIsar? modalservice = await isar.dataIsars.where().findFirst();
    debugPrint("saveConfig $adressServer");
    if (modalservice != null) {
      modalservice.adressServer = adressServer;
      modalservice.nomTv = numGuichet;
    } else {
      modalservice = DataIsar(adressServer: adressServer, nomTv: numGuichet);
    }
    await isar.writeTxn(() async {
      await isar.dataIsars.clear();
      isar.dataIsars.put(modalservice!);
    });
  }

  Future<void> saveEnteteEcran(ModalEnteteEcran modalEnteteEcran) async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.modalEnteteEcrans.clear();
      await isar.modalEnteteEcrans.put(modalEnteteEcran);
      debugPrint('saveEnteteEcran saved');
    });
  }

  Future<ModalEnteteEcran> getEnteteEcran() async {
    final isar = await db;
    ModalEnteteEcran? modalEnteteEcran =
        await isar.modalEnteteEcrans.where().findFirst();
    late ModalEnteteEcran result;
    if (modalEnteteEcran == null) {
      result = ModalEnteteEcran(
        enteteArab: 'عنوان تلفاز بالعربية',
        fontArab: '',
        colorTextArab: Colors.black.toARGB32(),
        isBoldArab: true,
        isItalicArab: true,
        enteteFrancais: 'titre tv en francais',
        fontFrancais: '',
        colorTextFrancais: Colors.black.toARGB32(),
        isBoldFrancais: true,
        isItalicFrancais: true,
        colorFond: Colors.lightBlueAccent.toARGB32(),
        isFondImage: false,
        colorIcon: Colors.transparent.toARGB32(),
        isIconRight: true,
        isIconLeft: true,
        colorDateHorloge: Colors.black.toARGB32(),
        isArab: true,
        isFrancais: true,
        delayChange: 5,
        delayAttenteVocal: 5,
        isDateHorloge: true,
      );
    } else {
      result = modalEnteteEcran;
    }

    return result;
  }

  Future<void> saveModeAppelEcran(ModalModeAppel modalModeAppel) async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.modalModeAppels.clear();
      await isar.modalModeAppels.put(modalModeAppel);
      debugPrint('saveEnteteEcran saved');
    });
  }

  Future<ModalModeAppel> getModeAppelEcran() async {
    final isar = await db;
    ModalModeAppel? dataSaved = await isar.modalModeAppels.where().findFirst();
    late ModalModeAppel result;
    if (dataSaved == null) {
      result = ModalModeAppel(
        guichetTitreColorText: Colors.black.toARGB32(),
        guichetTitreIsBold: false,
        guichetTitreIsItalic: false,
        guichetNumeroColorText: Colors.black.toARGB32(),
        guichetNumeroIsBold: false,
        guichetNumeroIsItalic: false,
        numeroTitreColorText: Colors.black.toARGB32(),
        numeroTitreIsBold: false,
        numeroTitreIsItalic: false,
        numeroNumeroColorText: Colors.black.toARGB32(),
        numeroNumeroIsBold: false,
        numeroNumeroIsItalic: false,
        guichetTitreStyleBoite: '',
        guichetTitreCouleurFond: Colors.blueAccent.toARGB32(),
        guichetTitreCouleurClignotment: Colors.yellow.toARGB32(),
        guichetNumeroStyleBoite: '',
        guichetNumeroCouleurFond: Colors.deepOrangeAccent.toARGB32(),
        guichetNumeroCouleurClignotment: Colors.yellow.toARGB32(),
        numeroTitreStyleBoite: '',
        numeroTitreCouleurFond: Colors.blueAccent.toARGB32(),
        numeroTitreCouleurClignotment: Colors.yellow.toARGB32(),
        numeroNumeroStyleBoite: '',
        numeroNumeroCouleurFond: Colors.deepOrangeAccent.toARGB32(),
        numeroNumeroCouleurClignotment: Colors.yellow.toARGB32(),
        intervalleClignotment: 5,
      );
    } else {
      result = dataSaved;
    }

    return result;
  }

  Future<void> saveModeVideoEcran(ModalModeVideo modalModeVideo) async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.modalModeVideos.clear();
      await isar.modalModeVideos.put(modalModeVideo);
      debugPrint('saveEnteteEcran saved');
    });
  }

  Future<ModalModeVideo> getModeVideoEcran() async {
    final isar = await db;
    ModalModeVideo? dataSaved = await isar.modalModeVideos.where().findFirst();
    late ModalModeVideo result;
    if (dataSaved == null) {
      result = ModalModeVideo(
        positionAffichageService: "droite",
        modeAffichageMultimedia: "etirer",
        isServiceVisible: true,
        isResteVisible: true,
        durerImage: 60,
        volume: "99.0",
        isBold: true,
        isItalic: false,
        colorText: Colors.black.toARGB32(),
        listMedia: [],
      );
    } else {
      result = dataSaved;
    }

    return result;
  }
}
