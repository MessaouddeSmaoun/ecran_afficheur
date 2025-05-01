interface class ModalService {
  ModalService(
      {required this.index,
      required this.appeler,
        required this.reste,
        required this.guichet,
      required this.serviceAr,
      required this.serviceFr});

  int index;
  String appeler;
  String reste;
  String guichet;
  String serviceAr;
  String serviceFr;
}
