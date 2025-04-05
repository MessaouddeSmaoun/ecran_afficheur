import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dialog_ip.dart';

class WidgetReConnection extends StatelessWidget {
   const WidgetReConnection({super.key, required this.ref});
final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    textController.text = "";
    TextStyle textStyle = const TextStyle(fontSize: 18,fontWeight: FontWeight.bold);

  return Stack(
      children: [
        Opacity(
          opacity: 0.8,
          child: Container(
            color: Colors.green,
            child:const SizedBox(width: double.maxFinite,height: double.maxFinite,)
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {
                    boiteDialog(context, ref);
                    debugPrint("cliquec");
                  },
                  icon: const Icon(Icons.settings)),
            ),
            const SizedBox(
              height: 25,
            ),
            Text("welcome to a borne",style: textStyle,),
            const Spacer(),
             Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Icon(
                  Icons.search,
                  size: 40,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("Searching server, please wait a moment",style: textStyle),
              ],
            ),
            const Spacer(),
          ],
        ),
      ],
    );
  }
}
