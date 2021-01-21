import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {

  static final PreferenciasUsuario _instancia = new PreferenciasUsuario._internal();

  factory PreferenciasUsuario() {
    return _instancia;
  }

  PreferenciasUsuario._internal();

  SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  // Ninguna de estas preferencias se usa
  // bool _colorSecundario;
  // int _genero;
  // String _nombre;

  // GET y SET del Genéro
  get genero {
    return _prefs.getInt('genero') ?? 1;
  }

  set genero (int value) {
    _prefs.setInt('genero', value);
  }

  // GET y SET del color secundario 
  get colorSecundario {
    return _prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario (bool value) {
    _prefs.setBool('colorSecundario', value);
  }

  // GET y SET del tema oscuro 
  get temaOscuro {
    return _prefs.getBool('temaOscuro') ?? false;
  }

  set temaOscuro (bool value) {
    _prefs.setBool('temaOscuro', value);
  }

  // GET y SET del nombre de usuario
  get nombreUsuario {
    return _prefs.getString('nombreUsuario') ?? '';
  }

  set nombreUsuario (String value) {
    _prefs.setString('nombreUsuario', value);
  }

  // GET y SET de la ultima página
  get ultimaPagina {
    return _prefs.getString('ultimaPagina') ?? 'home';
  }

  set ultimaPagina (String value) {
    _prefs.setString('ultimaPagina', value);
  }


  // GET y SET de las Actividades diarias
  get actividades {
    return _prefs.getInt('actividades') ?? 1;
  }

  set actividades (int value) {
    _prefs.setInt('actividades', value);
  }


}