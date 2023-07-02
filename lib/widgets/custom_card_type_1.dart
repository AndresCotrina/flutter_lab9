import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
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
          Image(
            image: NetworkImage("https://acortar.link/kcSJgw"),
          )
         ],
       ),
     );
  }
}