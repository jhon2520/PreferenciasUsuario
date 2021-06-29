import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/widgets/menu_widget.dart';

class SettingPage extends StatelessWidget {

  static final String routeName = "settings";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuWidget(),
      appBar: AppBar(
        title: Text("Ajustes"),
      ),
      body: Center(
        child: Text("Ajustes page"),
      )
    );

  }
}