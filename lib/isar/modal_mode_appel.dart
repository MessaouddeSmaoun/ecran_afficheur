import 'package:isar/isar.dart';

part 'modal_mode_appel.g.dart';

@collection
class ModalModeAppel {
  ModalModeAppel({

    required this.nomGuichetAr,
    required this.nomGuichetFr,
    required this.nomNumeroAr,
    required this.nomNumeroFr,
    required this.modeAppelSelected,
    required this.fontNumeroSelected,
    required this.isListGuchetVisible,
    required this.positionAffichageServiceMA,
    required this.textListAppelMAColor,
    required this.textListAppelMAisBold,
    required this.textListAppelMAfontFr,
    required this.textListAppelMAfontAr,
    required this.coleurGuichetMA,
    required this.coleurNumeroMA,



    required this.boiteServiceBandeMAFond,
    required this.boiteServiceBandeMAClignotment,
    required this.textServiceBandeMAisBold,
    required this.textServiceBandeMAColor,
    required this.textServiceBandeMAfontFr,
    required this.textServiceBandeMAfontAr,
    required this.visibleTextServiceBandeMA,


    required this.guichetTitreColorText,
    required this.guichetTitreIsBold,
    required this.guichetNumeroColorText,
    required this.guichetNumeroIsBold,
    required this.numeroTitreColorText,
    required this.numeroTitreIsBold,
    required this.numeroNumeroColorText,
    required this.numeroNumeroIsBold,
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

  int boiteServiceBandeMAFond;
  int boiteServiceBandeMAClignotment;
  bool textServiceBandeMAisBold;
  int textServiceBandeMAColor;
  String textServiceBandeMAfontFr;
  String textServiceBandeMAfontAr;
  bool visibleTextServiceBandeMA;


  String nomGuichetAr;
  String nomGuichetFr;
  String nomNumeroAr;
  String nomNumeroFr;
  String modeAppelSelected;
  String fontNumeroSelected;
  bool isListGuchetVisible;
  String positionAffichageServiceMA;
  int textListAppelMAColor;
  bool textListAppelMAisBold;
  String textListAppelMAfontFr;
  String textListAppelMAfontAr;
  int coleurGuichetMA;
  int coleurNumeroMA;

  int guichetTitreColorText;
  bool guichetTitreIsBold;


  int guichetNumeroColorText;
  bool guichetNumeroIsBold;


  int numeroTitreColorText;
  bool numeroTitreIsBold;


  int numeroNumeroColorText;
  bool numeroNumeroIsBold;


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