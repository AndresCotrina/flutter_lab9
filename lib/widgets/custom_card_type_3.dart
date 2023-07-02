import 'package:flutter/material.dart';

class CustomCardType3 extends StatelessWidget {
  const CustomCardType3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      shadowColor: Colors.red,
      elevation: 10,
      child: Column(
        children: [
          const FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage("https://acortar.link/0KE36Z"),
            width: double.infinity,
            height: 230,
            fit: BoxFit.fill,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: const Text('Star Wars'),
          )
        ],
      ),
    );
  }
}
