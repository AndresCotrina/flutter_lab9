import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      shadowColor: Colors.red,
      elevation: 10,
       child: const Column(
         children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage("https://acortar.link/8rvAaa"),
            width: double.infinity,
            height: 230,
            fit: BoxFit.fill,
            fadeInDuration: Duration(milliseconds: 300),
            ),
         ],
       ),
     );
  }
}