import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../function/isar_function.dart';
import 'connection.dart';

 boiteDialog(BuildContext context, WidgetRef ref)  async {
   final textIpServer = TextEditingController();
   textIpServer.text = ref.watch(addressIp);

   final textNonTv = TextEditingController();
   textNonTv.text = ref.watch(nomTv).toString();

  return
    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Icon(
            Icons.info_outline,
            color: Colors.blueAccent,
            size: 50,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                      "entrer adresse ip server"),
                  SizedBox(
                      width: 140,
                      child: TextField(controller: textIpServer,)),
                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                      "entrer nom TV"),
                  SizedBox(
                      width: 100,
                      child: TextField(controller: textNonTv,textAlign: TextAlign.center,)),
                ],
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () async {
                if (!context.mounted) return;
                Navigator.of(ctx).pop();
              },
              child: Container(
                padding: const EdgeInsets.all(6),
                child: const Text(
                  "annuler",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20,),
            TextButton(
              onPressed: () async {
                if (textIpServer.text.isNotEmpty || textNonTv.text.isNotEmpty) {
                  IsarFunction().saveConfig(ref, textIpServer.text, textNonTv.text);
                }
                  if (!context.mounted) return;
                Navigator.of(ctx).pop();
              },
              child: Container(
                padding: const EdgeInsets.all(6),
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
        ));
}
