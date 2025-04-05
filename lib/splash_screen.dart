import 'dart:async';

import 'package:ecran_afficheur/principal_page.dart';
import 'package:ecran_afficheur/variable.dart';
import 'package:ecran_afficheur/widget/connection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:audioplayers/audioplayers.dart' as pl;
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import 'function/function.dart';
import 'function/isar_function.dart';
import 'main.dart';


    class SplashScreen extends ConsumerStatefulWidget {
    const SplashScreen({super.key});

    @override
    ConsumerState<SplashScreen> createState() => _SplashScreenState();
    }

    class _SplashScreenState extends ConsumerState<SplashScreen> {

    @override
    void initState() {
      Future.delayed(Duration.zero, () async {
        createUsbDirectory();
        miseAjour = await IsarFunction().getListUpdate(ref);
      });
      Future.delayed(const Duration(seconds: 7), () async {
        reconnect(ref);

        if (context.mounted) {
          if (!ref.watch(isConfig)) {
            Navigator.pushNamed(context, '/ConfigurationPage');
          } else {
            startTimer(ref);
            Navigator.pushNamed(context, '/PrincipalPage');
          }
        }

      });

      WakelockPlus.enable();

      Future.delayed(const Duration(seconds: 4), () async {
          playerSound = pl.AudioPlayer();
          player = Player();
          controller = VideoController(player);
      });

    super.initState();
    }














    @override
    Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child:  Container(
          width: double.infinity,
          color: Colors.white,
          child: const Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 20),
              Text("patienter"),
            ],
          ),
        )
      ),
    );
  }
}


