import 'dart:io';

import 'package:ecran_afficheur/variable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../modal/modal_icon.dart';
import '../modal/modal_text.dart';
import '../state_manager/state_provider_ecran.dart';

class EnteteDesign extends ConsumerStatefulWidget {
  const EnteteDesign(
      {super.key,});


  @override
  ConsumerState<EnteteDesign> createState() => _EnteteDesignState();
}

class _EnteteDesignState extends ConsumerState<EnteteDesign> {

  @override

  @override
  Widget build(BuildContext context) {

  ModalText  titre = ref.watch(modalTextEntete) ;

  ModalText  sousTitre = ref.watch(modalSousTextEntete) ;
  ModalIcon iconEntete = ref.watch(modalIconEntete) ;

    final styleTitre = TextStyle(
        fontSize: 150,
        color: titre.colorText,
        fontWeight:
            (titre.isBold) ? FontWeight.bold : FontWeight.normal,
        fontStyle:
            (titre.isItalic) ? FontStyle.italic : FontStyle.normal);

    final styleSousTitre = TextStyle(
        fontSize: 150,
        color: sousTitre.colorText,
        fontWeight:
            (sousTitre.isBold) ? FontWeight.bold : FontWeight.normal,
        fontStyle:
            (sousTitre.isItalic) ? FontStyle.italic : FontStyle.normal);


    String usbFolderPath = "${externalDir?.path}/logo_entete.jpg";
    File file =  File(usbFolderPath);

 final Widget icon = file.existsSync()
        ? Image.file(
      file,
      color: iconEntete.colorIcon,
      colorBlendMode:
      (iconEntete.colorIcon == Colors.transparent)
          ? BlendMode.dst
          : BlendMode.srcIn,
    )
        : const SizedBox();
    return Row(
      children: [
        if (iconEntete.isLeft)
          Flexible(
              flex: 1,
              child: FractionallySizedBox(
                heightFactor: iconEntete.sizeIcon,
                widthFactor: iconEntete.sizeIcon,
                child: icon,
              )),
        Expanded(
          flex: 7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              if (titre.titre != "")   Flexible(
                flex: 10,
                child: FractionallySizedBox(
                  heightFactor: 1.8,
                  child: FittedBox(
                    child: Text(
                      titre.titre,
                      style: styleTitre,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: FractionallySizedBox(
                  child: FittedBox(
                    child: Text(
                      " ",
                      style: styleTitre,
                    ),
                  ),
                ),
              ),
            if (sousTitre.titre != "") Flexible(
                flex: 7,
                child: FractionallySizedBox(
                  heightFactor: 1,
                  child: FittedBox(
                    child: Text(
                      sousTitre.titre,
                      style: styleSousTitre,
                    ),
                  ),
                ),
              ),
              const Flexible(
                  child: FractionallySizedBox(
                      heightFactor: 0.31, child: SizedBox())),
            ],
          ),
        ),
        if (iconEntete.isRight)
          Flexible(
              flex: 1,
              child: FractionallySizedBox(
                heightFactor: iconEntete.sizeIcon,
                widthFactor: iconEntete.sizeIcon,
                child: icon,
              )),
      ],
    );
  }
}
