import 'package:flutter/material.dart';

import '../../../../modal/modal_text.dart';
import '../../../modal/modal_boite.dart';

class TemplateNumero extends StatefulWidget {
  const TemplateNumero({super.key,
  required this.titre,
  required this.numero,
  required this.boiteTitre,
  required this.boiteNumero,
  required this.isFrench,});

  final ModalText titre;
  final ModalText numero;
  final ModalBoite boiteTitre;
  final ModalBoite boiteNumero;
  final bool isFrench;

  @override
  State<TemplateNumero> createState() => _TemplateNumeroState();
}

class _TemplateNumeroState extends State<TemplateNumero> {
  Color culeurfond = Colors.red;

  @override
  Widget build(BuildContext context) {

    final styleTitre = TextStyle(
      fontFamily: (widget.isFrench)?widget.titre.fontFr:widget.titre.fontAr,
        fontSize: 150,
        color: widget.titre.colorText,
        fontWeight:
        (widget.titre.isBold) ? FontWeight.bold : FontWeight.normal,);

    final styleNumero =  TextStyle(
      fontFamily: 'Arimi',
      fontSize: 200,
      color:widget.numero.colorText,
      fontWeight: (widget.numero.isBold) ? FontWeight.bold : FontWeight.normal,);





    final titre = widget.titre.titre;
    final numero = widget.numero.titre;


    return  Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Flexible(
          flex: 6,
          child: FractionallySizedBox(
            widthFactor: 1.2,
            heightFactor: 0.3,
            child: LayoutBuilder(
              builder: (context, constraints) {
                // Taille du container
                final width = constraints.maxWidth;
                final height = constraints.maxHeight;

                // Rayon basé sur la plus petite dimension (par ex. 10%)
                final radius = (width < height ? width : height) * 0.3;

                return Container(
                  decoration: BoxDecoration(
                    color: widget.boiteTitre.couleurFond,
                    borderRadius: BorderRadius.circular(radius),
                  ),
                  child: FractionallySizedBox(
                    heightFactor: 0.8,
                    child: FittedBox(
                      child: Text(
                        titre,
                        style: styleTitre,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),

        /*
        Flexible(
          flex: 6,
          child: FractionallySizedBox(
            widthFactor: 0.7,
            heightFactor: 0.35,
            child: Container(
              decoration: BoxDecoration(
                color: widget.boiteTitre.couleurFond,
                borderRadius: BorderRadius.circular(60.0),
              ),

              child: FractionallySizedBox(
                heightFactor: 0.8,
                child: FittedBox(
                  child: Text(titre,style: styleTitre,),
                ),
              ),
            ),
          ),
        ),

         */
        const Expanded(
            flex: 1,
            child: SizedBox()),

        Flexible(
          flex: 13,
          child: FractionallySizedBox(
            widthFactor: 1.2,
            heightFactor: 0.8,
            child: LayoutBuilder(
              builder: (context, constraints) {
                // Taille du container
                final width = constraints.maxWidth;
                final height = constraints.maxHeight;
                final radius = (width < height ? width : height) * 0.1;

                return Container(
                  decoration: BoxDecoration(
                    color: widget.boiteNumero.couleurFond,
                    borderRadius: BorderRadius.circular(radius),
                  ),
                  child: FractionallySizedBox(
                    heightFactor: 1,
                    widthFactor: 0.9,
                    child: FittedBox(
                      child: Text(
                        numero,
                        style: styleNumero,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),

        /*
        Flexible(
          flex: 10,
          child: FractionallySizedBox(
            widthFactor: 0.8,
            heightFactor: 1,
            child: Container(
              decoration: BoxDecoration(
                color: widget.boiteNumero.couleurFond,
                borderRadius: BorderRadius.circular(60.0),
              ),
              child: FractionallySizedBox(
                heightFactor: 1,
                widthFactor: 0.9,
                child: FittedBox(
                  child: Text(numero,style: styleSousTitre,),
                ),
              ),
            ),
          ),
        ),

         */
      ],
    );
  }
}
