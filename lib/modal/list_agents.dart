interface class ListAgents {
  ListAgents(
      {required this.lastName,
      required this.firstName,
      required this.pseudo,
      required this.passWord,
      required this.listService});

  int? id;

  String pseudo;
  String lastName;
  String firstName;
  String passWord;

  List<ModalServiceAgent> listService;
}

interface class ModalServiceAgent {
  ModalServiceAgent({required this.indexService, required this.priorite});

  int priorite;
  int indexService;
}
