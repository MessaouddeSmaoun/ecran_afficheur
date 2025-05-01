import 'package:ecran_afficheur/state_manager/state_ecran.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../modal/modal_boite.dart';
import '../../../../../modal/modal_text.dart';
import '../../state_mode_appel.dart';

class BandeServiceWidgetMa extends ConsumerWidget {
  const BandeServiceWidgetMa({
    super.key,

  });


  @override
  Widget build(BuildContext context, WidgetRef ref) {

    ModalBoite boiteBandeService = ref.read(boiteServiceBandeMA.notifier).state;
    String service = (ref.read(isFrench))? ref.watch(modalServiceAppel).serviceFr:ref.watch(modalServiceAppel).serviceAr;
    ModalText bandeService = ref.read(textServiceBandeMA.notifier).state;


    return (ref.watch(visibleTextServiceBandeMA))? Expanded(
      flex: 8,
      child: Container(
        width: double.maxFinite,
        color:  (ref.watch(isClignot))?boiteBandeService.couleurClignotment:boiteBandeService.couleurFond,
        child: FittedBox(
            child: Text(service,style: TextStyle(
                fontFamily: (ref.read(isFrench))?bandeService.fontFr:bandeService.fontAr,
                fontSize: 200,
                color:bandeService.colorText,
                fontWeight: (bandeService.isBold)?FontWeight.bold:FontWeight.normal
            ),)),
      ),
    ):const SizedBox();
  }
}
