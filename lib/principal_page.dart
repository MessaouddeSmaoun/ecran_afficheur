import 'dart:async';
import 'dart:io';
import 'dart:isolate';

import 'package:ecran_afficheur/state_manager/state_ecran.dart';
import 'package:ecran_afficheur/state_manager/state_provider_ecran.dart';
import 'package:ecran_afficheur/variable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

import 'function/function.dart';
import 'mode_appel/apercue_mode_appel.dart';
import 'mode_video/apercue_mode_video.dart';
import 'mode_video/state_mode_video.dart';

class PrincipalPage extends ConsumerStatefulWidget {
  const PrincipalPage({super.key});

  @override
  ConsumerState<PrincipalPage> createState() => _PrincipalPageState();
}




class _PrincipalPageState extends ConsumerState<PrincipalPage> {

/*
  Isolate? _isolate;
  ReceivePort _receivePort = ReceivePort();

 @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      startListening(ref.watch(addressIp));
    });

  }

  @override
  void dispose() {
    _isolate?.kill();
    _receivePort.close();
    super.dispose();
  }
  void startListening(String serverIp) async {

     _isolate?.kill();
      _receivePort.close();

    _receivePort = ReceivePort();

    _isolate = await Isolate.spawn(socketListener,
      {"sendPort": _receivePort.sendPort, "serverIp": serverIp},);

    // Passer un objet avec serverIp et sendPort
    _isolate = await Isolate.spawn(
      socketListener,
      {"sendPort": _receivePort.sendPort, "serverIp": serverIp},
    );


    _receivePort.listen((data) {
      if (data is String) {
        debugPrint(data);
        if (data == "Déconnecté du serveur") {
          Future.delayed(Duration(seconds: 2), () => startListening(serverIp)); // Attendre avant de retenter
        }
      } else if (data is Map<String, dynamic>) {
        debugPrint("data $data");
        handleServerMessage(data);
      }
    });
  }
  void handleServerMessage(dynamic header) {
    switch (header["source"]) {
      case "fromServer":
        switch (header["objet"]) {
          case "updateMedia":
            updateMedia(ref, header);
          case "updateSetting":
            updateSetting(ref, header);
          case "updateModeAppel":
            updateModeAppel(ref, header);
          case "updateModeVideo":
            updateModeVideo(ref, header);
          case "updateNowService":
            updateNowService(ref, header);
          case "getListMedia":
            sendListMedia(ref.watch(socketServer)!);
          case "updateTable":
            debugPrint("update ${ref.watch(listServiceModeVideo).length} Table");



            int index =  ref.watch(listServiceModeVideo).indexWhere(
                  (test) => test.index == header["index"],);

            if (index >= 0) {
              List<ModalService> listService = ref.watch(listServiceModeVideo);

              ModalService modelSelected = listService[index];
              modelSelected.reste = header[ "reste"];
              debugPrint("recue ^${header[ "reste"] }...index $index");
              listService[index] = modelSelected;
              ref.read(listServiceModeVideo.notifier).state = [...listService];
            } else {
              debugPrint("no no no ^${header[ "reste"]}...index $index");
            }


          case "newAppel":
            debugPrint("newAppel");
            listAppel.add(header);
            if (!ref.watch(isAppel)) {
              newAppel(ref, listAppel);
            }
        }
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // pauseTimer(ref);
  }

 */

@override
  void initState() {
    super.initState();
    debugPrint("setstate PrincipalPage");
    initVariable(ref);
    startTimerMedia();
  }



  @override
  void dispose() {
    super.dispose();

    if (timerHorloge!.isActive) {
      timerHorloge?.cancel();
    }
    if (timerMedia!.isActive) {
      timerMedia?.cancel();
    }
    player.dispose();
    playerSound.dispose();
  }


