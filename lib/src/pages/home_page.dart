import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/shared_prefs/preferencias_usuario.dart';
import 'package:preferencias_usuario/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  static final String routeName = "home";
  final PreferenciasUsuario preferenciasUsuario = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {

    preferenciasUsuario.ultimaPagina = HomePage.routeName;

    return Scaffold(
      appBar: AppBar(
        title: Text("Preferencias de usuario"),
        backgroundColor: preferenciasUsuario.colorSecundario ? Colors.teal : Colors.blue,
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Color secundario ${preferenciasUsuario.colorSecundario}"),
          Divider(),
          Text("Género: ${preferenciasUsuario.genero}"),
          Divider(),
          Text("Nombre Usuario ${preferenciasUsuario.nombreUsuario}"),
          Divider(),
        ],
      ),
    );
  }

}