import 'dart:async';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:ecran_afficheur/isar/data_isar.dart';
import 'package:ecran_afficheur/modal/modal_text.dart';
import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';



late DataIsar miseAjour;

ModalText titreFr = ModalText(
    titre: 'titre tv en francais',
    font: '',
    colorText: Colors.black,
    isBold: true,
    isItalic: false);

ModalText titreAr = ModalText(
    titre: 'عنوان تلفاز بالعربية',
    font: '',
    colorText: Colors.black,
    isBold: true,
    isItalic: false);


int delayChange =5 ;
int delayAttenteVocal = 5;
List<Map<String, dynamic>> listAppel = [];
Directory? externalDir;
Directory? result;

String serverIp = "";

int indexMedia = 0;
late int durerImage;


 late Player player;
late AudioPlayer playerSound;
bool isSound = false;
late final VideoController controller;

Timer? timerHorloge;
 bool langueArabDisp = true;
 bool langueFrancaisDisp = true;