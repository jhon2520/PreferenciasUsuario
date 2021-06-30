import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/pages/home_page.dart';
import 'package:preferencias_usuario/src/pages/settings_page.dart';
import 'package:preferencias_usuario/src/shared_prefs/preferencias_usuario.dart';


void main()async{
  final preferencias = new PreferenciasUsuario();
  WidgetsFlutterBinding.ensureInitialized();
  await preferencias.initPrefs();
  runApp(MyApp());
}
class MyApp extends StatelessWidget{

  final preferencias = new PreferenciasUsuario();

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Preferencias",
      initialRoute: preferencias.ultimaPagina,
      routes: {
        HomePage.routeName : (context)=> HomePage(),
        SettingPage.routeName : (context)=> SettingPage(),

      },
    );

  }
}