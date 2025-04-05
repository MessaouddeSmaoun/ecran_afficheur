import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../function/isar_function.dart';
import '../main.dart';
import 'connection.dart';

class WidgetConfigInit extends ConsumerWidget {
  const WidgetConfigInit({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textIpServer = TextEditingController();
    textIpServer.text = ref.watch(addressIp);
    final textNonTv = TextEditingController();
    textNonTv.text = ref.watch(nomTv).toString();

    TextStyle textStyle = const TextStyle(fontSize: 22,color: Colors.black);

    return  Container(
      color: Colors.blueAccent,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            Text(
              "Bienvenue dans l'applicaion exran affichage",style: textStyle,),
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                      "entrer adresse ip server"),
                  SizedBox(
                      width: 140,
                      child: TextField(controller: textIpServer,)),
                ],),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                      "entrer nom TV"),
                  SizedBox(
                      width: 140,
                      child: TextField(controller: textNonTv,textAlign: TextAlign.center,)),
                ],
              ),
            ],),

            TextButton(
              onPressed: () async {
                if (textIpServer.text.isNotEmpty || textNonTv.text.isNotEmpty) {
                  IsarFunction().saveConfig(ref, textIpServer.text, textNonTv.text);
                  Navigator.pushNamed(context, '/PrincipalPage');
                }
              },
              child: Container(
                color: Colors.redAccent,
                padding: const EdgeInsets.all(14),
                child: const Text(
                  "sauvegarder",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
