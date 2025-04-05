import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

import '../main.dart';
import '../principal_page.dart';
import '../state_manager/state_ecran.dart';
import '../variable.dart';
import '../widget/date_time_widget.dart';
import '../widget/entete_ecran_widget.dart';
import 'list_service_display.dart';
import 'state_mode_video.dart';

class ApercueModeVideo extends ConsumerStatefulWidget {
  const ApercueModeVideo({
    super.key,
  });

  @override
  ConsumerState<ApercueModeVideo> createState() => _ApercueModeVideoState();
}

class _ApercueModeVideoState extends ConsumerState<ApercueModeVideo> {

  final GlobalKey _key = GlobalKey();

  @override
  void initState() {

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final context = _key.currentContext;

      if (context != null) {
        final RenderBox renderBox = context.findRenderObject() as RenderBox;
        final newHeight = renderBox.size.height;

       debugPrint("Nouvelle hauteur du widget : $newHeight");

        if (ref.read(hauteurBodyWidget) != newHeight) {
          ref.read(hauteurBodyWidget.notifier).state = newHeight;
        }
      }

    });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint("pauseTimer ApercueModeAppel");
    resumeTimer(ref);
  }

  @override
  Widget build(BuildContext context) {



    return Column(
      children: [
        const EnteteEcanWidget(),
        const SizedBox(height: 10,),
        const DateTimeWidget(),
        const Expanded(flex: 1, child: SizedBox()),
        Expanded(
          key: _key,
          flex: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              if ((ref.watch(positionAffichageService) == "gauche") &&
                  (ref.watch(isServiceVisible)))
                const Expanded(
                  flex: 2,
                  child: ListServiceDisplay(),
                ),
              Expanded(
                flex: 5,
                child: ref.watch(ecranAffichage),
              ),
              if ((ref.watch(positionAffichageService) == "droite") &&
                  (ref.watch(isServiceVisible)))
                const Expanded(
                  flex: 2,
                  child: ListServiceDisplay(),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
