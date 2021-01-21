import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/share_prefs/preferencias_usuario.dart';
import 'package:preferenciasusuarioapp/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key key}) : super(key: key);
  static final String routeName = 'home';
  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {

    prefs.ultimaPagina = HomePage.routeName;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.blue,
        centerTitle: true,
        title: Text('Preferencias de Usuario')
      ),
      endDrawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color secundario: ${prefs.colorSecundario}'),
          Divider(),
          Text('Tema Oscuro: ${prefs.temaOscuro}'),
          Divider(),
          Text('Género: ${prefs.genero}'),
          Divider(),
          Text('Actividades: ${prefs.actividades}'),
          Divider(),
          Text('Nombre de usuario: ${prefs.nombreUsuario}'),
          Divider(),
        ],
      ),
    );
  }
}