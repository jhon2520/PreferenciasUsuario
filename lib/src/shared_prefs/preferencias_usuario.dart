
import 'package:preferencias_usuario/src/pages/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario{

  static final PreferenciasUsuario _instancia = new PreferenciasUsuario._internal();

  factory PreferenciasUsuario(){
    return _instancia;
  }

  PreferenciasUsuario._internal();

  SharedPreferences? _preferences;

  initPrefs() async {
    this._preferences = await SharedPreferences.getInstance();
  }

  //get y set del genero

  int get genero{
    return _preferences!.getInt("genero") ?? 1;
  }
  set genero(int value){
    _preferences!.setInt("genero", value);
  }

    //get y set del color secundario

  bool get colorSecundario{
    return _preferences!.getBool("colorSecundario") ?? false;
  }
  set colorSecundario(bool value){
    _preferences!.setBool("colorSecundario", value);
  }

      //get y set del nombreUsuario

  String get nombreUsuario{
    return _preferences!.getString("nombreUsuario") ?? "";
  }
  set nombreUsuario(String value){
    _preferences!.setString("nombreUsuario", value);
  }

        //get y set última página

  String get ultimaPagina{
    return _preferences!.getString("ultimaPagina") ?? HomePage.routeName;
  }
  set ultimaPagina(String value){
    _preferences!.setString("ultimaPagina", value);
  }









}