import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {

  final String imageUrl;
  final String? textFoot;
   
  const CustomCardType2({
    Key? key, 
    required this.imageUrl,
    this.textFoot
    }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 30,
      child: Column(
        children: [

           FadeInImage(
            image: NetworkImage(imageUrl,),
            placeholder: const AssetImage('assets/img/jar-loading.gif'),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),

          if (textFoot != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
              child: Text(textFoot!)
            )

        ],
      )
    );
  }
}