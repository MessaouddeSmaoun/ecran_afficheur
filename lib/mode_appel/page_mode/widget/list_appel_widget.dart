import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../mode_video/state_mode_video.dart';
import '../../state_mode_appel.dart';

class ListAppelWidget extends ConsumerStatefulWidget {
  const ListAppelWidget({super.key,required this.isFrench, required TextStyle style,
  });

  final bool isFrench;

  @override
  ConsumerState<ListAppelWidget> createState() => _ListAppelWidgetState();
}

class _ListAppelWidgetState extends ConsumerState<ListAppelWidget> {
  @override
  Widget build(BuildContext context) {

    double widgetHeight = ref.watch(hauteurBodyWidget);
    double spaceHight = widgetHeight / (5);
    TextStyle textStyle = TextStyle(
        fontSize: 200,
        color: ref.watch(textListAppelMA).colorText,
        fontFamily: (widget.isFrench)?ref.watch(textListAppelMA).fontFr:ref.watch(textListAppelMA).fontAr,
        fontWeight: (ref.watch(textListAppelMA).isBold)?FontWeight.bold:FontWeight.normal
    );


    String guichet = (widget.isFrench)?ref.watch(nomGuichet).nomFr:ref.watch(nomGuichet).nomAr;
    String numero = (widget.isFrench)? ref.watch(nomNumero).nomFr:ref.watch(nomNumero).nomAr;

    if ((ref.watch(isListGuchetVisible))) {
      return Expanded(
        flex: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,

          children: [
             Row(
               mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                    flex: 5,
                    child: Container(
                      height: spaceHight,
                      color: ref.watch(coleurGuichetMA),
                      child: FractionallySizedBox(
                          widthFactor: 0.9,
                          child: FittedBox(
                              child: Text(guichet,style: textStyle,
                              ))),
                    )),


                Expanded(
                    flex: 2,
                    child: Container(
                      height: spaceHight,
                      color: ref.watch(coleurNumeroMA),
                      child: FractionallySizedBox(
                          widthFactor: 0.9,
                          child: FittedBox(
                              child: Text(numero,style: textStyle,
                              ))),
                    )),

              ],
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,mainAxisExtent: spaceHight / 2),
                  scrollDirection: Axis.vertical,
                  itemCount: 18,
                  itemBuilder: (context, index) {




                    return FractionallySizedBox(
                      child: LineRawService2(
                        textStyle:textStyle,
                        guichet: "$guichet $index",
                        numeroAppel: "A123 ", isFrench: widget.isFrench,



                      ),
                    );
                  }),
            ),
          ],
        ),
      );
    } else {
      return SizedBox();
    }
  }
}




class LineRawService2 extends ConsumerWidget {
  const LineRawService2(
      {super.key,
        required this.isFrench, required this.textStyle,
        required this.guichet,
        required this.numeroAppel,});

  final bool isFrench; final TextStyle textStyle;
  final String guichet;
  final String numeroAppel;


  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Row(
      children: [
        Expanded(
            flex: 5,
            child: Container(
              height: double.maxFinite,
              color: ref.watch(coleurGuichetMA),
              child: FractionallySizedBox(
                  widthFactor: 0.9,
                  child: FittedBox(
                      child: Text(
                        "$guichet ",
                        style: textStyle,
                      ))),
            )),


        Expanded(
            flex: 2,
            child: Container(
              height: double.maxFinite,
              color: ref.watch(coleurNumeroMA),
                child:FractionallySizedBox(
                    widthFactor: 0.9,
                    child: FittedBox(
                        child: Text(
                          numeroAppel,
                            style: textStyle,
                        ))))),

      ],
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
