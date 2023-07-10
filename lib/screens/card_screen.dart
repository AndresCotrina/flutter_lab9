import 'package:flutter/material.dart';
import 'package:lab_08/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
        backgroundColor: Colors.red,
      ),
      body:ListView(
        children: const <Widget>[
          Padding(
           padding: EdgeInsets.only(left: 10,right: 10,top: 8, bottom: 10),
           child: CustomCardType1(),
          ),
          Padding(
           padding: EdgeInsets.only(left: 10,right: 10,top: 8, bottom: 10),
           child: CustomCardType2(),
          ),
          Padding(
           padding: EdgeInsets.only(left: 10,right: 10,top: 8, bottom: 10),
           child: CustomCardType3(),
          ),
        ],
      ),
    );
  }
}