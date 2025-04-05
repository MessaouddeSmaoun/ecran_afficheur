import 'package:ecran_afficheur/mode_video/state_mode_video.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state_manager/state_ecran.dart';
import '../state_manager/state_provider_ecran.dart';
import '../variable.dart';
import '../widget/connection.dart';
import '../widget/widget_re_connection.dart';

class ListServiceDisplay extends ConsumerWidget {
  const ListServiceDisplay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextStyle textStyle =
         TextStyle(fontSize: 120, fontWeight: FontWeight.bold,color:ref.watch(modalTextService).colorText);
    double widgetHeight = ref.watch(hauteurBodyWidget);
    late double spaceHight;

    debugPrint("(listServiceModeVideo ${ref.read(listServiceModeVideo).length}");

    switch ( ref.watch(listServiceModeVideo).length) {
      case <=6 :spaceHight = widgetHeight/4;
      case (>=7) :spaceHight = widgetHeight/7;
    }



   late String titreService;
    late String titreNumero;
    late String titreReste;

    if (ref.watch(modalTextEntete) == titreFr){
    titreService = "Services";
    titreNumero = "numero";
    titreReste = "Reste";
    } else {
    titreService = "خدمات";
    titreNumero = "رقم";
    titreReste = "باقي";
    }


    return  Stack(
      children: [
        Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(border: Border(
                      bottom: BorderSide(  color: Colors.black,width: 1),
                    )),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 5,
                            child: FractionallySizedBox(
                                widthFactor: 0.9,
                                child: FittedBox(
                                    child: Text(
                                      titreService,
                                  style: textStyle,
                                )))),
                        Expanded(
                            flex: 2,
                            child: Container(
                              decoration: const BoxDecoration(border: Border(
                                left: BorderSide(  color: Colors.black,width: 1),
                              )),
                              child: FractionallySizedBox(
                                  widthFactor: 0.9,
                                  child: FittedBox(
                                      child: Text(
                                        titreNumero,
                                    style: textStyle,
                                  ))),
                            )),
                        if (ref.watch(isReste))
                          Expanded(
                              flex: 2,
                              child: Container(
                                decoration: const BoxDecoration(border: Border(
                                  left: BorderSide(  color: Colors.black,width: 1),
                                )),
                                child: FractionallySizedBox(
                                    widthFactor: 0.9,
                                    child: FittedBox(
                                        child: Text(
                                          titreReste,
                                      style: textStyle,
                                    ))),
                              )),
                      ],
                    ),
                  ),
                  (ref.watch(listServiceModeVideo).isNotEmpty)
                      ?    GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1, mainAxisExtent: spaceHight/2),
                      scrollDirection: Axis.vertical,
                      itemCount: ref.watch(listServiceModeVideo).length,
                      itemBuilder: (context, index) {
                        return LineRawService(
                          textStyle:textStyle,
                          service:
                          (ref.watch(modalTextEntete) == titreFr)?ref.watch(listServiceModeVideo)[index].titreFrAff:
                          ref.watch(listServiceModeVideo)[index].titreArAff,
                          numeroAppel:
                          ref.watch(listServiceModeVideo)[index].appeler,
                          numberReste:
                          ref.watch(listServiceModeVideo)[index].reste,
                          isResteVisible: ref.watch(isReste),
                        );
                      }) : const Expanded(
                        child: Center(
                        child: Text(
                          "pas de service selectionner",
                        )),
                      ),
                ],
              ),
     if (!ref.watch(isServerConnected))
       WidgetReConnection(
         ref: ref,
       )
      ],
    );
  }
}

class LineRawService extends StatelessWidget {
  const LineRawService(
      {super.key,
        required this.textStyle,
        required this.service,
      required this.numeroAppel,
      required this.numberReste,
      required this.isResteVisible});

  final TextStyle textStyle;
  final String service;
  final String numeroAppel;
  final String numberReste;
  final bool isResteVisible;

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: const BoxDecoration(border: Border(
        bottom: BorderSide(  color: Colors.black,width: 1),
      )),
      child: Row(
        children: [
          Expanded(
              flex: 5,
              child: FractionallySizedBox(
                  widthFactor: 0.9,
                  child: FittedBox(
                      child: Text(
                    service,
                    style: textStyle,
                  )))),
          Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(border: Border(
                  left: BorderSide(  color: Colors.black,width: 1),
                )),
                child: FractionallySizedBox(
                    widthFactor: 0.9,
                    child: FittedBox(
                        child: Text(
                      numeroAppel,
                      style: textStyle,
                    ))),
              )),
          if (isResteVisible)
            Expanded(
                flex: 2,
                child: Container(
                  decoration: const BoxDecoration(border: Border(
                    left: BorderSide(  color: Colors.black,width: 1),
                  )),
                  child: FractionallySizedBox(
                      widthFactor: 0.9,
                      child: FittedBox(
                          child: Text(
                        numberReste,
                        style: textStyle,
                      ))),
                )),
        ],
      ),
    );
  }
}
