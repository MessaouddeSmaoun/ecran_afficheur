import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:ecran_afficheur/principal_page.dart';
import 'package:ecran_afficheur/splash_screen.dart';
import 'package:ecran_afficheur/state_manager/state_ecran.dart';
import 'package:ecran_afficheur/variable.dart';
import 'package:ecran_afficheur/widget/connection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:media_kit/media_kit.dart';
import 'package:video_player_media_kit/video_player_media_kit.dart';

import 'configuration_page.dart';
import 'function/function.dart';
import 'function/function_server.dart';
import 'function/isar_function.dart';
import 'modal/modal_service.dart';
import 'mode_video/state_mode_video.dart';


Future<void> connectToServer(WidgetRef ref) async {
  try {
    ref.read(socketServer.notifier).state = await Socket.connect(
      ref.watch(addressIp),
      8080,
    );
    ref.read(isServerConnected.notifier).state = true;
    debugPrint("Connecté au serveur adress: ${ref.watch(addressIp)}");

    final buffer = StringBuffer();

    ref
        .watch(socketServer)!
        .listen(
          (List<int> data) async {
            final chunk = utf8.decode(data); // Décoder les données reçues
            buffer.write(chunk);

            if (buffer.toString().contains("\r\n\r\n")) {
              final splitData = buffer.toString().split("\r\n\r\n");
              final headerJson = splitData.first.trim();
              try {
                final header = jsonDecode(headerJson);
                debugPrint("En-tête reçu : $header");

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
              } catch (e) {
                debugPrint("Erreur dans le JSON : $e");
              }
              buffer.clear();
              debugPrint("Prêt à recevoir de nouvelles données...");
            }
          },
          onDone: () {
            debugPrint("Déconnexion du serveur");
            ref.read(isServerConnected.notifier).state = false;
            reconnect(ref);
          },
          onError: (error) {
            debugPrint("Erreur de connexion : $error");
            ref.read(isServerConnected.notifier).state = false;
            reconnect(ref);
          },
        );
    Future.delayed(const Duration(seconds: 2), (){
  setNewConnection(ref);
  });

  } on SocketException catch (e) {
    debugPrint("Impossible de se connecter : $e");
    reconnect(ref);
  }
}

void reconnect(WidgetRef ref) {
  if (!ref.watch(isServerConnected)) {
    debugPrint("Tentative de reconnexion...");
    Future.delayed(const Duration(seconds: 5), () {
      connectToServer(ref);
    });
  }
}




Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await IsarFunction().openDB();
  VideoPlayerMediaKit.ensureInitialized(
    android: true,
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/SplashScreen',
      routes: {
        '/SplashScreen': (context) => const SplashScreen(),
        '/PrincipalPage': (context) => const PrincipalPage(),
        '/ConfigurationPage': (context) => const ConfigurationPage(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}









/*




class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {


  void setInitiation2() async {
    if (ref.watch(isConfig)) {
      initTts();
    }

    Future.delayed(const Duration(seconds: 10), () {

        body = const SizedBox();
        isDisplay = true;
        if (ref.watch(isConfig)) {
       //   startTimer();
       //   startTimerMedia();
        }

    });

  void setInitiation() async {

    await initVariable(ref);
    miseAjour = await IsarFunction().getListUpdate(ref);
    reconnect(ref);
    Future.delayed(const Duration(seconds: 3), () {
      setInitiation2();
    });
  }



  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      setInitiation();
    });
    WakelockPlus.enable();
    createUsbDirectory();

    MediaKit.ensureInitialized();
    playerSound = pl.AudioPlayer();
    //  player = Player();
  //  controller = VideoController(player);
  }

  void initTts() async {
    flutterTts = FlutterTts();
    flutterTts.getVoices.then((data) {
      List<Map> voices = List<Map>.from(data);
      List<Map> frenchVoices =
          voices.where((v) => v["locale"].toString().startsWith("fr")).toList();

    });

    List<dynamic> languages = await flutterTts.getLanguages;

     langueArabDisp = await flutterTts.isLanguageAvailable("ar-DZ");
     langueFrancaisDisp = await flutterTts.isLanguageAvailable("fr-FR");
    debugPrint("langueFrancaisDisp 0 $langueFrancaisDisp");
    debugPrint("langueArabDisp 0 ${ref.watch(isFrancais)}");


    await flutterTts.setSpeechRate(0.45);
    await flutterTts.setVolume(1.0);
    await flutterTts.setPitch(1);
    await flutterTts.awaitSpeakCompletion(true);
  }

  int elapsedSeconds = 0;
  Timer? _timerMedia;


  void startTimerMedia() {
    _timerMedia = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!ref.watch(isAppel)) {
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
      }
    });
  }



  Future<void> playNextMedia() async {
    debugPrint("currentMedia sssssssssss");
    if (ref.watch(listMediaState).isNotEmpty) {
      String currentMedia = ref.watch(listMediaState)[ref.watch(indexSelected)];

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
               // Video(controller: controller),
                Container(color: Colors.transparent),
              ],
            );

            openMediaIsolate(usbFolderPath);
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
      debugPrint("currentMedia $currentMedia");
    }
  }

  void stopTimer() {
    debugPrint("currentMedia stopTimer");
    _timerMedia?.cancel();
    _timerMedia = null;
    elapsedSeconds = 0; // Remet à zéro
  }

  Timer? _timer;
  int attente = 0;

  void startTimer() async {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
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
        if (attente >= delayChange) {
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





  @override
  Widget build(BuildContext context) {
    String usbFolderPath = "${externalDir?.path}/image_fond.jpg";
    File file = File(usbFolderPath);

    debugPrint("setstate main");

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
      onPopInvokedWithResult: (didPop, _) {

      },
      child: Scaffold(
          body: SizedBox()
        /*
          Stack(
          children: [
            (ref.watch(isImageFondEcan))
                ? imageFond
                : Container(color: ref.watch(colorFondEcran)),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child:  (isDisplay)?switch (ref.watch(isAppel)) {
                true => const ApercueModeAppel(),
                false => const ApercueModeVideo(),
              }:SizedBox(),
            ),

            ref.watch(isServerConnected)
                ? Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                    ),
                  ),
                )
                : Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                    ),
                  ),
                ),


          ],
        ),

           */
      ),
    );
  }
  */

/*
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
    //  player.pause();
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
   //   player.play();
    }
  }
}

 */


