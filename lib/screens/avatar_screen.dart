import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
              backgroundColor: Colors.red,
              child: Text('SL'),
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Cristo_abrazado_a_la_cruz_%28El_Greco%2C_Museo_del_Prado%29.jpg/711px-Cristo_abrazado_a_la_cruz_%28El_Greco%2C_Museo_del_Prado%29.jpg'),
         )
      ),
    );
  }
}