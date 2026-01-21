import 'package:app/widgets/navigation_container.dart';
import 'package:flutter/material.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({
    Key? key,
    required this.selectedIndex,
    required this.onIndexChanged,
  }) : super(key: key);

  final int selectedIndex;
  final ValueChanged<int> onIndexChanged;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          NavigationContainer(
            title: 'Length',
            icon: Icons.sanitizer,
            isSelected: selectedIndex == 0,
            onTap: () => onIndexChanged(0),
          ),
          SizedBox(width: 8.0),
          NavigationContainer(
            title: 'Weight',
            icon: Icons.scale,
            isSelected: selectedIndex == 1,
            onTap: () => onIndexChanged(1),
          ),
          SizedBox(width: 8.0),
          NavigationContainer(
            title: 'Speed',
            icon: Icons.speed,
            isSelected: selectedIndex == 2,
            onTap: () => onIndexChanged(2),
          ),
          SizedBox(width: 8.0),
          NavigationContainer(
            title: 'Temp',
            icon: Icons.thermostat,
            isSelected: selectedIndex == 3,
            onTap: () => onIndexChanged(3),
          ),
          SizedBox(width: 8.0),
          NavigationContainer(
            title: 'Volume',
            icon: Icons.water_drop,
            isSelected: selectedIndex == 4,
            onTap: () => onIndexChanged(4),
          ),
        ],
      ),
    );
  }
}
