import 'dart:ui';

interface class ModalIcon {

  ModalIcon(
      { required this.pathIcon, required this.colorIcon, required this.isLeft, required this.isRight,required this.sizeIcon, });

  String pathIcon;
  Color colorIcon;
  double sizeIcon;
  bool isLeft;
  bool isRight;

}