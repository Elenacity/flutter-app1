import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/share_prefs/preferencias_usuario.dart';
import 'package:preferenciasusuarioapp/src/widgets/menu_widget.dart';

class SettingsPage extends StatefulWidget {
  //const HomePage({Key key}) : super(key: key);
  static final String routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  bool _colorSecundario;
  bool _temaOscuro;
  int _genero;
  String _nombre;

  TextEditingController _textController;
  
  final prefs = new PreferenciasUsuario();

  @override
  void initState() {
    super.initState();
    // cargarPref();
    prefs.ultimaPagina = SettingsPage.routeName;
    _genero = prefs.genero;
    _colorSecundario = prefs.colorSecundario;
    _temaOscuro = prefs.temaOscuro;
    _nombre = prefs.nombreUsuario;

    _textController = new TextEditingController(text: _nombre);
  }

  // cargarPref() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   _genero = prefs.getInt('genero');
  //   setState(() {});
  // }

  _setSelectedRadio(int valor) {

    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.setInt('genero', valor);
    prefs.genero = valor;
    _genero = valor;
    setState(() { });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.blue,
        title: Text('Ajustes')
      ),
      endDrawer: MenuWidget(),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text('Settings',style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold))
          ),

          Divider(),
          SwitchListTile(
            value: _colorSecundario, 
            title: Text('Color secundario'),
            onChanged: (value){
              setState(() {
                _colorSecundario = value;
                prefs.colorSecundario = value;
              });
            },
          ),

          SwitchListTile(
            value: _temaOscuro, 
            title: Text('Tema Oscuro'),
            onChanged: (value){
              setState(() {
                _temaOscuro = value;
                prefs.temaOscuro = value;
              });
            },
          ),

          RadioListTile(
            value: 1,
            title: Text('Masculino'),
            groupValue: _genero, 
            onChanged: _setSelectedRadio,
          ),

          RadioListTile(
            value: 2,
            title: Text('Femenino'),
            groupValue: _genero, 
            onChanged: _setSelectedRadio,
          ),
          Divider(),

          Container(
            padding: EdgeInsets.symmetric(horizontal:20.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: 'Nombre',
                helperText: 'Nombre dela persona usando el teléfono',
              ),
              onChanged: (value){
                prefs.nombreUsuario = value;
              },
            )
          )
        ],
      ),
      );
  }
}