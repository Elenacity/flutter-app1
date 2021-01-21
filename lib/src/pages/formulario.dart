import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/cronometro/timer_page.dart';
import 'package:preferenciasusuarioapp/src/share_prefs/preferencias_usuario.dart';
import 'package:preferenciasusuarioapp/src/widgets/menu_widget.dart';

class FormularioPage extends StatefulWidget {

  static final String routeName = 'actividades';

  @override
  _FormularioPageState createState() => _FormularioPageState();
}

class _FormularioPageState extends State<FormularioPage> {


  int _actividades;

  
  final prefs = new PreferenciasUsuario();

  @override
  void initState() {
    super.initState();
    prefs.ultimaPagina = FormularioPage.routeName;
    _actividades = prefs.actividades;
  }

  _setSelectedRadio(int valor) {
    prefs.actividades = valor;
    _actividades = valor;
    setState(() { });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.blue,
        title: Text('Actividades Diarias')
      ),
      endDrawer: MenuWidget(),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text('Actividades',style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold))
          ),

          Divider(),

          RadioListTile(
            value: 1,
            title: Text('Cocinar'),
            groupValue: _actividades, 
            onChanged: _setSelectedRadio,
          ),

          RadioListTile(
            value: 2,
            title: Text('Comer'),
            groupValue: _actividades, 
            onChanged: _setSelectedRadio,
          ),

          RadioListTile(
            value: 3,
            title: Text('Dormir'),
            groupValue: _actividades, 
            onChanged: _setSelectedRadio,
          ),

          RadioListTile(
            value: 4,
            title: Text('Lavarse las manos'),
            groupValue: _actividades, 
            onChanged: _setSelectedRadio,
          ),

          RadioListTile(
            value: 5,
            title: Text('Ducharse'),
            groupValue: _actividades, 
            onChanged: _setSelectedRadio,
          ),

          RadioListTile(
            value: 6,
            title: Text('Ver televisiíon'),
            groupValue: _actividades, 
            onChanged: _setSelectedRadio,
          ),

          RadioListTile(
            value: 7,
            title: Text('Descargar el inodoro'),
            groupValue: _actividades, 
            onChanged: _setSelectedRadio,
          ),

          RadioListTile(
            value: 8,
            title: Text('Cepillarse los dientes'),
            groupValue: _actividades, 
            onChanged: _setSelectedRadio,
          ),

          RadioListTile(
            value: 9,
            title: Text('Cepillarse los dientes'),
            groupValue: _actividades, 
            onChanged: _setSelectedRadio,
          ),

          RadioListTile(
            value: 10,
            title: Text('Cepillarse los dientes'),
            groupValue: _actividades, 
            onChanged: _setSelectedRadio,
          ),
          Divider(),

          TimerPage(),

          Divider(),

        ],
      ),
    );
  }
}