import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/pages/formulario.dart';
import 'package:preferenciasusuarioapp/src/pages/home_page.dart';
import 'package:preferenciasusuarioapp/src/pages/settings_page.dart';

class MenuWidget extends StatelessWidget {
  //const MenuWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/menu-img.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),

          ListTile(
            leading: Icon(Icons.pages, color: Colors.blue),
            title: Text('Home'),
            onTap: () => Navigator.pushReplacementNamed(context, HomePage.routeName),
          ),

          ListTile(
            leading: Icon(Icons.book_sharp, color: Colors.blue),
            title: Text('Formulario de Actividades diarias'),
            onTap: ()=> Navigator.pushReplacementNamed(context, FormularioPage.routeName),
          ),

          ListTile(
            leading: Icon(Icons.accessibility, color: Colors.blue),
            title: Text('Vestimenta'),
            onTap: (){},
          ),

          ListTile(
            leading: Icon(Icons.account_circle, color: Colors.blue),
            title: Text('Usuario'),
            onTap: (){},
          ),

          ListTile(
            leading: Icon(Icons.calendar_today, color: Colors.blue),
            title: Text('Calendario'),
            onTap: (){},
          ),

          ListTile(
            leading: Icon(Icons.devices_other, color: Colors.blue),
            title: Text('Dispositivos'),
            onTap: (){},
          ),

          ListTile(
            leading: Icon(Icons.settings, color: Colors.blue),
            title: Text('Ajustes'),
            onTap: () {
              Navigator.pushReplacementNamed(context, SettingsPage.routeName);
            },
          ),
        ],
      ),
    );
  }
}