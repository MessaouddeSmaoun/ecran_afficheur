import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../modal/modal_text.dart';
import '../modal/modal_boite.dart';
import '../state_manager/state_ecran.dart';

class TemplateNumero extends ConsumerWidget {
  const TemplateNumero({super.key,
  required this.titre,
  required this.numero,
  required this.boiteTitre,
  required this.boiteNumero});

  final ModalText titre;
  final ModalText numero;
  final ModalBoite boiteTitre;
  final ModalBoite boiteNumero;


  @override
  Widget build(BuildContext context, WidgetRef ref) {


    final styleTitre = TextStyle(
        fontSize: 150,
        color: (titre.colorText),
        fontWeight:
        (titre.isBold) ? FontWeight.bold : FontWeight.normal,
        fontStyle:
        (titre.isItalic) ? FontStyle.italic : FontStyle.normal);

    final styleSousTitre = TextStyle(
        fontSize: 150,
        color: (numero.colorText),
        fontWeight:
        (numero.isBold) ? FontWeight.bold : FontWeight.normal,
        fontStyle:
        (numero.isItalic) ? FontStyle.italic : FontStyle.normal);


    return  Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 0.35,
            child: Container(
              color: !ref.watch(isClignot)?boiteTitre.couleurFond:boiteTitre.couleurClignotment,
              child: FractionallySizedBox(
                heightFactor: 0.8,
                child: FittedBox(
                  child: Text(titre.titre,style: styleTitre,),
                ),
              ),
            ),
          ),
        ),
        Flexible(
          child: FractionallySizedBox(

            widthFactor: 0.8,
            heightFactor: 1,
            child: Container(
              color: !ref.watch(isClignot)?boiteNumero.couleurFond:boiteNumero.couleurClignotment,
              child: FractionallySizedBox(
                heightFactor: 1,
                widthFactor: 0.9,
                child: FittedBox(
                  child: Text(numero.titre,style: styleSousTitre,),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
