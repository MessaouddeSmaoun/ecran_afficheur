import 'package:flutter/material.dart';
import 'entete_design.dart';

class EnteteEcanWidget extends StatelessWidget {
  const EnteteEcanWidget({
    super.key,
});


  @override
  Widget build(BuildContext context) {
    return const Expanded(
        flex: 11,
        child: EnteteDesign(
        ));
  }
}