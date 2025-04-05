interface class ModalService {
  ModalService(
      {required this.index,
      required this.appeler,
      required this.reste,
      required this.titreArAff,
      required this.titreFrAff});

  int index;
  String appeler;
  String reste;
  String titreArAff;
  String titreFrAff;
}
