import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget')
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const[
          CustomCardType1(),

          SizedBox(height: 10,),

          CustomCardType2(imageUrl: 'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography-1536x1024.jpg', textFoot: "Landscape copad",),

          SizedBox(height: 10,),
          
          CustomCardType2(imageUrl: 'https://expertphotography.b-cdn.net/wp-content/uploads/2022/05/Landscape-Photography-Thomas-Morse.jpg', textFoot: "Paisajón",),

          SizedBox(height: 10,),
          
          CustomCardType2(imageUrl: 'https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg')

        ],
      )
    );
  }
}
