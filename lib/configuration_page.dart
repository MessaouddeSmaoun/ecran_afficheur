import 'package:ecran_afficheur/widget/widget_config_init.dart';
import 'package:flutter/material.dart';

class ConfigurationPage extends StatelessWidget {
  const ConfigurationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:  const WidgetConfigInit(),
      ),
    );
  }
}
