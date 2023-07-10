import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  final routes = const [
    "Home Screen",
    "Primera Lista",
    "Segunda Lista",
    "Alert Screen",
    "Card Screen",
    "Avatar Screen",
    "Animated Screen",
    "Inputs Screen"
  ];
  final icons = const [
    Icon(Icons.home_outlined),
    Icon(Icons.list),
    Icon(Icons.list_alt),
    Icon(Icons.add_alert),
    Icon(Icons.card_giftcard),
    Icon(Icons.supervised_user_circle_rounded),
    Icon(Icons.play_lesson),
    Icon(Icons.format_indent_decrease_outlined),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes de Flutter I'),
          elevation: 0,
          backgroundColor: Colors.amberAccent.shade700,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: icons[index],iconColor: Colors.amberAccent.shade700,
                  title: Text(routes[index]),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    if(index == 1){
                      Navigator.pushNamed(context, 'listview1');
                    }else if(index == 2){
                      Navigator.pushNamed(context, 'listview2');
                    } else if (index == 3) {
                      Navigator.pushNamed(context, 'alert');
                    } else if (index == 4){
                      Navigator.pushNamed(context, 'card');
                    }else if (index == 5){
                      Navigator.pushNamed(context, 'avatar');
                    }else if (index == 6){
                      Navigator.pushNamed(context, 'animated');
                    }else if (index == 7){
                      Navigator.pushNamed(context, 'inputs');
                    }
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: routes.length));
  }
}
