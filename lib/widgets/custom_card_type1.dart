
import 'package:componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [

          const ListTile(
            title: Text('Soy un título'),
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primaryColor),
            subtitle: Text('Quisque varius venenatis neque eget lacinia. Curabitur dapibus mi eu odio molestie, quis venenatis nisi mollis. Nunc nulla mi, vehicula vel diam in, vehicula tincidunt lorem. Nulla bibendum felis nec nisl dictum, vitae tristique odio congue.')
          ),

          Padding(
            padding: const EdgeInsets.only(right: 7.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancelar'),
                ),
                TextButton(
                  onPressed: () {}, 
                  child: const Text('Ok')
                )
              ],
            ),
          )
        ],
      )
    );
  }
}