import 'dart:io';
import 'package:media_kit/media_kit.dart';

class TextToVoice {

  Future<Playlist> numberFrench(String numeroStr) async {
    String numero = int.parse(numeroStr).toString();
    String pathFile = Directory.current.path;
    final String path = '$pathFile\\assets\\audio\\audio_number_fr';
    //  final String path = 'asset:///assets/audio_fr/';
    List<String> listMedia = [];
    int position = numero.length;

    String nombre = "";
    int index = 0;

    while (index < numero.length) {
      if ((position == 2 || position == 5) && (numero[index] != "0")) {
        nombre = numero[index];
      }

      if (position == 1) {
        if (numero[index] == "0" && nombre != "") {
          ////  dizaine

          switch (nombre) {
            case '1' || '2' || '3' || '4' || '5' || '6':
              listMedia.add('$path\\${nombre}0fr.wav');
              break;
            case '7':
              listMedia.add('$path\\6_0fr.wav');
              listMedia.add('$path\\10fr.wav');
              break;
            case '8':
              listMedia.add('$path\\4_fr.wav');
              listMedia.add('$path\\20fr.wav');
              break;
            case '9':
              listMedia.add('$path\\4_fr.wav');
              listMedia.add('$path\\2_0fr.wav');
              listMedia.add('$path\\10fr.wav');
              break;
          }
          nombre = "";
        }
        else if (numero[index] != "0" && nombre == "") {
          ////  unite

          listMedia.add('$path\\${numero[index]}fr.wav');}
        else if (numero[index] != "0" && nombre != "") {
          ////  dizaine et unite

          if (nombre == "1") {
            listMedia.add('$path\\1${numero[index]}fr.wav');
          } else {

            switch (nombre) {
              case '2' || '3' || '4' || '5' || '6':
                listMedia.add('$path\\${nombre}_0fr.wav');
                break;
              case '7':
                listMedia.add('$path\\6_0fr.wav');
                break;
              case '8':
                listMedia.add('$path\\4fr.wav');
                listMedia.add('$path\\20fr.wav');
                break;
              case '9':
                listMedia.add('$path\\4fr.wav');
                listMedia.add('$path\\20fr.wav');
                break;
            }
            if (nombre == "7" || nombre == "9") {
              listMedia.add('$path\\1${numero[index]}fr.wav');
            } else {
              if (numero[index] == "1"){
                 listMedia.add('$path\\T1fr.wav');
              } else {
                listMedia.add('$path\\${numero[index]}fr.wav');
              }

            }

          }
          nombre = "";
        }
      }

      if (position == 4) {
        if (numero[index] == "0" && nombre != "") {
          ////  dizaine

          switch (nombre) {
            case '1' || '2' || '3' || '4' || '5' || '6':
              listMedia.add('$path\\${nombre}_0fr.wav');
              break;
            case '7':
              listMedia.add('$path\\6_0fr.wav');
              listMedia.add('$path\\1_0fr.wav');
              break;
            case '8':
              listMedia.add('$path\\4_fr.wav');
              listMedia.add('$path\\2_0fr.wav');
              break;
            case '9':
              listMedia.add('$path\\4_fr.wav');
              listMedia.add('$path\\2_0fr.wav');
              listMedia.add('$path\\1_0fr.wav');
              break;
          }
          nombre = "";
        } else if (numero[index] != "0" && nombre == "") {
          ////  unite

          if (numero.length == 6) {
            listMedia.add('$path\\${numero[index]}_fr.wav');
          } else if (numero[index] != "1") {
            listMedia.add('$path\\${numero[index]}_fr.wav');
          }
        } else if (numero[index] != "0" && nombre != "") {
          ////  dizaine et unite

          if (nombre == "1") {
            listMedia.add('$path\\1_${numero[index]}fr.wav');
          } else {
            switch (nombre) {
              case '2' || '3' || '4' || '5' || '6':
                listMedia.add('$path\\${nombre}_0fr.wav');
                break;
              case '7':
                listMedia.add('$path\\6_0fr.wav');
                break;
              case '8':
                listMedia.add('$path\\4_fr.wav');
                listMedia.add('$path\\2_0fr.wav');
                break;
              case '9':
                listMedia.add('$path\\4_fr.wav');
                listMedia.add('$path\\2_0fr.wav');
                break;
            }

            if (nombre == "7" || nombre == "9") {
              listMedia.add('$path\\1${numero[index]}fr.wav');
            } else {
              if (numero[index] == "1"){
                listMedia.add('$path\\T1fr.wav');
              } else {
                listMedia.add('$path\\${numero[index]}fr.wav');
              }

            }


          }
          nombre = "";
        }
        listMedia.add('$path\\1000fr.wav');
      }

      if ((position == 3 || position == 6) && (numero[index] != '0')) {
        if (numero[index] != "1") {
          listMedia.add('$path\\${numero[index]}_fr.wav');
        }
        listMedia.add('$path\\100fr.wav');
      }
      index++;
      position--;
    }

    final playlist = Playlist([for (var item in listMedia) Media(item)]);
    return playlist;
  }

