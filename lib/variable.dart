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
    fontFr: 'Amiri',
    fontAr: 'Amiri',
    colorText: Colors.black,
    isBold: true);

ModalText titreAr = ModalText(
    titre: 'عنوان تلفاز بالعربية',
    fontFr: 'Amiri',
    fontAr: 'Amiri',
    colorText: Colors.black,
    isBold: true);


int delayChange =5 ;
int delayAttenteVocal = 5;
List<Map<String, dynamic>> listAppel = [];
Directory? externalDir;
Directory? result;

String serverIp = "";

int indexMedia = 0;
late int durerImage;


late Player player;
late Player playerNumber;
late AudioPlayer playerSound;
bool isSound = false;
late final VideoController controller;

Timer? timerHorloge;
bool isFinish = false;
bool isAppelNum = false;
int numPlay = 0;
int numPlayList = 0;
int numPlayCurrent = 0;
int CurrentIndexPlayer = 0;

Playlist listPlayVoice = Playlist([]);


List<String> listItemGuichetFr = <String>[
  'guichet',
  'bureau',
];

List<String> listItemGuichetAr = <String>[
  'شباك',
  'مكتب',
];

List<String> listItemNumeroFr = <String>[
  'numero',
  'ticket',
];

List<String> listItemNumeroAr = <String>[
  'رقم',
  'تذكرة',
];
