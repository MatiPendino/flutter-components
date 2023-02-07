import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
   
  final options = const["Superman", "Batman", "Iron Man", "Spider Man"];

  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView tipo 2'),
        backgroundColor: Colors.indigo
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.keyboard_arrow_right_outlined, color: Colors.indigo),
          onTap: () {

          },
        ),
        itemCount: options.length, 
        separatorBuilder: (BuildContext _, int __) => const Divider(),
      )
    );
  }
}