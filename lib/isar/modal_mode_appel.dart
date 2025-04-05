import 'package:isar/isar.dart';

part 'modal_mode_appel.g.dart';

@collection
class ModalModeAppel {
  ModalModeAppel({
    required this.guichetTitreColorText,
    required this.guichetTitreIsBold,
    required this.guichetTitreIsItalic,
    required this.guichetNumeroColorText,
    required this.guichetNumeroIsBold,
    required this.guichetNumeroIsItalic,
    required this.numeroTitreColorText,
    required this.numeroTitreIsBold,
    required this.numeroTitreIsItalic,
    required this.numeroNumeroColorText,
    required this.numeroNumeroIsBold,
    required this.numeroNumeroIsItalic,
    required this.guichetTitreStyleBoite,
    required this.guichetTitreCouleurFond,
    required this.guichetTitreCouleurClignotment,
    required this.guichetNumeroStyleBoite,
    required this.guichetNumeroCouleurFond,
    required this.guichetNumeroCouleurClignotment,
    required this.numeroTitreStyleBoite,
    required this.numeroTitreCouleurFond,
    required this.numeroTitreCouleurClignotment,
    required this.numeroNumeroStyleBoite,
    required this.numeroNumeroCouleurFond,
    required this.numeroNumeroCouleurClignotment,
    required this.intervalleClignotment,
  });

  Id id = Isar.autoIncrement;

  int guichetTitreColorText;
  bool guichetTitreIsBold;
  bool guichetTitreIsItalic;


  int guichetNumeroColorText;
  bool guichetNumeroIsBold;
  bool guichetNumeroIsItalic;


  int numeroTitreColorText;
  bool numeroTitreIsBold;
  bool numeroTitreIsItalic;


  int numeroNumeroColorText;
  bool numeroNumeroIsBold;
  bool numeroNumeroIsItalic;


  String guichetTitreStyleBoite;
  int guichetTitreCouleurFond;
  int guichetTitreCouleurClignotment;

  String guichetNumeroStyleBoite;
  int guichetNumeroCouleurFond;
  int guichetNumeroCouleurClignotment;



  String numeroTitreStyleBoite;
  int numeroTitreCouleurFond;
  int numeroTitreCouleurClignotment;

  String numeroNumeroStyleBoite;
  int numeroNumeroCouleurFond;
  int numeroNumeroCouleurClignotment;

  int intervalleClignotment;
}