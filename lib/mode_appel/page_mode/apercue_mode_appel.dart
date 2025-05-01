import 'dart:io';

import 'package:ecran_afficheur/mode_appel/page_mode/widget/bande_service_widget_ma.dart';
import 'package:ecran_afficheur/mode_appel/page_mode/widget/list_appel_widget.dart';
import 'package:ecran_afficheur/mode_appel/page_mode/widget/template_numero.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../modal/modal_boite.dart';
import '../../modal/modal_text.dart';
import '../../state_manager/state_provider_ecran.dart';
import '../state_mode_appel.dart';

class ApercueModeAppel extends ConsumerStatefulWidget {
  const ApercueModeAppel(
      {super.key,});


  @override
  ConsumerState<ApercueModeAppel> createState() => _ApercueModeAppelState();
}

class _ApercueModeAppelState extends ConsumerState<ApercueModeAppel> {


  @override
  Widget build(BuildContext context) {

    TextStyle textStyle = TextStyle(
        fontSize: 120,
        color: ref.read(textListAppelMA.notifier).state.colorText,
        fontWeight: (ref.read(textListAppelMA.notifier).state.isBold)
            ? FontWeight.bold
            : FontWeight.normal);

    ModalText titreNmero = ref.read(textNumeroTitre.notifier).state;
    ModalText numeroNmero = ref.read(textNumeroNumero.notifier).state;
    ModalText titreGuichet = ref.read(textGuichetTitre.notifier).state;
    ModalText numeroGuichet = ref.read(textGuichetNumero.notifier).state;

    ModalBoite boiteTitreNumer = ref.watch(boiteNumeroTitre);
    ModalBoite boiteNumeroNumer = ref.read(boiteNumeroNumero.notifier).state;
    ModalBoite boiteTitreGuichet = ref.read(boiteGuichetTitre.notifier).state;
    ModalBoite boiteGuichetNumer = ref.read(boiteGuichetNumero.notifier).state;


    titreGuichet.titre = ( ref.watch(isFrench))? ref.watch(nomGuichet).nomFr:ref.watch(nomGuichet).nomAr;
    titreNmero.titre = ( ref.watch(isFrench))? ref.watch(nomNumero).nomFr:ref.watch(nomNumero).nomAr;

    return Scaffold(
      body: Stack(
        children: [
          (ref.watch(isImageFondEcan))
              ? (ref.watch(pathImageFondEcan) != "")
                  ? Image.file(
                      File(ref.watch(pathImageFondEcan)),
                      alignment: Alignment.center,
                      fit: BoxFit.cover,
                      width: double.maxFinite,
                    )
                  : const SizedBox()
              : Container(
                  color: ref.watch(colorFondEcran),
                ),
          Row(
            children: [
              if(ref.watch(positionAffichageServiceMA) == "droite")  ListAppelWidget(isFrench:  ref.watch(isFrench),style:textStyle),
              Expanded(
                flex: 15,
                child: Column(
                  children: [

                    Expanded(
                      flex: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                              child: FractionallySizedBox(
                                  heightFactor: 1.2,
                                  widthFactor: 0.9,
                                  child: TemplateNumero(
                                    titre: titreNmero,
                                    numero: numeroNmero,
                                    boiteTitre: boiteTitreNumer,
                                    boiteNumero: boiteNumeroNumer, isFrench: ref.watch(isFrench),
                                  ))),

                          Flexible(
                              child: FractionallySizedBox(
                                  heightFactor: 0.9,
                                  widthFactor: 0.65,
                                  child: TemplateNumero(
                                    titre: titreGuichet,
                                    numero: numeroGuichet,
                                    boiteTitre: boiteTitreGuichet,
                                    boiteNumero: boiteGuichetNumer, isFrench:  ref.watch(isFrench),
                                  ))),
                        ],
                      ),
                    ),


                      BandeServiceWidgetMa(),
                  ],
                ),
              ),
              if(ref.watch(positionAffichageServiceMA) == "gauche")  ListAppelWidget(isFrench:  ref.watch(isFrench),style:textStyle),
            ],
          ),
        ],
      ),
    );
  }
}
