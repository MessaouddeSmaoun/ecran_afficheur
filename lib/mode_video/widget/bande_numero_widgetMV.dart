import 'package:ecran_afficheur/mode_appel/state_mode_appel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state_mode_video.dart';

class BandeNumeroWidgetMV extends ConsumerWidget {
  const BandeNumeroWidgetMV({
    super.key,
    required this.textStyle,
  });

  final TextStyle textStyle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    TextStyle textStyle = TextStyle(
      color: ref.watch(modalTextService).colorText,
      fontSize: 200,
      fontWeight: (ref.watch(modalTextService).isBold)?FontWeight.bold:FontWeight.normal,
      fontFamily: (ref.watch(isFrench))?ref.watch(modalTextService).fontFr:ref.watch(modalTextService).fontAr,
    );

    return ( ref.watch(isBandeVisibleMV))?
    Expanded(flex: 10, child: Container(color: ref.watch(coleurServiceMV),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(),
          Flexible(
            child: FractionallySizedBox(
                widthFactor: 0.7,
                child: FittedBox(
                    child: Text(
                      "${(ref.watch(isFrench)?"${ref.watch(nomNumero).nomFr} : ":"")} ${ref.watch(textNumeroNumero).titre} ${(ref.watch(isFrench)?"":": ${ref.watch(nomNumero).nomAr}")}",
                      style: textStyle,
                    ))),
          ),


          Flexible(
            child: FractionallySizedBox(
                widthFactor: 0.7,
                child: FittedBox(
                    child: Text(
                      "${(ref.watch(isFrench)?"${ref.watch(nomGuichet).nomFr} : ":"")} ${ref.watch(textGuichetNumero).titre} ${(ref.watch(isFrench)?"":": ${ref.watch(nomGuichet).nomAr}")}",
                      style: textStyle,
                    ))),
          ),

          SizedBox(),
        ],),
    )):SizedBox();
  }
}