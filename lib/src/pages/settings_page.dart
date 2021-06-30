import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/shared_prefs/preferencias_usuario.dart';
import 'package:preferencias_usuario/src/widgets/menu_widget.dart';


class SettingPage extends StatefulWidget {

  static final String routeName = "settings";

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  bool? _colorSecundario;
  int? _genero;
  String _nombre = "Pepe";


  TextEditingController? _textController;
  final PreferenciasUsuario preferencias = new PreferenciasUsuario();

 @override
  void initState(){ 
    super.initState();
    _genero = preferencias.genero;
    _colorSecundario = preferencias.colorSecundario;
    _nombre = preferencias.nombreUsuario;
    preferencias.ultimaPagina = SettingPage.routeName;

    _textController = new TextEditingController(text: _nombre);
  }

   _getSelectedRadio(int? valor) {
     setState(() {
       preferencias.genero = valor!;
       _genero = valor;
     });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuWidget(),
      appBar: AppBar(
        backgroundColor: preferencias.colorSecundario ? Colors.teal : Colors.blue,
        title: Text("Ajustes"),
      ),
      body:ListView(
        children: [

          Container(
            padding: EdgeInsets.all(5.0),
            child: Text("Settings",style: TextStyle(fontSize: 45.0,fontWeight: FontWeight.bold),),
          ),
          Divider(),
          SwitchListTile(
            value: _colorSecundario!,
            title: Text("Color Secundario"), 
            onChanged: (bool value){
              setState(() {
                
              _colorSecundario = value;
              preferencias.colorSecundario = value;
              });
            }),
          RadioListTile(
            value: 1,
            title: Text("Masculino"),
            groupValue: _genero, 
            onChanged: _getSelectedRadio,
          ),
          RadioListTile(
            value: 2,
            title: Text("Femenino"),
            groupValue: _genero, 
            onChanged: _getSelectedRadio),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: "Nombre",
                helperText: "Nombe de la persona"
              ),
              onChanged: (String value){
                preferencias.nombreUsuario = value;
              },
            ),
          )
        ],
      )
    );

  }
}