  Future<Playlist> textFrench(bool isSymbol, String text) async {
    String pathFile = Directory.current.path;
    final String path = '$pathFile\\assets\\audio\\audio_text_fr';



    //  final String path = 'asset:///assets/audio_fr/';
    List<String> listMedia = [];
    int index = 0;

    if (isSymbol) {
      while (index < text.length) {
        listMedia.add('$path\\${text[index]}_fr.wav');
        index++;
      }
    } else {
      listMedia.add('$path\\${text}_fr.wav');
    }

    final playlist = Playlist([for (var item in listMedia) Media(item)]);
    return playlist;
  }

  Future<Playlist> numberArab(String numeroStr) async {
    String numero = int.parse(numeroStr).toString();
    String pathFile = Directory.current.path;
    final String path = '$pathFile\\assets\\audio\\audio_number_ar';
    //  final String path = 'asset:///assets/audio_ar/';
    List<String> listMedia = [];
    int position = numero.length;
    String nombre = "";
    int index = 0;
    bool isHandred = false;
    bool isThousand = false;

    while (index < numero.length) {

      if ((position == 2 || position == 5) && (numero[index] != "0")) {
        nombre = numero[index];
      }

      if (position == 1) {
        if (isHandred || isThousand){
          listMedia.add('$path\\ETar.wav');
          isHandred = false;
          isThousand = false;
        }
        if (numero[index] == "0" && nombre != "") {
          ////  dizaine

          listMedia.add('$path\\${nombre}0ar.wav');
          nombre = "";
        }
        else if (numero[index] != "0" && nombre == "") {
          ////  unite

          listMedia.add('$path\\${numero[index]}ar.wav');
        } else if (numero[index] != "0" && nombre != "") {
          ////  dizaine et unite
          if (nombre == "1") {
            listMedia.add('$path\\1${numero[index]}ar.wav');
          } else {
            listMedia.add('$path\\${numero[index]}ar.wav');
            listMedia.add('$path\\ETar.wav');
            listMedia.add('$path\\${nombre}0ar.wav');
          }
          nombre = "";
        }
      }


      if (position == 4) {
        isThousand = true;
        if (isHandred){
        listMedia.add('$path\\ETar.wav');
        isHandred = false;
      }
      if (numero[index] == "0" && nombre != "") {
        ////  dizaine

        listMedia.add('$path\\${nombre}0ar.wav');
        nombre = "";
      } else if (numero[index] != "0" && nombre == "") {
        ////  unite

        if (numero[index] != "1" && numero[index] != "2") {
          listMedia.add('$path\\${numero[index]}_ar.wav');
        } else if (numero[index] == "2") {
          listMedia.add('$path\\2000ar.wav');
        }


      } else if (numero[index] != "0" && nombre != "") {
        ////  dizaine et unite
        if (nombre == "1") {
          listMedia.add('$path\\1${numero[index]}ar.wav');
        } else {
          listMedia.add('$path\\${numero[index]}ar.wav');
          listMedia.add('$path\\ETar.wav');
          listMedia.add('$path\\${nombre}0ar.wav');
        }
        nombre = "";
      }



      }

      if (position == 4 && (numero[index] != "2" || numero.length != 4)) {
          listMedia.add('$path\\1000ar.wav');
        }

      if ((position == 3 || position == 6) && (numero[index] != '0')) {
        if (isHandred || isThousand){
          listMedia.add('$path\\ETar.wav');
          isHandred = false;
          isThousand = false;
        }
        if (numero[index] != "1" && numero[index] != "2") {
          listMedia.add('$path\\${numero[index]}_ar.wav');
          listMedia.add('$path\\100ar.wav');
        } else if (numero[index] == "2") {
          listMedia.add('$path\\200ar.wav');

        } else {

          listMedia.add('$path\\100ar.wav');
        }
        isHandred = true;
      }
      index++;
      position--;
    }

    final playlist = Playlist([for (var item in listMedia) Media(item)]);
    return playlist;
  }

  Future<Playlist> textArab(bool isSymbol, String text) async {
    String pathFile = Directory.current.path;
    final String path = '$pathFile\\assets\\audio\\audio_text_ar';
    //  final String path = 'asset:///assets/audio_lettre_ar/';
    List<String> listMedia = [];
    int index = 0;

    if (isSymbol) {
      while (index < text.length) {
        listMedia.add('$path\\${text[index]}_ar.wav');
        index++;
      }
    } else {
     listMedia.add('$path\\${text}_ar.wav');

    }

    final playlist = Playlist([for (var item in listMedia) Media(item)]);
    return playlist;
  }

  Future<Playlist> attente(String text) async {
    String pathFile = Directory.current.path;
    final String path = '$pathFile\\assets\\audio';
    //  final String path = 'asset:///assets/audio_fr/';

    final playlist = Playlist([Media('$path\\$text.wav')]);
    return playlist;
  }
}
