import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class TabbedAppBar extends StatelessWidget {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: choices.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  setState() {
                    selectedIndex = index;
                  }
                },
              );
            }),
      ),
    );
  }
}

class Choice {
  final String title;
  final IconData icon;
  const Choice({required this.title, required this.icon});
}

const List<Choice> choices = <Choice>[
  Choice(title: 'CAR', icon: Icons.directions_car),
  Choice(title: 'BICYCLE', icon: Icons.directions_bike),
  Choice(title: 'BUS', icon: Icons.directions_bus),
  Choice(title: 'TRAIN', icon: Icons.directions_railway),
  Choice(title: 'WALK', icon: Icons.directions_walk),
  Choice(title: 'BOAT', icon: Icons.directions_boat),
];

class ChoicePage extends StatelessWidget {
  ChoicePage({required this.choice});
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    // final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              choice.icon,
              size: 150.0,
              color: Colors.black,
            ),
            Text(
              choice.title,
              style: TextStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
