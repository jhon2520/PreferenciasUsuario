import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/pages/home_page.dart';
import 'package:preferencias_usuario/src/pages/settings_page.dart';

class MenuWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/menu-img.jpg"),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: Icon(Icons.pages, color: Colors.blue),
            title: Text("Home"),
            onTap: (){
              Navigator.pushReplacementNamed(context, HomePage.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.party_mode, color: Colors.blue),
            title: Text("Party Mode"),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.people, color: Colors.blue),
            title: Text("People"),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.blue),
            title: Text("Settings"),
            onTap: (){

              // pushReplacementNamed es para que cuando se ingrese a la siguiente ventana
              // ya no aparezca el botón para devolverse, esto es muy útil por ejemplo luego
              //de una ventana de login donde no quiero que luego de logearse la persona
              //pueda volver a la ventana inicial
              Navigator.pushReplacementNamed(context, SettingPage.routeName);
            },
          ),
        ],
      ),
    );
  }
}