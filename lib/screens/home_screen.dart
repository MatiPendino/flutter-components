import 'package:componentes/router/app_routes.dart';
import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(menuOptions[index].name),
          leading: Icon(menuOptions[index].icon, color: AppTheme.primaryColor),
          onTap: () {
            /*final route = MaterialPageRoute(
              builder: (context) => const ListView1Screen(),
            );
            Navigator.push(context, route);*/

            Navigator.pushNamed(context, menuOptions[index].route);
          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: menuOptions.length,
      )
    );
  }
}