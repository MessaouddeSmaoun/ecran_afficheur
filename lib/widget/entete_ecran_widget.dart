import 'package:flutter/material.dart';
import 'entete_design.dart';

class EnteteEcanWidget extends StatelessWidget {
  const EnteteEcanWidget({
    super.key,
});


  @override
  Widget build(BuildContext context) {
    return  Expanded(
        flex: 11,
        child: FractionallySizedBox(
          heightFactor: 0.7,
          child: EnteteDesign(
          ),
        ));
  }
}