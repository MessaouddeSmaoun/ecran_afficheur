
import 'package:ecran_afficheur/mode_appel/page_mode/widget/bande_service_widget_ma.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../modal/modal_boite.dart';
import '../../modal/modal_text.dart';
import '../../state_manager/state_ecran.dart';
import '../../state_manager/state_provider_ecran.dart';
import '../state_mode_appel.dart';
import 'widget/list_appel_widget.dart';

class ApercueModeAppel2 extends ConsumerStatefulWidget {
  const ApercueModeAppel2(
      {super.key,});


  @override
  ConsumerState<ApercueModeAppel2> createState() => _ApercueModeAppel2State();
}

class _ApercueModeAppel2State extends ConsumerState<ApercueModeAppel2> {


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
        alignment: Alignment.center,
        children: [
         Container(
            color: ref.watch(colorFondEcran),
          ),

          Row(
            children: [
              if(ref.watch(positionAffichageServiceMA) == "droite")  ListAppelWidget(isFrench:  ref.watch(isFrench),style:textStyle),
              Expanded(
                flex: 15,
                child: Container(
                  color: !ref.watch(isClignot)?boiteNumeroNumer.couleurFond:boiteNumeroNumer.couleurClignotment,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 80,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [

                            Expanded(
                              flex: 3,
                              child: Container(
                                width: double.maxFinite,
                                color: !ref.watch(isClignot)?boiteTitreNumer.couleurFond:boiteTitreNumer.couleurClignotment,
                                child: FittedBox(
                                    child: Text(titreNmero.titre,style: TextStyle(
                                        fontFamily: (ref.watch(isFrench))?titreNmero.fontFr:titreNmero.fontAr,
                                        fontSize: 200,
                                        color: titreNmero.colorText,
                                        fontWeight: (titreNmero.isBold)?FontWeight.bold:FontWeight.normal
                                    ),)),
                              ),
                            ),
                            Expanded(
                              flex: 16,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: FittedBox(
                                      child: Text(numeroNmero.titre,style:  TextStyle(
                                          fontFamily: ref.watch(fontNumeroSelected),
                                          fontSize: 200,
                                          color: numeroNmero.colorText,
                                          fontWeight: (numeroNmero.isBold)?FontWeight.bold:FontWeight.normal
                                      ),)),
                                  ),
                                ],
                              ),
                            ),

                            Expanded(
                              flex: 7,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: ClipPath(
                                        clipper: HalfEllipseClipper(),
                                        child: Container(
                                          color: !ref.watch(isClignot)?boiteTitreGuichet.couleurFond:boiteTitreGuichet.couleurClignotment,
                                          child: FittedBox(
                                              child: Row(
                                                children: [
                                                  Text("${titreGuichet.titre}:",style: TextStyle(
                                                    fontFamily: (ref.watch(isFrench))?titreNmero.fontFr:titreNmero.fontAr,
                                                    fontSize: 200,
                                                    color: titreGuichet.colorText,
                                                    fontWeight: (titreGuichet.isBold)
                                                        ? FontWeight.bold
                                                        : FontWeight.normal,
                                                  ),),
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          color: !ref.watch(isClignot)?boiteGuichetNumer.couleurFond:boiteGuichetNumer.couleurClignotment,
                                                          shape: BoxShape.circle
                                                      ),
                                                      child: Text(" ${numeroGuichet.titre} ",style: TextStyle(
                                                          fontFamily: ref.watch(fontNumeroSelected),
                                                          fontSize: 200,
                                                          color: numeroGuichet.colorText,
                                                          fontWeight: (numeroGuichet.isBold)?FontWeight.bold:FontWeight.normal,
                                                      ),),
                                                    ),
                                                  ),
                                                ],
                                              )),
                                        )),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                      BandeServiceWidgetMa(),
                    ],
                  ),
                ),
              ),
              if(ref.watch(positionAffichageServiceMA) == "gauche")  ListAppelWidget(isFrench: true,style:textStyle),
            ],
          ),

        ],
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width * 3/ 4, size.height);

    path.lineTo(0, size.height);
    path.close(); // ferme triangle
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}


class HalfEllipseClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Demi-ellipse supérieure
    path.moveTo(0, size.height - size.height/3);
    path.quadraticBezierTo(
      size.width / 2, - size.height/1,
      size.width, size.height - size.height/3);
    path.lineTo(size.width, size.height);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();


    /*
     path.moveTo(0, size.height - size.height/3);
    path.quadraticBezierTo(
      size.width / 2, - size.height/2,
      size.width, size.height - size.height/3);
    path.lineTo(size.width, size.height);
    path.quadraticBezierTo(
        size.width / 2, - size.height/2,
        size.width, size.height - size.height/3);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
     */

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

/*
  path.quadraticBezierTo(
      size.width / 2, - size.height/2,
      size.width, size.height/2,
    );
 */