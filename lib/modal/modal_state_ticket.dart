interface class ModalStatisticTicket {

ModalStatisticTicket({required this.idService, required this.nombreTicket,required this.nombreAppel, required this.numeroTicket,
required this.resteTicket, required this.numeroEncour,required this.nombreValider,required this.abandon});

int idService;

int nombreTicket;
int nombreAppel;
int numeroTicket;
int resteTicket;
String numeroEncour;
int nombreValider;
ModalAbandon abandon;

}

interface class ModalAbandon {

  String? motifAbandon;
  int? abandonNumber;

}