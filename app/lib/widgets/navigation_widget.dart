import 'package:app/widgets/navigation_container.dart';
import 'package:flutter/material.dart';

class NavigationWidget extends StatefulWidget {
  NavigationWidget({Key? key}) : super(key: key);

  @override
  _NavigationWidgetState createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  Color containerColor = Color(0xFF171A1F);
  Color pressedColor = const Color.fromARGB(255, 5, 63, 170);
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: NavigationContainer(title: 'Length', icon: Icons.sanitizer),
          ),
          SizedBox(width: 8.0),
          NavigationContainer(title: 'Weight', icon: Icons.scale),
          SizedBox(width: 8.0),
          NavigationContainer(title: 'Speed', icon: Icons.speed),
          SizedBox(width: 8.0),
          NavigationContainer(title: 'Temp', icon: Icons.thermostat),
          SizedBox(width: 8.0),
          NavigationContainer(title: 'Volume', icon: Icons.water_drop),
        ],
      ),
    );
  }
}