  void startTimerMedia() {
    timerMedia = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (ref.watch(isAppel)) {
        debugPrint("Appel en cours, arrêt de la lecture et du timer.");
        stopTimer();
        player.pause();
        return; // Stoppe l'exécution du callback
      }

        elapsedSeconds++;
        if (elapsedSeconds >= ref.watch(durerLectureMedia)) {
          stopTimer();
          player.stop();
          setState(() {
            ref.read(indexSelected.notifier).state =
                ref.watch(indexSelected) + 1;
            if (ref.watch(indexSelected) == ref.watch(listMediaState).length) {
              ref.read(indexSelected.notifier).state = 0;
            }
          });
          playNextMedia();
          startTimerMedia();
        }

    });
  }


  Future<void> playNextMedia() async {

      if (ref.watch(listMediaState).isNotEmpty) {
        debugPrint("listMedia.isNotEmpty");

        String currentMedia = ref.watch(listMediaState)[ref.watch(indexSelected)];
        String usbFolderPath = "${externalDir?.path}/$currentMedia";

        File leFichier = File(usbFolderPath);

        debugPrint("ApercueModeVideo $usbFolderPath");

        if (leFichier.existsSync()) {
          if (currentMedia.endsWith('.mp4') ||
              currentMedia.endsWith('.avi') ||
              currentMedia.endsWith('.wmv') ||
              currentMedia.endsWith('.flv')) {
            ref.read(ecranAffichage.notifier).state = Stack(
              children: [
                Video(controller: controller,),
                Container(color: Colors.transparent),
              ],
            );

          //  openMediaIsolate(usbFolderPath);
            await player.open(Media(usbFolderPath));
            await player.play();
            await player.setVolume(ref.watch(volume));
            await Future.delayed(const Duration(seconds: 3));

            int videoDuration = player.state.duration.inSeconds + 1;
            ref.read(durerLectureMedia.notifier).state = videoDuration;
          } else {
            late BoxFit boxFit;
            if (ref.watch(modeAffichageMultimedia) == 'etirer') {
              boxFit = BoxFit.fill;
            } else {
              boxFit = BoxFit.contain;
            }
            ref.read(ecranAffichage.notifier).state = Image.file(
              leFichier,
              fit: boxFit,
            );
            ref.read(durerLectureMedia.notifier).state = durerImage;
          }
        } else {
          debugPrint("listMedia.is ecranAffichage");
          ref.read(ecranAffichage.notifier).state = const SizedBox();
        }
      } else {
        debugPrint("listMedia.is Empty");
        ref.read(ecranAffichage.notifier).state = const SizedBox();
      }

    }





  @override
  Widget build(BuildContext context) {



    String usbFolderPath = "${externalDir?.path}/image_fond.jpg";
    File file = File(usbFolderPath);

    debugPrint("setstate PrincipalPage");

    final Widget imageFond =
    (file.existsSync())
        ? Image.file(
      file,
      alignment: Alignment.center,
      fit: BoxFit.fill,
      width: double.maxFinite,
      height: double.maxFinite,
    )
        : const SizedBox();

    return PopScope(
      canPop: false,
      onPopInvokedWithResult : (didPop,_){

      },
      child: Scaffold(
        body: Stack(
          children: [
            (ref.watch(isImageFondEcan))
                ? imageFond
                : Container(color: ref.watch(colorFondEcran)),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child:  switch (ref.watch(isAppel)) {
                true => const ApercueModeAppel(),
                false => const ApercueModeVideo(),
              },
            ),

          ],
        ),
      ),
    );
  }
}


int attente = 0;

void startTimer(WidgetRef ref) async {
  timerHorloge = Timer.periodic(const Duration(seconds: 1), (timer) {
    String heur =
    (DateTime.now().hour < 10)
        ? "0${DateTime.now().hour}"
        : "${DateTime.now().hour}";
    String minute =
    (DateTime.now().minute < 10)
        ? "0${DateTime.now().minute}"
        : "${DateTime.now().minute}";
    String secnde =
    (DateTime.now().second < 10)
        ? "0${DateTime.now().second}"
        : "${DateTime.now().second}";

    String jour =
    (DateTime.now().day < 10)
        ? "0${DateTime.now().day}"
        : "${DateTime.now().day}";
    String mois =
    (DateTime.now().month < 10)
        ? "0${DateTime.now().month}"
        : "${DateTime.now().month}";

    if (ref.watch(isFrancais) && ref.watch(isArab)) {
      if (attente >= 5) {
        if (ref.watch(modalTextEntete) == titreFr) {
          ref.read(modalTextEntete.notifier).state = titreAr;
        } else {
          ref.read(modalTextEntete.notifier).state = titreFr;
        }
        attente = 0;
      }
      attente++;
    }

    ref.read(time.notifier).state = "$heur:$minute:$secnde";
    ref.read(date.notifier).state = "$jour/$mois/${DateTime.now().year}";
  });
}


