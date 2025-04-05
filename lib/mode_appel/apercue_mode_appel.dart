
import 'package:ecran_afficheur/mode_appel/state_mode_appel.dart';
import 'package:ecran_afficheur/mode_appel/template_numero.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../main.dart';
import '../modal/modal_boite.dart';
import '../modal/modal_text.dart';
import '../principal_page.dart';
import '../widget/date_time_widget.dart';
import '../widget/entete_ecran_widget.dart';

class ApercueModeAppel extends ConsumerStatefulWidget {
  const ApercueModeAppel(
      {super.key});


  @override
  ConsumerState<ApercueModeAppel> createState() => _ApercueModeAppelState();
}

class _ApercueModeAppelState extends ConsumerState<ApercueModeAppel> {


@override
void didChangeDependencies() {
  super.didChangeDependencies();
  debugPrint("pauseTimer ApercueModeAppel");
  pauseTimer(ref);
}

  @override
  Widget build(BuildContext context) {
    ModalText titreNmero = ref.read(textNumeroTitre.notifier).state;
    ModalText numeroNmero = ref.read(textNumeroNumero.notifier).state;
    ModalText titreGuichet = ref.read(textGuichetTitre.notifier).state;
    ModalText numeroGuichet = ref.read(textGuichetNumero.notifier).state;

    ModalBoite boiteTitreNumer = ref.watch(boiteNumeroTitre);
    ModalBoite boiteNumeroNumer = ref.read(boiteNumeroNumero.notifier).state;
    ModalBoite boiteTitreGuichet = ref.read(boiteGuichetTitre.notifier).state;
    ModalBoite boiteGuichetNumer = ref.read(boiteGuichetNumero.notifier).state;

    return  Column(
        children: [
          const EnteteEcanWidget(),
          const SizedBox(height: 10,),
          const DateTimeWidget(),
          const Expanded(
              flex: 1,
              child: SizedBox()),
          Expanded(
            flex: 80,
            child: Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                      child: FractionallySizedBox(
                          heightFactor: 1,
                          widthFactor: 0.9,
                          child: TemplateNumero(
                            titre: titreNmero,
                            numero: numeroNmero,
                            boiteTitre: boiteTitreNumer,
                            boiteNumero: boiteNumeroNumer,
                          ))),
                  Flexible(
                      child: FractionallySizedBox(
                          heightFactor: 0.7,
                          widthFactor: 0.65,
                          child: TemplateNumero(
                            titre: titreGuichet,
                            numero: numeroGuichet,
                            boiteTitre: boiteTitreGuichet,
                            boiteNumero: boiteGuichetNumer,
                          ))),
                ],
              ),
            ),
          ),
        ],
    );
  }
}
