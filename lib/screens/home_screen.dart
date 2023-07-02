import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  final routes = const [
    "Home Screen",
    "Primera Lista",
    "Segunda Lista",
    "Alert Screen",
    "Card Screen"
  ];
  final icons = const [
    Icon(Icons.home_outlined),
    Icon(Icons.list),
    Icon(Icons.list_alt),
    Icon(Icons.add_alert),
    Icon(Icons.card_giftcard),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome'),
          elevation: 0,
          backgroundColor: Colors.red,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: icons[index],iconColor: Colors.red,
                  title: Text(routes[index]),
                  trailing: const Icon(Icons.arrow_circle_right),
                  onTap: () {
                    if (index == 0 || index == 1 || index == 2) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content:  Text("To ${routes[index]}"),
                        duration: const Duration(seconds: 2),
                        action:
                            SnackBarAction(label: 'Cerrar', onPressed: () {}),
                      ));
                    }  else if (index == 3) {
                      Navigator.pushNamed(context, 'alert');
                    } else if (index == 4){
                      Navigator.pushNamed(context, 'card');
                    }
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: routes.length));
  }
}