Future<void> pauseTimer(WidgetRef ref) async {
  debugPrint("currentMedia pauseTimer");
  if (ref.watch(listMediaState).isNotEmpty) {
    String currentMedia = ref.watch(listMediaState)[ref.watch(indexSelected)];
    debugPrint("currentMedia $currentMedia");
    if (currentMedia.endsWith('.mp4') ||
        currentMedia.endsWith('.avi') ||
        currentMedia.endsWith('.wmv') ||
        currentMedia.endsWith('.flv')) {
      debugPrint("currentMedia is pauseTimer");
      player.pause();
    }
  }
}

Future<void> resumeTimer(WidgetRef ref) async {
  debugPrint("currentMedia resumeTimer");
  if (ref.watch(listMediaState).isNotEmpty) {
    String currentMedia = ref.watch(listMediaState)[ref.watch(indexSelected)];
    if (currentMedia.endsWith('.mp4') ||
        currentMedia.endsWith('.avi') ||
        currentMedia.endsWith('.wmv') ||
        currentMedia.endsWith('.flv')) {
      player.play();
    }
  }
}

void stopTimer() {
  debugPrint("currentMedia stopTimer");
  timerMedia?.cancel();
  timerMedia = null;
  elapsedSeconds = 0; // Remet à zéro
}


int elapsedSeconds = 0;
Timer? timerMedia;

/*
void openMediaIsolate(String filePath) async {
  final receivePort = ReceivePort();
  await Isolate.spawn(playMediaInIsolate, {"sendPort": receivePort.sendPort, "filePath": filePath});

  receivePort.listen((message) {
    debugPrint("Isolate: $message");
  });
}

void playMediaInIsolate(Map<String, dynamic> params) {
  SendPort sendPort = params["sendPort"];
  String filePath = params["filePath"];

  try {
    // Simule la lecture de média
    sendPort.send("Lecture du média : $filePath");
    sleep(Duration(seconds: 2)); // Simulation d'un délai de lecture
    sendPort.send("Lecture terminée");
  } catch (e) {
    sendPort.send("Erreur: $e");
  }
}

 */





/*
void socketListener(Map<String, dynamic> args)  async {

  SendPort sendPort = args["sendPort"];
  String serverIp = args["serverIp"];

  const int serverPort = 8080;
  sendPort.send("Connecté au serveur tryiing");
  try {
    sendPort.send("serverIp $serverIp");
    final socket = await Socket.connect(serverIp, serverPort);
    final buffer = StringBuffer();

    socket.listen((List<int> data) {
      final chunk = utf8.decode(data);
      buffer.write(chunk);

      if (buffer.toString().contains("\r\n\r\n")) {
        final splitData = buffer.toString().split("\r\n\r\n");
        final headerJson = splitData.first.trim();

        try {
          final header = jsonDecode(headerJson);
          debugPrint("header $header");
          sendPort.send(header); // Envoie le JSON décodé au Main Thread
        } catch (e) {
          sendPort.send("Erreur JSON : $e");
        }

        buffer.clear();
      }
    }, onDone: () {
      sendPort.send("Déconnecté du serveur");
    }, onError: (error) {
      //sendPort.send("Erreur socket : $error");
      sendPort.send("Déconnecté du serveur");
    });
  } catch (e) {
   // sendPort.send("Impossible de se connecter : $e");
    sendPort.send("Déconnecté du serveur");
  }
}
 */
