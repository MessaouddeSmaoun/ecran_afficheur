import 'package:ecran_afficheur/mode_video/state_mode_video.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../mode_appel/state_mode_appel.dart';
import '../../state_manager/state_ecran.dart';
import '../../state_manager/state_provider_ecran.dart';
import '../../variable.dart';
import '../../widget/connection.dart';
import '../../widget/widget_re_connection.dart';

class ListServiceDisplay extends ConsumerWidget {
  const ListServiceDisplay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextStyle textStyle = TextStyle(
      fontFamily: (ref.watch(isFrench))?ref.watch(modalTextService).fontFr:ref.watch(modalTextService).fontAr,
      fontSize: 200,
      fontWeight: (ref.watch(modalTextService).isBold)?FontWeight.bold:FontWeight.normal,
      color: ref.watch(modalTextService).colorText,
    );
    double widgetHeight = ref.watch(hauteurBodyWidget);
    late double spaceHight;

    debugPrint(
      "listServiceModeVideo ${ref.read(listServiceModeVideo).length}",
    );

    switch (ref.watch(listServiceModeVideo).length) {
      case <= 6:
        spaceHight = widgetHeight / 8;
      case (>= 7):
        spaceHight = widgetHeight / 7;
    }

    late String titreService;
    late String titreNumero;
    late String titreReste;
    late String titreGuichet;

    if (ref.watch(modalTextEntete) == titreFr) {
      titreService = "Services";
      titreNumero = ref.watch(nomNumero).nomFr.substring(0,4);
      titreReste = "Reste";
      titreGuichet =  ref.watch(nomGuichet).nomFr;
    } else
    {
      titreService = "خدمات";
      titreNumero = ref.watch(nomNumero).nomAr;
      titreReste = "باقي";
      titreGuichet =  ref.watch(nomGuichet).nomAr;
    }
    Color fondGuichet = Color.alphaBlend(ref.watch(coleurNumeroMV).withAlpha(200), Colors.black);

    return Stack(
      children: [
        Column(
          children: [

            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.1,
                child: Container(
                  height: double.maxFinite,
                  color: ref.watch(coleurNumeroMV),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: ClipPath(
                          clipper: TriangleClipper(),
                          child: Container(
                            color: ref.watch(coleurServiceMV),
                            child: FractionallySizedBox(
                              widthFactor: 0.9,
                              child: FittedBox(
                                child: Text(titreService, style: textStyle),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 2,
                        child: FractionallySizedBox(
                          widthFactor: 0.9,
                          child: FittedBox(
                            child: Text(titreNumero, style: textStyle),
                          ),
                        ),
                      ),

                      if (ref.watch(isGuichet))   Expanded(
                        flex: 3,
                        child: Container(
                          height: double.maxFinite,
                          color: fondGuichet,
                          child: FractionallySizedBox(
                            widthFactor: 0.9,
                            child: FittedBox(
                              child: Text(titreGuichet, style: textStyle),
                            ),
                          ),
                        ),
                      ),
                      if (ref.watch(isReste))
                        Expanded(
                          flex: 2,
                          child: FractionallySizedBox(
                            widthFactor: 0.9,
                            child: FittedBox(
                              child: Text(titreReste, style: textStyle),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            (ref.watch(listServiceModeVideo).isNotEmpty)
                ? GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisExtent: spaceHight / 2,
                  ),
                  scrollDirection: Axis.vertical,
                  itemCount: ref.watch(listServiceModeVideo).length,
                  itemBuilder: (context, index) {
                    return FractionallySizedBox(
                      heightFactor: 0.9,
                      child: LineRawService(
                        textStyle: textStyle,
                        service:
                            (ref.watch(modalTextEntete) == titreFr)
                                ? ref.watch(listServiceModeVideo)[index].serviceFr
                                : ref.watch(listServiceModeVideo)[index].serviceAr,
                        numeroAppel: ref.watch(listServiceModeVideo)[index].appeler,
                        numberReste: ref.watch(listServiceModeVideo)[index].reste,
                        numberGuichet: ref.watch(listServiceModeVideo)[index].guichet,
                      ),
                    );
                  },
                )
                : const Expanded(child: Center(child: Text("pas de service"))),
          ],
        ),
        !ref.watch(isServerConnected)
            ? WidgetReConnection(
          ref: ref,
        )
            : const SizedBox(),
      ],
    );
  }
}

class LineRawService extends ConsumerWidget {
  const LineRawService({
    super.key,
    required this.textStyle,
    required this.service,
    required this.numeroAppel,
    required this.numberReste,
    required this.numberGuichet,
  });

  final TextStyle textStyle;
  final String service;
  final String numeroAppel;
  final String numberReste;
  final String numberGuichet;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    Color fondGuichet = Color.alphaBlend(ref.watch(coleurNumeroMV).withAlpha(200), Colors.black);


    return Container(
      color: ref.watch(coleurNumeroMV),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: ClipPath(
              clipper: TriangleClipper(), // celui avec le -size.width
              child: Container(
                height: double.maxFinite,
                color: ref.watch(coleurServiceMV),
                child: FractionallySizedBox(
                  widthFactor: 0.9,
                  child: FittedBox(child: Text("$service ", style: textStyle)),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: ClipPath(
              clipper: TriangleClipper(), // celui avec le -size.width
              child: SizedBox(
                height: double.maxFinite,
                child: FractionallySizedBox(
                  widthFactor: 0.9,
                  child: FittedBox(child: Text(numeroAppel, style: textStyle)),
                ),
              ),
            ),
          ),
          if (ref.watch(isGuichet))  Expanded(
            flex: 3,
            child: Container(
              color: fondGuichet,
              height: double.maxFinite,
              child: FractionallySizedBox(
                widthFactor: 0.9,
                child: FittedBox(child: Text(numberGuichet, style: textStyle)),
              ),
            ),
          ),
          if (ref.watch(isReste))
            Expanded(
              flex: 2,
              child: FractionallySizedBox(
                widthFactor: 0.9,
                child: FittedBox(child: Text(numberReste, style: textStyle)),
              ),
            ),
        ],
      ),
    );

    /*
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(color: Colors.black, width: 1),
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
                decoration: const BoxDecoration(
                    border: Border(
                  left: BorderSide(color: Colors.black, width: 1),
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
                  decoration: const BoxDecoration(
                      border: Border(
                    left: BorderSide(color: Colors.black, width: 1),
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
  */
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width * 6 / 7, size.height);

    path.lineTo(0, size.height);
    path.close(); // ferme triangle
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
